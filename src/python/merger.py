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

class Result:
    def __init__(self, line_one, line_two, file_name):
        self.line_one = line_one
        self.line_two = line_two
        self.file_name = file_name

class Merger:
    def __init__(self, logger, source_code_path, include_dirs):
        self.logger = logger
        self.root = os.path.expanduser(source_code_path)
        self.include_dirs = []
        for include_dir in include_dirs.split(","):
            self.include_dirs.append(os.path.join(self.root, include_dir))
        self.combined_c_code = ""
        
    def run_filter(self, filter_cmd, c_file):
        cmd = "clang-query " + c_file + " -c " + "'" + filter_cmd + "'"
        cmd = cmd + " -- "
        for include_dir in self.include_dirs:
            cmd = cmd + " -I"+include_dir
        
        self.logger.debug("Rename command = %s", cmd)
        result = subprocess.run(cmd, shell = True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        if result.returncode != 0:
            self.logger.warn("Failed to extract struct definitions and static variables from file %s", c_file)
            self.logger.info(result.stderr)
            sys.exit(0)

        
        stdout_lines = result.stdout.split("\n")
        results = []
        for i in range(len(stdout_lines)):
            output_line = stdout_lines[i]
            if "binds here" in output_line:
                output_line_tokens = output_line.split(":")
                file_name = output_line_tokens[0]
                if file_name.endswith(".c"):
                    result = Result(stdout_lines[i], stdout_lines[i+1], file_name)
                    self.logger.debug("%s \n %s", result.line_one, result.line_two)
                    results.append(result)
        return results


    def valid_c_symbol(self, sym):
        sym = sym.strip()
        c_keywords_and_others = [
                'auto', 'break', 'case', 'char', 'const', 'continue', 'default', 'do',
                'double', 'else', 'enum', 'extern', 'float', 'for', 'goto', 'if', 'inline',
                'int', 'long', 'register', 'restrict', 'return', 'short', 'signed',
                'sizeof', 'static', 'struct', 'switch', 'typedef', 'union', 'unsigned',
                'void', 'volatile', 'while', '_Alignas', '_Alignof', '_Atomic', '_Bool',
                '_Complex', '_Decimal128', '_Decimal32', '_Decimal64', '_Generic', '_Imaginary',
                '_Noreturn', '_Static_assert', '_Thread_local',
                'size_t'
                ]
        c_limiters = [ '{', '}', '(', ')', '[', ']' ]
        is_valid = len(sym) > 0 and sym not in c_keywords_and_others and sym not in c_limiters
        for c_limiter in c_limiters:
            if sym.startswith(c_limiter):
                sym = sym[1:]
            if sym.endswith(c_limiter):
                sym = sym[:-1]
        
        # Handle the closing bracket of an array
        ind = sym.find('[')
        if ind > -1:
            sym = sym[:ind]

        # De-pointerify
        star_ind = sym.rfind('*')
        if star_ind > -1:
            sym = sym[star_ind:]
        return (is_valid, sym)


    def find_symbol(self, line):
        for token in line.split():
            (is_valid, token) = self.valid_c_symbol(token)
            if is_valid:
                return token
        return None


    def merge(self):
        all_c_files = glob.iglob(os.path.join(self.root, "**/*.c"), recursive=True)

        struct_name_map = {} # The map for 
        for c_file in all_c_files:
            results = self.run_filter("match recordDecl(isStruct())", c_file)
            # Format of result object
            # First line:
            # <filename>:line:col: note: <bind-node> binds here
            # Second line:
            # <program statement>
            for result in results:
                # struct <struct_name>
                struct_name = self.find_symbol(result.line_two)
                if struct_name is not None:
                   self.logger.info("%s in file %s, has a struct defintion.", struct_name, result.file_name)

            """
            # TODO: For now, we pray that the typedef definitions in C source code don't collide!
            results = self.run_filter('typedefDecl(hasType(asString("struct")))', c_file)
            for result in results:
                self.logger.info("Typedef %s", result.line_two)
            """

            results = self.run_filter("match functionDecl(isStaticStorageClass())", c_file)
            for result in results:
                # function signature
                function_name = self.find_symbol(result.line_two)
                if function_name is not None:
                    self.logger.info("%s in file %s, is a static function.", function_name, result.file_name)

            results = self.run_filter("match varDecl(isStaticStorageClass())", c_file)
            for result in results:
                # static variable
                variable_name = self.find_symbol(result.line_two)
                if variable_name is not None:
                    self.logger.info("%s in file %s, is a static variable.", variable_name, result.file_name)
