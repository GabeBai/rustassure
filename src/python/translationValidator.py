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

from gptTranslation import Translator
from gptTranslation import TranslatorModes

from functionAndDepsExtractor import FunctionAndDepsExtractor

GPT_MODEL="gpt-3.5-turbo"
CTX_WINDOW_LEN=16*1024
MAX_COMPLETION_TOKENS=4096 # This is the max value you can put for max_tokens: the max size of a response, https://platform.openai.com/docs/models/gpt-4-turbo-and-gpt-4 and search for output tokens

CONTINUATION_PROMPT_LEN = 200 # try repeating 200 chars of past response to tell it to continue

def getLogger(logPath):
    if os.path.exists(logPath):
        os.remove(logPath)
    # Create a logger
    logger = logging.getLogger('translationvalidator_logger')
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

def createTranslator(logger):
    translator = Translator(logger,
            "http://172.31.224.1:12345/v1",
            os.environ.get('OPENAI_KEY'),
            CTX_WINDOW_LEN,
            MAX_COMPLETION_TOKENS, 
            "C",
            "Rust",
            GPT_MODEL,
            "You are an expert programmer in C and Rust and are an expert in translating C to Rust code.")
    return translator

def getFunctions(logger, extractor, srcPath):
    fileFuncMap = {}
    logger.info("srcPath = %s", srcPath)
    for filename in glob.iglob(os.path.join(srcPath, "**/*.i"), recursive=True):
        if "deflate.i" not in filename:
            continue
        logger.debug("Extracting function bodies for file: %s", filename)
        funcMap = extractor.extractFuncsAndDeps(filename)
        fileFuncMap.update(funcMap)
    return fileFuncMap

def createIndividualPreprocessedFiles(funcs, key, logger, individualFuncPath):
    c_path = os.path.join(individualFuncPath, f"{key}.i")
    with open(c_path, "w") as c_file:
        c_file.write(funcs[key].typeDeclDefCodeLines + "\n" + funcs[key].funcCodeLines)

def translateAndCreateIndividualFiles(translator, funcs, key, logger, individualFuncPath, translatorMode):
    # funcs is a dict of funcName: FunctionAndDependencies object
    try:
        translatedResult = translator.translate(key, funcs[key], translatorMode)
        # logger.info(translatedResult)
        rs_path = os.path.join(individualFuncPath, f"{key}.rs")
        c_path = os.path.join(individualFuncPath, f"{key}.i")

        with open(rs_path, "w") as rs_file:
            rs_file.write(translatedResult)
        with open(c_path, "w") as c_file:
            c_file.write(funcs[key].typeDeclDefCodeLines + "\n" + funcs[key].funcCodeLines)
        logger.info("Function %s successfully translated", key)
    except Exception as e:
        traceback_str = traceback.format_exc()
        logger.debug(f"Exception: {e}\nTraceback:\n{traceback_str}")
        logger.warn("Function %s failed to translate", key)

def emitLLVMBitcodes(rootPath, logger):
    """
    rootPath is where the individual functions are at
    """ 
    rustSrcPattern = os.path.join(rootPath, "individual-funcs", "*.rs")
    cSrcPattern = os.path.join(rootPath, "individual-funcs", "*.i")
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
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            logger.info ("Compilation succeeded for %s", filename)
    for filename in glob.iglob(cSrcPattern, recursive=True):
        logger.debug("Compiling C file %s ", filename)
        emitBitcodeCmd = "clang -c -emit-llvm -o " + filename + ".bc " + filename
        logger.debug("Running command %s", emitBitcodeCmd)

        result = subprocess.run(emitBitcodeCmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            logger.info ("Compilation succeeded for %s", filename)

def processCodebase(codebasePath, preanalysisOnly, translatorMode):
    logger = getLogger("./validator.log")
    extractor = FunctionAndDepsExtractor(logger)
    translator = createTranslator(logger)

    # If the directory already exists, then just skip it
    if not os.path.isdir(os.path.join(codebasePath, "individual-funcs")):
        translator = createTranslator(logger) 
        funcMap = getFunctions(logger, extractor, codebasePath)
        logger.debug("Extracted %d functions", len(funcMap))
        individualFuncPath = codebasePath+"/individual-funcs/"
        os.mkdir(individualFuncPath)
        if not preanalysisOnly:
            for i, key in enumerate(funcMap):
                translateAndCreateIndividualFiles(translator, funcMap, key, logger, individualFuncPath, translatorMode)
        else:
            for i, key in enumerate(funcMap):
                createIndividualPreprocessedFiles(funcMap, key, logger, individualFuncPath)
            translator.preanalyze(funcMap, codebasePath)
    else:
        logger.warn("Individual functions directory already exists, skipping regeneration")
    if not preanalysisOnly:
        emitLLVMBitcodes(codebasePath, logger)

def getTranslatorMode(translatorModeStr):
    if translatorModeStr == "basic":
        return TranslatorModes.BASIC_CHUNK_CHAIN
    elif translatorModeStr == "repeat":
        return TranslatorModes.REPEAT_DECLDEFS
    else:
        printf("Invalid translator mode")
        sys.exit(-1)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Translate C code to Rust and then validate the translation, because why not?")
    parser.add_argument("--src", type=str, default="./inputs-complex/zlib-1.3.1/", help="The source directory that contains the preprocessed C files")
    parser.add_argument("--preanalysis-only", type=bool, default=False, help="Only run the preanalysis")
    parser.add_argument("--translator-mode", type=str, default="basic", help="Controls how the input file and its dependencies are chunked to fit into the GPT model context window. See gptTranslation.py for more information.")
    args = parser.parse_args()
    processCodebase(args.src, args.preanalysis_only, getTranslatorMode(args.translator_mode)) # ./inputs-complex/zlib-1.3.1/"
