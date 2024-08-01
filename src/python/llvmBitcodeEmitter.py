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
            emitBitcodeCmd = "rustc -A dead_code --emit=llvm-bc -o " + filename + ".bc " + filename
        else:
            emitBitcodeCmd = "rustc -A dead_code --emit=llvm-bc --crate-type=lib -o " + filename + ".bc " + filename
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
        emitBitcodeCmd = "clang -c -femit-all-decls -emit-llvm -o " + filename + ".bc " + filename
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

if __name__ == "__main__":
    logger = getLogger("test_llvm_bitcode_emitter_logger.log")
    emitLLVMBitcodes("/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-3.5-turbo_2024-07-04_10-16-12", logger)
