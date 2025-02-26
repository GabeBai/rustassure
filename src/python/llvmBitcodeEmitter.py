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

def remove_specific_line(filename):
    try:
        with open(filename, 'r', encoding='utf-8') as file:
            lines = file.readlines()
        
        new_lines = [line for line in lines if line.strip() != '1];']
        
        with open(filename, 'w', encoding='utf-8') as file:
            file.writelines(new_lines)
    except Exception as e:
        print(f"{e}")

def special_handle(filename):
    base_name = os.path.basename(filename)

    functions_map = {
        "zrand.i": r"""void zrand_fd() {};
void zrand_libc_rand();
void zrand_libc_random();
void zrand_libc_rand48();
""",
        "process_files.i": r"""void app_printf(const char *fmt, ...);
void app_print_cntrl(int cntrl_code);
void app_progress(unsigned long current_step, unsigned long total_steps);
void panic(const char *msg);
""",
        "opng_rangeset2bitset.i": r"""char * opng_strltrim(const char *str);
""",
        "err_option_arg.i": r"""char * opng_strltrim(const char *str);
""",
        "opng_str2ulong.i": r"""char * opng_strltrim(const char *str);
""",
        "opng_write_file.i": r"""struct dummyStruct{
    int field_0;
};
void opng_error(struct dummyStruct * png_ptr, const char * msg);
void opng_warning(struct dummyStruct * png_ptr, const char * msg);
void opng_write_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
void opng_read_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
""",
        "opng_copy_file.i": r"""struct dummyStruct{
    int field_0;
};
void opng_error(struct dummyStruct * png_ptr, const char * msg);
void opng_warning(struct dummyStruct * png_ptr, const char * msg);
void opng_write_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
void opng_read_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
""",
        "opng_read_file.i": r"""struct dummyStruct{
    int field_0;
};
void opng_error(struct dummyStruct * png_ptr, const char * msg);
void opng_warning(struct dummyStruct * png_ptr, const char * msg);
void opng_write_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
void opng_read_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
""",
        "parse_args.i": r"""char * opng_strpbrk_digit(const char *str);
"""
    }

    if base_name in functions_map:
        functions_code = functions_map[base_name]

        with open(filename, 'r', encoding='utf-8') as f:
            original_content = f.readlines()

        if not original_content or not original_content[0].strip().startswith(functions_code.split("\n")[0].strip()):
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(functions_code + "\n" + "".join(original_content))

def remove_static_and_inline_from_file(filename):

    with open(filename, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()

    pattern = re.compile(r'\b(static|inline)\b')
    new_content = pattern.sub('', content)

    with open(filename, 'w', encoding='utf-8', errors='ignore') as f:
        f.write(new_content)

def remove_main_function(filepath: str) -> None:

    with open(filepath, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    output_lines = []

    in_main_function = False
    brace_count = 0

    pattern_main = re.compile(r'\bfn\s+main\s*\(')

    i = 0
    while i < len(lines):
        line = lines[i]

        if not in_main_function:
            if pattern_main.search(line):

                brace_pos = line.find('{')
                if brace_pos == -1:
                    in_main_function = True
                    brace_count = 0
                else:
                    in_main_function = True
                    brace_count = 1
            else:
                output_lines.append(line)
        else:
            for ch in line:
                if ch == '{':
                    brace_count += 1
                elif ch == '}':
                    brace_count -= 1
            if brace_count <= 0:
                in_main_function = False
                brace_count = 0
        i += 1

    # 把处理过的内容写回文件
    with open(filepath, 'w', encoding='utf-8') as f:
        f.writelines(output_lines)

    print(f"已从 {os.path.basename(filepath)} 中移除 main() 函数。")

def remove_no_mangle_lines(filepath: str) -> None:

    with open(filepath, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    filtered_lines = []
    for line in lines:
        if line.strip() == '#[no_mangle]':
            continue
        filtered_lines.append(line)

    with open(filepath, 'w', encoding='utf-8') as f:
        f.writelines(filtered_lines)

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
            f"sed -i '' "
            f"-e '/^[[:space:]]*unsafe fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*pub extern \"C\" fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*extern \"C\" fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*pub fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*pub unsafe fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*pub unsafe extern \"C\" fn /i \\\n#[no_mangle]' "
            f"{filename}"
        )
        subprocess.run(sed_cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        subprocess.run(sed_cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        sed_cmd = f"sed -i '' '/^struct /i \\\n#[repr(C, packed)]' {filename}"
        sed_cmd_pub = f"sed -i '' '/^pub struct /i \\\n#[repr(C, packed)]' {filename}"
        subprocess.run(sed_cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        subprocess.run(sed_cmd_pub, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

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

        remove_static_and_inline_from_file(filename)
        remove_specific_line(filename)
        special_handle(filename)
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
