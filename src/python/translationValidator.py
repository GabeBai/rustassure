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

from datetime import datetime

from loggerFactory import getLogger
from gptTranslation import Gpt3Translator, Gpt4Translator, FineTunedGPT3Translator, TranslatorModes
from functionAndDepsExtractor import FunctionAndDepsExtractor
from typedefFilter import TypedefFilter
from progPropertyEvaluator import ProgPropertyEvaluator
from llvmBitcodeEmitter import emitLLVMBitcodes


CONTINUATION_PROMPT_LEN = 200 # try repeating 200 chars of past response to tell it to continue


def createTranslator(logger, useGpt4, fineTunedModel):
    # url = http://172.31.224.1:12345/v1 for LMStudio
    with open("system.prompt") as f:
        systemPrompt = f.read()
    logger.info("Using system prompt: %s", systemPrompt)

    if useGpt4:
        translator = Gpt4Translator(logger,
            os.environ.get('OPENAI_KEY'),
            "C",
            "Rust",
            systemPrompt)
    else:
        if len(fineTunedModel) > 0:
            translator = FineTunedGPT3Translator(logger,
                os.environ.get('OPENAI_KEY'),
                "C",
                "Rust",
                fineTunedModel,
                systemPrompt) 
        else: 
            translator = Gpt3Translator(logger,
                os.environ.get('OPENAI_KEY'),
                "C",
                "Rust",
                systemPrompt) 
    return translator

def getFunctions(logger, extractor, srcPath, singleFileName):
    fileFuncMap = {}
    allFiles = glob.iglob(os.path.join(srcPath, "**/*.i"), recursive=True)

    for filename in allFiles:
        # Don't look at files inside the individual-funcs directories
        # the first time we invoke getFunctions
        # 
        if "individual-funcs" not in srcPath and "individual-funcs" in filename:
            continue
        if len(singleFileName) > 0:
            if singleFileName not in filename and "individual-funcs" not in srcPath:
                continue
        logger.debug("Extracting function bodies for file: %s", filename)
        funcMap = extractor.extractFuncsAndDeps(filename)
        fileFuncMap.update(funcMap)

    # The second time we refresh the funcMap with the individual
    # files, we also extract additional meta-data.
    # For each struct type used in each function, extract _all_ uses of the same type
    # from other functions
    # TODO: Consider if refactoring the toolchain helps?
    if "individual-funcs" in srcPath:
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


def translateAndCreateRustFiles(translator, funcs, key, logger, individualFuncPath, translatorMode):
    # funcs is a dict of funcName: FunctionAndDependencies object
    try:
        translatedResult = translator.translate(key, funcs[key], translatorMode)
        logger.debug("Translating function: " + key)
        logger.debug(translatedResult)
        rs_path = os.path.join(individualFuncPath, f"{key}.rs")

        with open(rs_path, "w") as rs_file:
            rs_file.write(translatedResult)
        logger.info("Translation for function %s generated", key)
    except Exception as e:
        traceback_str = traceback.format_exc()
        logger.debug(f"Exception: {e}\nTraceback:\n{traceback_str}")
        logger.warn("Function %s failed to translate", key)

def processCodebase(codebasePath, useGpt4, fineTunedModel, preanalysisOnly, translatorMode, singleFileName, dirPrefix):
    currentDatetime = datetime.now()
    formattedDateTime = currentDatetime.strftime("%Y-%m-%d_%H-%M-%S")
    baseDir = os.path.basename(os.path.normpath(codebasePath))

    """
    if useGpt4:
        loggerFileName = "./" + "GPT_4_" + formattedDateTime + "_validator.log"
    elif len(fineTunedModel):
        loggerFileName = "./" + fineTunedModel + formattedDateTime + "_validator.log"
    else:
        loggerFileName = "./" + "GPT_3_5_" + formattedDateTime + "_validator.log"
    """
    loggerFileName = "./" + baseDir + "_validator.log"

    logger = getLogger(loggerFileName)
    extractor = FunctionAndDepsExtractor(logger)
    translator = createTranslator(logger, useGpt4, fineTunedModel)

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
    funcMap = getFunctions(logger, extractor, codebasePath, singleFileName)
    logger.debug("Extracted %d functions", len(funcMap))


    # Create the individual function files
    for i, key in enumerate(funcMap):
        createIndividualPreprocessedFiles(funcMap, key, logger, individualFuncPath)

    # Refresh from the individual function files
    funcMap = getFunctions(logger, extractor, individualFuncPath, singleFileName)

    translator.preanalyze(funcMap, individualFuncPath)
    if not preanalysisOnly:
        for i, key in enumerate(funcMap):
            translateAndCreateRustFiles(translator, funcMap, key, logger, individualFuncPath, translatorMode)

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


def getTranslatorMode(translatorModeStr):
    if translatorModeStr == "basic":
        return TranslatorModes.BASIC_CHUNK_CHAIN
    elif translatorModeStr == "repeat":
        return TranslatorModes.SPACED_REPITION
    elif translatorModeStr == "feedback":
        return TranslatorModes.COMPILATION_FEEDBACK
    else:
        printf("Invalid translator mode")
        sys.exit(-1)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Translate C code to Rust and then validate the translation, because why not?")
    parser.add_argument("--src", type=str, default="./inputs-complex/zlib-1.3.1/", help="The source directory that contains the preprocessed C files")
    parser.add_argument("--preanalysis-only", type=bool, default=False, help="Only run the preanalysis")
    parser.add_argument("--use-gpt4", type=bool, default=False, help="Use GPT4 instead of GPT3")

    parser.add_argument("--translator-mode", type=str, default="feedback", help="Controls how the input file and its dependencies are chunked to fit into the GPT model context window. See gptTranslation.py for more information.")
    parser.add_argument("--fine-tuned-model", type=str, default="", help="The source directory that contains the preprocessed C files")
    parser.add_argument("--single-file-name", type=str, default="", help="The name of the single file that should be analyzed")
    parser.add_argument("--dir-prefix", type=str, default="", help="Add a prefix to the individual-funcs directory name")

    args = parser.parse_args()
    processCodebase(args.src, args.use_gpt4, args.fine_tuned_model, args.preanalysis_only, getTranslatorMode(args.translator_mode), args.single_file_name, args.dir_prefix) # ./inputs-complex/zlib-1.3.1/"
