#!/usr/bin/env python3
import os
import shutil
import subprocess
import glob
import time
import json
from llvmBitcodeEmitter import*
import logging

from concurrent.futures import ThreadPoolExecutor, as_completed

MAX_JOBS = 4
START_TIME = time.time()

logger = logging.getLogger("my_logger")
logger.setLevel(logging.DEBUG)

error_handler = logging.FileHandler("symbol_execution_error.log")
error_handler.setLevel(logging.ERROR)

info_handler = logging.FileHandler("app.log")
info_handler.setLevel(logging.INFO)

formatter = logging.Formatter("%(asctime)s - %(levelname)s - %(message)s")
error_handler.setFormatter(formatter)
info_handler.setFormatter(formatter)

logger.addHandler(error_handler)
logger.addHandler(info_handler)


def run_command_and_log(cmd, log_file, cwd=None):
    """
    Run a shell command and write both stdout and stderr to a log file.
    """
    print(f"[INFO] Running command: {cmd}")

    with open(log_file, "w") as log:
        process = subprocess.run(cmd, shell=True, cwd=cwd, stdout=log, stderr=log, text=True)

    if process.returncode != 0:
        msg = (
            f"Command failed: {cmd}\n"
        )
        print(f"[ERROR] command fail: {cmd}")
        logger.info(f"[ERROR] command fail: {cmd}")
        raise subprocess.CalledProcessError(process.returncode, cmd, output=msg)
    print(f"[INFO] command success: {cmd}")

def run_command(cmd, cwd=None):

    print(f"[INFO] Running command: {cmd}")
    safe_cmd = re.sub(r"[^\w.-]", "_", cmd)
    log_file = f"all_logs/{safe_cmd}.log"

    with open(log_file, "w") as log:
        process = subprocess.run(cmd, shell=True, cwd=cwd, stdout=log, stderr=log, text=True)

    if process.returncode != 0:
        msg = (
            f"Command failed: {cmd}\n"
        )
        print(f"[ERROR] command fail: {cmd}")
        logger.info(f"[ERROR] command fail: {cmd}")
        raise subprocess.CalledProcessError(process.returncode, cmd, output=msg)
    print(f"[INFO] command success: {cmd}")

def create_json():
    """
    Creates input.json with the same contents as the Bash-scripted jq command.
    """
    data = {
        "csv_set_quote": {
            "0": "CsvParser"
        },
        "csv_get_opts": {
            "0": "CsvParser"
        },
        "csv_fini": {
            "0": "CsvParser",
            "103": "Integer_8"
        },
        "csv_set_space_func": {
            "1": "function",
            "2": "function"
        },
        "csv_increase_buffer": {
            "103": "Integer_8"
        },
        "csv_init": {
            "103": "Integer_8"
        },
        "csv_free": {
            "103": "Integer_8"
        },
        "url_free": {
            "0": "UrlData"
        },
        "url_get_host": {
            "0": "alloc::string::String"
        },
        "url_get_path": {
            "0": "alloc::string::String"
        },
        "url_get_port": {
            "0": "alloc::string::String"
        },
        "url_get_protocol": {
            "0": "alloc::string::String"
        },
        "url_get_scheme": {
            "0": "alloc::string::String"
        },
        "opng_rangeset2bitset": {
            "1": "core::ffi::c_str::CStr"
        },
        "scan_option": {
            "0": "core::ffi::c_str::CStr"
        },
        "osys_path_chdir": {
            "2": "core::ffi::c_str::CStr",
            "4": "core::ffi::c_str::CStr"
        },
        "opng_ullratio_to_factor_string": {
            "0": "alloc::string::String"
        },
        "opng_ulratio_to_percent_string": {
            "0": "alloc::string::String"
        },
        "opng_ullratio_to_percent_string": {
            "0": "alloc::string::String"
        },
        "bmp_img_read": {
            "0": "BmpImg"
        },
        "bmp_img_write": {
            "0": "BmpImg"
        }
    }

    with open("input.json", "w", encoding="utf-8") as f:
        json.dump(data, f, indent=4)

def prepare_directory(dir_path):
    """
    Replicates the logic of clearing or creating directories
    and removing process_log.log if present.
    """
    if os.path.exists(dir_path):
        shutil.rmtree(dir_path)
    os.makedirs(os.path.join(dir_path, "C"))
    os.makedirs(os.path.join(dir_path, "Rust"))

    if os.path.exists("process_log.log"):
        os.remove("process_log.log")
    
    if os.path.exists("all_logs"):
        shutil.rmtree("all_logs")
    os.makedirs("all_logs")

def manage_dot_files(dir_path):
    """
    Removes .dot files in each subdirectory if there are more
    than 20 .dot files. Only keep the 20 newest after sorting.
    """
    max_files = 20
    for root, _, files in os.walk(dir_path):
        dot_files = [os.path.join(root, f) for f in files if f.endswith(".dot")]
        if len(dot_files) > max_files:
            dot_files.sort()
            delete_count = len(dot_files) - max_files
            for file_to_delete in dot_files[:delete_count]:
                print(f"[INFO] Deleting: {file_to_delete}")
                os.remove(file_to_delete)

def parse_klee_output(input_file_path, output_file_path):
    with open(input_file_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    capturing = False
    output_lines = []

    for line in lines:
        if "SYM VALUE:" in line:
            capturing = True

        if capturing:
            output_lines.append(line)
            if not line.strip():
                capturing = False

    with open(output_file_path, "w", encoding="utf-8") as out:
        out.writelines(output_lines)


def process_c_file(bc_file):
    """
    Process one C .bc file:
      1) Run opt with SymbolizerPass
      2) Run klee
      3) Run KqueryConverter
    """
    base_name = os.path.basename(bc_file).replace(".i.bc", "")

    # 1) opt pass
    cmd_opt = (
        f"opt -load-pass-plugin ../build/Pass/SymbolizerPass.so "
        f"-O0 {bc_file} -S -o klee_ir_files/C/{base_name}_klee.ll"
    )
    run_command(cmd_opt)

    # 2) klee. We capture the entire output.
    cmd_klee = (
        f"klee --libc=klee --max-time=600 --max-tests=50 "
        f"klee_ir_files/C/{base_name}_klee.ll"
    )
    run_command_and_log(cmd_klee, f"klee_symbol_log/C/{base_name}_original_log.txt")

    # Extract SYM VALUE block
    parse_klee_output(f"klee_symbol_log/C/{base_name}_original_log.txt", f"klee_symbol_log/C/{base_name}_klee_log.txt")

    # 3) Run KqueryConverter (into graph_output/C)
    graph_output_dir = "graph_output/C"
    converter_cmd = (
        f"python3 ../../../../python/kquery-parser/KqueryConverter.py "
        f"../../../klee_symbol_log/C/{base_name}_klee_log.txt {base_name} c"
    )
    run_command(converter_cmd, cwd=graph_output_dir)

def process_rust_file(bc_file):
    """
    Process one Rust .bc file:
      1) Run opt with SymbolizerPass
      2) Run second opt pass (internalize, globaldce)
      3) Run klee
      4) Run KqueryConverter
    """
    base_name = os.path.basename(bc_file).replace(".rs.bc", "")

    # demangle
    demangle_opt = (
        f"opt -load-pass-plugin ../build/Pass/DemanglePass.so"
        f"-O0 {bc_file} -S -o klee_ir_files/Rust/{base_name}_klee.ll"
    )
    run_command(demangle_opt)

    # symbolize
    cmd_opt1 = (
        f"opt -load-pass-plugin ../build/Pass/SymbolizerPass.so "
        f"-O0 klee_ir_files/Rust/{base_name}_klee.ll -S -o klee_ir_files/Rust/{base_name}_klee.ll"
    )
    run_command(cmd_opt1)

    # link core
    link_core = (
        f"llvm-link klee_ir_files/Rust/{base_name}_klee.ll -S -o"
        f"klee_ir_files/Rust/{base_name}_klee.ll"
    )
    run_command(link_core)

    # remove unuse function
    # 2) opt pass (internalize + globaldce)
    cmd_opt2 = (
        f"opt -S -internalize -internalize-public-api-list=main -globaldce "
        f"klee_ir_files/Rust/{base_name}_klee.ll -o klee_ir_files/Rust/{base_name}_klee.ll"
    )
    run_command(cmd_opt2)

    # 3) klee
    cmd_klee = (
        f"klee --libc=klee --max-time=800 --max-tests=500 "
        f"klee_ir_files/Rust/{base_name}_klee.ll"
    )

    run_command_and_log(cmd_klee, f"klee_symbol_log/Rust/{base_name}_original_log.txt")

    # Extract SYM VALUE block
    parse_klee_output(f"klee_symbol_log/Rust/{base_name}_original_log.txt", f"klee_symbol_log/Rust/{base_name}_klee_log.txt")

    # 4) Run KqueryConverter
    graph_output_dir = "graph_output/Rust"
    converter_cmd = (
        f"python3 ../../../../python/kquery-parser/KqueryConverter.py "
        f"../../../klee_symbol_log/Rust/{base_name}_klee_log.txt {base_name} Rust"
    )
    run_command(converter_cmd, cwd=graph_output_dir)

    print(f"[INFO] Rust file processed successfully: {bc_file}")

def main():
    # Clean up old logs if present
    if os.path.exists("compare_graph_output_log.log"):
        os.remove("compare_graph_output_log.log")

    if os.path.exists("input.json"):
        os.remove("input.json")
    
    # Prepare directories
    prepare_directory("klee_ir_files")
    prepare_directory("klee_symbol_log")
    prepare_directory("klee_symbol_error_log")
    prepare_directory("graph_output")

    # 1) Emitting LLVM bitcode for C
    try:
        run_command("python3 ../../python/llvmBitcodeEmitter.py testcase/C")
    except Exception as e:
        logger.error("compile C error: %s", e, exc_info=True)

    # 2) Process each C .bc file in parallel
    c_bc_files = glob.glob("testcase/C/*.bc")
    with ThreadPoolExecutor(max_workers=MAX_JOBS) as executor:
        future_to_file = {executor.submit(process_c_file, f): f for f in c_bc_files}

        for future in as_completed(future_to_file):
            f = future_to_file[future]
            try:
                future.result()
            except Exception as e:
                logger.error(f"C symbolic {f} failed", exc_info=True)


    # Deduplicate + convertGraph for C
    try:
        run_command("python3 ../scripts/deduplicate.py C")
    except Exception as e:
        logger.error("deduplicate C outputs error: %s", e, exc_info=True)

    try:
        run_command("python3 ../scripts/convertGraph.py C")
    except Exception as e:
        logger.error("convertGraph C outputs error: %s", e, exc_info=True)

    # Create JSON (replacing the 'jq' step)
    create_json()

    # 3) Emitting LLVM bitcode for Rust
    try:
        run_command("python3 ../../python/llvmBitcodeEmitter.py testcase/Rust")
    except Exception as e:
        logger.error("compile rust error: %s", e, exc_info=True)

    # 4) Process each Rust .bc file in parallel
    r_bc_files = glob.glob("testcase/Rust/*.bc")
    with ThreadPoolExecutor(max_workers=MAX_JOBS) as executor:
        future_to_file = {executor.submit(process_rust_file, f): f for f in r_bc_files}

        for future in as_completed(future_to_file):
            f = future_to_file[future]
            try:
                future.result()
            except Exception as e:
                logger.error(f"Rust symbolic {f} failed", exc_info=True)

    # Deduplicate + convertGraph for Rust
    try:
        run_command("python3 ../scripts/deduplicate.py Rust")
    except Exception as e:
        logger.error("deduplicate rust error: %s", e, exc_info=True)

    try:
        run_command("python3 ../scripts/convertGraph.py Rust")
    except Exception as e:
        logger.error("convertGraph rust error: %s", e, exc_info=True)

    # Run distance.py
    try:
        run_command("python3 ../../python/distance.py")
    except Exception as e:
        logger.error("distance error: %s", e, exc_info=True)

    # Calculate total elapsed time
    end_time = time.time()
    elapsed_time = end_time - START_TIME
    elapsed_minutes = int(elapsed_time // 60)

    # Write results
    with open("execution_time.txt", "w", encoding="utf-8") as f:
        f.write(f"{elapsed_minutes}m\n")

    print(f"[INFO] Script execution time: {elapsed_time:.2f} seconds")
    print(f"[INFO] Script execution time: {elapsed_minutes}m")

if __name__ == "__main__":
    main()
