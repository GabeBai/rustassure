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
from gptTranslation import Gpt3Translator, Gpt4Translator, FineTunedGPT3Translator, TranslatorModes, Translator, Claude_3_5_Translator
from functionAndDepsExtractor import FunctionAndDepsExtractor
from typedefFilter import TypedefFilter
from progPropertyEvaluator import ProgPropertyEvaluator
from llvmBitcodeEmitter import emitLLVMBitcodes


CONTINUATION_PROMPT_LEN = 200 # try repeating 200 chars of past response to tell it to continue
MAX_THREADS=40

class FunctionRepresentation:
    def __init__(self, logger, function_name, rust_bc_file, c_bc_file):
        self.logger = logger
        self.function_name = function_name
        self.rust_bitcode_file = rust_bc_file
        self.c_bitcode_file = c_bc_file

class SymbolicExecutor:
    def __init__(self, path_dir, logger):
        self.path_dir = path_dir
        self.logger = logger
        self.function_representation_map = {} # Map of function_name to FunctionRepresentation object
        
    def get_base_name(self, filename):
        base_name = filename
        while True:
            base_name, ext = os.path.splitext(base_name)
            if not ext:
                break
        return base_name

    def run_klee(self, file_name):
        symbolizer_cmd = "opt -load-pass-plugin ../Symbolizer/build/Pass/libSymbolizerPass.so " + file_name + " -O0 -S -o " + file_name+".ll"

        self.logger.info("Going to symbolize: %s", file_name)
        self.logger.info("Cmd: %s", symbolizer_cmd)
        result = subprocess.run(symbolizer_cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        if result.returncode != 0:
            self.logger.warn(result.stdout)
            self.logger.warn(result.stderr)
            self.logger.warn("Can't symbolize. Skipping")

        klee_cmd = "klee --libc=klee --use-query-log=all:smt2 --only-output-states-covering-new --debug-print-instructions=all:stderr --max-instructions=600 " + file_name+".ll"
        self.logger.info("Going to run symbolic execution on %s", file_name + ".ll")
        result = subprocess.run(klee_cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        self.logger.info("Stdout:\n %s", result.stdout.decode('utf-8'))
        self.logger.info("Stderr:\n %s", result.stderr.decode('utf-8'))
        
        # Write the stdout to a file in klee-last
        with open(root + "/klee-last/stdout", "w") as f:
            f.write(result.stdout.decode('utf-8'))

        # Rename klee-last to file_name_dir
        new_dir_name = file_name+"_dir"
        os.rename(root + "klee-last", new_dir_name)

    def symbolize_and_execute(self): 
        # Find the c functions which have equivalent Rust code
        all_rust_bitcodes = glob.iglob(os.path.join(self.path_dir, "**/*.rs.bc"), recursive=True)
        all_c_bitcodes = glob.iglob(os.path.join(self.path_dir, "**/*.i.bc"), recursive=True)
        rust_map = {}
        c_map = {}
        for rust_bc_file in all_rust_bitcodes:
            function_name = self.get_base_name(os.path.basename(rust_bc_file))
            rust_map[function_name] = rust_bc_file

        for c_bc_file in all_c_bitcodes:
            function_name = self.get_base_name(os.path.basename(c_bc_file))
            c_map[function_name] = c_bc_file

        for function_name in rust_map:
            if function_name in c_map:
                representation = FunctionRepresentation(self.logger, function_name, rust_map[function_name], c_map[function_name])
                self.function_representation_map[function_name] = representation
        
        # Now for each function we symbolize and generate its Z3 constraints
        for function in self.function_representation_map:
            rs_file_name = self.function_representation_map[function_name].rust_bitcode_file
            c_file_name = self.function_representation_map[function_name].c_bitcode_file

            # Now we apply the symbolizer pass on them, and then run KLEE on them
            # Then we rename the directory to the file_name_KLEE
            self.logger.info("Comparing %s and %s", rs_file_name, c_file_name)

            self.run_klee(rs_file_name)
            self.run_klee(c_file_name)
        os.chdir(curr_dir)

if __name__ == "__main__":
    root = "/home/tpalit/rustify/src/python/inputs-complex/mbedtls/library/individual-funcs_gpt-4o_2024-09-25_11-18-42__complete"
    baseDir = os.path.basename(root)
    loggerFileName = "./" + baseDir + "_validator.log"
    logger = getLogger(loggerFileName)

    sym_executor = SymbolicExecutor(root, logger)
    sym_executor.symbolize_and_execute()
