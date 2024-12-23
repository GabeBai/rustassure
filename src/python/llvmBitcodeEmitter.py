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
import argparse
import os

from datetime import datetime

from loggerFactory import getLogger

def remove_no_mangle_before_main(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()

    updated_lines = []
    i = 0
    while i < len(lines):
        line = lines[i]
        if re.match(r'^\s*#\s*\[\s*no_mangle\s*\]\s*$', line):
            if i + 1 < len(lines) and re.match(r'^\s*fn\s+main\s*\(', lines[i + 1]):
                i += 1
                continue

        updated_lines.append(line)
        i += 1


    with open(filename, 'w') as file:
        file.writelines(updated_lines)

def remove_no_mangle_main(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()

    updated_lines = []
    pattern = re.compile(r'^\s*#\s*\[\s*no_mangle\s*\]\s*fn\s+main\s*\(.*\)\s*\{')

    skip_next = False 
    for line in lines:
        if pattern.match(line):
            skip_next = True
            continue

        if skip_next:
            if re.match(r'^\s*\{', line):  
                skip_next = False
            continue

        updated_lines.append(line)

    with open(filename, 'w') as file:
        file.writelines(updated_lines)

def emitLLVMBitcodes(individualFuncPath, logger):
    rustSrcPattern = os.path.join(individualFuncPath, "*.rs")
    cSrcPattern = os.path.join(individualFuncPath, "*.i")
    totalCFiles = 0
    successCFiles = 0
    totalRustFiles = 0
    successRustFiles = 0
    for filename in glob.iglob(rustSrcPattern, recursive=True):
        insert_line = "#![allow(unaligned_references)]\n"
        with open(filename, "r") as file:
            content = file.readlines()

        if not any(insert_line.strip() in line for line in content):
            content.insert(0, insert_line)

            with open(filename, "w") as file:
                file.writelines(content)

        # First, annotate the Rust function with "#[no_mangle]" to prevent it getting removed
        sed_cmd = (
            f"sed -i '' -e '/^[[:space:]]*fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*pub extern \"C\" fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*pub fn /i \\\n#[no_mangle]' {filename}"
        )
        subprocess.run(sed_cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        subprocess.run(sed_cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        sed_cmd = f"sed -i '' '/^struct /i \\\n#[repr(C, packed)]' {filename}"
        # sed_cmd = f"sed -i '' '/^struct /i \\\n#[repr(C, packed)]\\\n#[derive(Debug)]' {filename}"

        remove_no_mangle_main(filename)

        subprocess.run(sed_cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        # Compile it and generate the bitcode file
        logger.debug("Compiling Rust file %s ", filename)
        # Check if the file has a fn main() 
        # If not, try to compile as a library (or it complains that there's no main)
        # rustc doesn't seem to have a -c option
        isBinary = False
        # with open(filename) as f:
        #     for line in f:
        #         if "fn main(" in line:
        #             isBinary = True
        #             break
        # if isBinary:
        #     emitBitcodeCmd = "rustc -A dead_code --emit=llvm-bc -o " + filename + ".bc " + filename
        # else:
        emitBitcodeCmd = "rustc -A dead_code --emit=llvm-bc --crate-type=lib -o " + filename + ".bc " + filename
        logger.debug("Running command %s", emitBitcodeCmd)
        result = subprocess.run(emitBitcodeCmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        # Disassemble it (let's generate both to avoid any errors in bc -> ll conversion)

        disassemble_cmd = "llvm-dis " + filename + ".bc"
        subprocess.run(disassemble_cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

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

        disassemble_cmd = "llvm-dis " + filename + ".bc"
        subprocess.run(disassemble_cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

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
    parser = argparse.ArgumentParser(description="Emit LLVM Bitcodes with logging.")
    parser.add_argument("input_path", type=str, help="Path to the input directory or file.")

    args = parser.parse_args()
    input_path = args.input_path

    emitLLVMBitcodes(input_path, logger)
    # emitLLVMBitcodes("/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/testcase/rust1", logger)
