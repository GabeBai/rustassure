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
from gptTranslation import Gpt3Translator, Gpt4Translator, FineTunedGPT3Translator, TranslatorModes

from functionAndDepsExtractor import FunctionAndDepsExtractor

from typedefFilter import TypedefFilter


CONTINUATION_PROMPT_LEN = 200 # try repeating 200 chars of past response to tell it to continue

def getLogger(logPath):
    if os.path.exists(logPath):
        os.remove(logPath)
    # Create a logger
    logger = logging.getLogger('translator_logger')
    logger.setLevel(logging.DEBUG)
    
    # Create file handler which logs even debug messages
    fh = logging.FileHandler(logPath)
    fh.setLevel(logging.DEBUG)
    
    # Create console handler with a higher log level
    ch = logging.StreamHandler()
    ch.setLevel(logging.INFO)

    # Create formatter and add it to the handlers
    formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
    fh.setFormatter(formatter)
    ch.setFormatter(formatter)

    # Add the handlers to the logger
    logger.addHandler(fh)
    logger.addHandler(ch)

    return logger

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

def emitLLVMBitcodes(individualFuncPath, logger):
    rustSrcPattern = os.path.join(individualFuncPath, "*.rs")
    cSrcPattern = os.path.join(individualFuncPath, "*.i")
    totalCFiles = 0
    successCFiles = 0
    totalRustFiles = 0
    successRustFiles = 0
    for filename in glob.iglob(rustSrcPattern, recursive=True):
        # Compile it and generate the bitcode file
        logger.debug("Compiling Rust file %s ", filename)
        # Check if the file has a fn main() 
        # If not, try to compile as a library (or it complains that there's no main)
        # rustc doesn't seem to have a -c option
        isBinary = False
        with open(filename) as f:
            for line in f:
                if "fn main(" in line:
                    isBinary = True
                    break
        if isBinary:
            emitBitcodeCmd = "rustc --emit=llvm-bc -o " + filename + ".bc " + filename
        else:
            emitBitcodeCmd = "rustc --emit=llvm-bc --crate-type=lib -o " + filename + ".bc " + filename
        logger.debug("Running command %s", emitBitcodeCmd)
        result = subprocess.run(emitBitcodeCmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        totalRustFiles = totalRustFiles + 1
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            successRustFiles = successRustFiles + 1
            logger.info ("Compilation succeeded for %s", filename)
    for filename in glob.iglob(cSrcPattern, recursive=True):
        logger.debug("Compiling C file %s ", filename)
        emitBitcodeCmd = "clang -c -emit-llvm -o " + filename + ".bc " + filename
        logger.debug("Running command %s", emitBitcodeCmd)

        result = subprocess.run(emitBitcodeCmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        totalCFiles = totalCFiles + 1
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            successCFiles = successCFiles + 1
            logger.info ("Compilation succeeded for %s", filename)

    logger.info("Out of %d total Rust files %d compiled", totalRustFiles, successRustFiles)
    logger.info("Out of %d total C files %d compiled", totalCFiles, successCFiles)

def processCodebase(codebasePath, useGpt4, fineTunedModel, preanalysisOnly, translatorMode, singleFileName):
    currentDatetime = datetime.now()
    formattedDateTime = currentDatetime.strftime("%Y-%m-%d_%H-%M-%S")

    if useGpt4:
        loggerFileName = "./" + "GPT_4_" + formattedDateTime + "_validator.log"
    elif len(fineTunedModel):
        loggerFileName = "./" + fineTunedModel + formattedDateTime + "_validator.log"
    else:
        loggerFileName = "./" + "GPT_3_5_" + formattedDateTime + "_validator.log"

    logger = getLogger(loggerFileName)
    extractor = FunctionAndDepsExtractor(logger)
    translator = createTranslator(logger, useGpt4, fineTunedModel)

    individualFuncPath = codebasePath+"/individual-funcs_" + translator.model + "_" + formattedDateTime
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

    translator.preanalyze(funcMap, codebasePath)
    if not preanalysisOnly:
        for i, key in enumerate(funcMap):
            translateAndCreateRustFiles(translator, funcMap, key, logger, individualFuncPath, translatorMode)
    emitLLVMBitcodes(individualFuncPath, logger)

    # Let's copy over the log file too to the individualFuncPath
    for handler in logger.handlers:
        if isinstance(handler, logging.FileHandler):
            shutil.copy(handler.baseFilename, individualFuncPath)


def getTranslatorMode(translatorModeStr):
    if translatorModeStr == "basic":
        return TranslatorModes.BASIC_CHUNK_CHAIN
    elif translatorModeStr == "repeat":
        return TranslatorModes.SPACED_REPITION
    else:
        printf("Invalid translator mode")
        sys.exit(-1)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Translate C code to Rust and then validate the translation, because why not?")
    parser.add_argument("--src", type=str, default="./inputs-complex/zlib-1.3.1/", help="The source directory that contains the preprocessed C files")
    parser.add_argument("--preanalysis-only", type=bool, default=False, help="Only run the preanalysis")
    parser.add_argument("--use-gpt4", type=bool, default=False, help="Use GPT4 instead of GPT3")

    parser.add_argument("--translator-mode", type=str, default="basic", help="Controls how the input file and its dependencies are chunked to fit into the GPT model context window. See gptTranslation.py for more information.")
    parser.add_argument("--fine-tuned-model", type=str, default="", help="The source directory that contains the preprocessed C files")
    parser.add_argument("--single-file-name", type=str, default="", help="The name of the single file that should be analyzed")


    args = parser.parse_args()
    processCodebase(args.src, args.use_gpt4, args.fine_tuned_model, args.preanalysis_only, getTranslatorMode(args.translator_mode), args.single_file_name) # ./inputs-complex/zlib-1.3.1/"
