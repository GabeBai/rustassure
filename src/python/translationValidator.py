import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess
import traceback
import tiktoken
import argparse
import shutil
import threading
import time

from datetime import datetime

from loggerFactory import getLogger
from gptTranslation import Gpt3Translator, Gpt4Translator, FineTunedGPT3Translator, TranslatorModes, Translator
from functionAndDepsExtractor import FunctionAndDepsExtractor
from typedefFilter import TypedefFilter
from progPropertyEvaluator import ProgPropertyEvaluator
from llvmBitcodeEmitter import emitLLVMBitcodes


CONTINUATION_PROMPT_LEN = 200 # try repeating 200 chars of past response to tell it to continue
MAX_THREADS=40


def createTranslator(logger, useGpt4, translatorMode, fineTunedModel):
    # url = http://172.31.224.1:12345/v1 for LMStudio
    with open("system.prompt") as f:
        systemPrompt = f.read()
    logger.info("Using system prompt: %s", systemPrompt)

    if useGpt4:
        translator = Gpt4Translator(logger,
            os.environ.get('OPENAI_KEY'),
            "C",
            "Rust",
            systemPrompt, translatorMode)
    else:
        if len(fineTunedModel) > 0:
            translator = FineTunedGPT3Translator(logger,
                os.environ.get('OPENAI_KEY'),
                "C",
                "Rust",
                fineTunedModel,
                systemPrompt, translatorMode) 
        else: 
            translator = Gpt3Translator(logger,
                os.environ.get('OPENAI_KEY'),
                "C",
                "Rust",
                systemPrompt, translatorMode) 
    return translator

def getFunctions(logger, extractor, srcPath, singleFileName, fileList, functionOrderList = []): # The second time getFunctions is called fileList is empty
    fileFuncMap = {}
    allFiles = glob.iglob(os.path.join(srcPath, "**/*.i"), recursive=True)

    for filename in allFiles:
        # Don't look at files inside the individual-funcs directories
        # the first time we invoke getFunctions
        # 
        if "individual-funcs" not in srcPath and "individual-funcs" in filename:
            continue
        if len(fileList) > 0 and os.path.splitext(os.path.basename(filename))[0] not in fileList:
            continue
        if len(singleFileName) > 0:
            if singleFileName not in filename and "individual-funcs" not in srcPath:
                continue
        logger.debug("Extracting function bodies for file: %s", filename)
        funcMap = extractor.extractFuncsAndDeps(filename, functionOrderList)
        fileFuncMap.update(funcMap)

    # The second time we refresh the funcMap with the individual
    # files, we also extract additional meta-data.
    # For each struct type used in each function, extract _all_ uses of the same type
    # from other functions
    # TODO: Consider if refactoring the toolchain helps?
    if "individual-funcs" in srcPath:
        # pass
        logger.info("Going to extract type usage")
        extractor.extractGlobalTypeUsageDetails(srcPath, fileFuncMap)

    return fileFuncMap

def createIndividualPreprocessedFiles(funcs, key, logger, individualFuncPath):
    c_path = os.path.join(individualFuncPath, f"{key}.i")
    # This is ugly
    # But we write once, then filter
    # then write again
    # This is because the clang tool needs a 
    # file and we need to reduce the typedefs
    # per function and not per (full) C source file
    with open(c_path, "w") as c_file:
        c_file.write(funcs[key].typeDeclDefCodeLines + "\n" + funcs[key].funcCodeLines)

    # Filter
    typedefFilter = TypedefFilter(logger)
    typedefFilter.filterUnusedTypedefs(c_path)


def processCodebase(codebasePath, useGpt4, fineTunedModel, preanalysisOnly, translatorMode, singleFileName, dirPrefix, fileListFile, multiThreading):
    fileList = []
    if fileListFile is not None and len(fileListFile) > 0:
        with open(fileListFile) as f:
            for line in f.readlines():
                fileList.append(os.path.splitext(line.strip())[0])

    currentDatetime = datetime.now()
    formattedDateTime = currentDatetime.strftime("%Y-%m-%d_%H-%M-%S")
    
    extractor = FunctionAndDepsExtractor(logger)
    translator = createTranslator(logger, useGpt4, translatorMode, fineTunedModel)

    fingerPrintModel(logger, codebasePath, translator)

    if len (dirPrefix) > 0:
        individualFuncPath = codebasePath + "/individual-funcs_" + dirPrefix + "_" + translator.model + "_" + formattedDateTime
    else:
        individualFuncPath = codebasePath + "/individual-funcs_" + translator.model + "_" + formattedDateTime

    if preanalysisOnly:
        individualFuncPath = individualFuncPath + "__preanalysis_only"
    # If the directory already exists, then wait for confirmation
    if os.path.isdir(individualFuncPath):
        logger.critical("Output directory already exists. Will delete to continue")
        input("Press any key to continue, or Ctrl+C to exit...")
        shutil.rmtree(individualFuncPath)
    os.mkdir(individualFuncPath)
    functionOrderList = []
    funcMap = getFunctions(logger, extractor, codebasePath, singleFileName, fileList, functionOrderList)
    # Just save it in the directory
    with open(os.path.join(individualFuncPath, "file_order.txt"), 'w') as f:
        for func in functionOrderList:
            f.write(func + "\n")
    logger.debug("Extracted %d functions", len(funcMap))


    threads = []
    for (i, key) in enumerate(funcMap):
        # We try to avoid tests here
        if "_test" in key or "test_" in key:
            continue
        t = threading.Thread(target=createIndividualPreprocessedFiles, args=(funcMap, key, logger, individualFuncPath))
        threads.append(t)
        if len(threads) > MAX_THREADS:
            for thread in threads:
                thread.start()
            for thread in threads:
                thread.join()
            threads = []
    for thread in threads:
        thread.start()
    for thread in threads:
        thread.join()
        threads = []
    """
    else:
        # Create the individual function files
        for i, key in enumerate(funcMap):
            # We try to avoid tests here
            if "_test" in key or "test_" in key:
                continue
            createIndividualPreprocessedFiles(funcMap, key, logger, individualFuncPath)
    """

    # Refresh from the individual function files
    funcMap = getFunctions(logger, extractor, individualFuncPath, singleFileName, []) # No filtering using file-list this time because we have already filtered

    translator.preanalyze(funcMap, individualFuncPath)
    if not preanalysisOnly:
        translator.translateAll(funcMap, individualFuncPath, multiThreading)

    emitLLVMBitcodes(individualFuncPath, logger)

    # Invoke the Program Property Evaluator (commented for now)
    # PPE = ProgPropertyEvaluator(logger, individualFuncPath)
    # PPE.compareAll()

    # Let's copy over the log file too to the individualFuncPath
    for handler in logger.handlers:
        if isinstance(handler, logging.FileHandler):
            shutil.copy(handler.baseFilename, individualFuncPath)

    # Mark the directory as complete
    shutil.move(individualFuncPath, individualFuncPath+"__complete")



def fingerPrintModel(logger, srcDir, translator):
    # We check both the full model name and the fingerprint
    fingerPrintFileName = os.path.join(srcDir, "finger.print__" + translator.model + ".txt")
    oldFingerPrint = ""
    oldModelName = ""
    if os.path.exists(fingerPrintFileName):
        with open(fingerPrintFileName) as f:
            oldModelName = f.readline().strip()
            oldFingerPrint = f.readline().strip()
    else:
        logger.info("No previous fingerprint found...")

    (newModelName, newFingerPrint) = translator.getFingerPrint()
    newModelName = str(newModelName)
    newFingerPrint = str(newFingerPrint)
    logger.info("Fingerprinting details: model name: %s, finger print: %s", newModelName, newFingerPrint)
    if len(oldFingerPrint) == 0:
        with open(fingerPrintFileName, 'w') as f:
            f.write(newModelName+"\n")
            f.write(newFingerPrint+"\n")
    else:
        # Compare!!
        if oldFingerPrint == newFingerPrint and oldModelName == newModelName:
            logger.info("Finger print check succeeded...")
        else:
            if oldModelName != newModelName:
                logger.warning("The model aliases have diverged. You should try to run with the older model's full name, if it's still available.")
                input("Enter any key to continue...")
            logger.info("Finger print check mismatched (%s, %s) and (%s, %s). The results can potentially be very different from the previous run. Or it could just be that a different hardware was used to run the request!", oldModelName, oldFingerPrint, newModelName, newFingerPrint)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Translate C code to Rust and then validate the translation, because why not?")
    parser.add_argument("--src", type=str, default="./inputs-complex/zlib-1.3.1/", help="The source directory that contains the preprocessed C files")
    parser.add_argument("--preanalysis-only", type=bool, default=False, help="Only run the preanalysis")
    parser.add_argument("--use-gpt4", type=bool, default=True, help="Use GPT4 instead of GPT3")

    parser.add_argument("--translator-mode", type=str, default="random-merged-order", help="Controls how the input file and its dependencies are chunked to fit into the GPT model context window. See gptTranslation.py for more information.")
    parser.add_argument("--fine-tuned-model", type=str, default="", help="The source directory that contains the preprocessed C files")
    parser.add_argument("--single-file-name", type=str, default="", help="The name of the single file that should be analyzed")
    parser.add_argument("--dir-prefix", type=str, default="", help="Add a prefix to the individual-funcs directory name")
    parser.add_argument("--file-list-file", type=str, default="", help="File containing list of files to consider in the source directory")
    parser.add_argument("--multithreading", type=bool, default=True, help="Multithreading with 10 threads when sending OpenAI requests")

    args = parser.parse_args()
    args.src = os.path.expanduser(args.src)

    baseDir = os.path.basename(os.path.normpath(args.src))
    loggerFileName = "./" + baseDir + "_validator.log"
    logger = getLogger(loggerFileName)

    logger.info("Command line options: %s", args)

    processCodebase(args.src, args.use_gpt4, args.fine_tuned_model, args.preanalysis_only, Translator.getTranslatorMode(args.translator_mode), args.single_file_name, args.dir_prefix, args.file_list_file, args.multithreading) # ./inputs-complex/zlib-1.3.1/"
