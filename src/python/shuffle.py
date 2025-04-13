import os
import shutil
import sys

from sympy import false


def create_shuffle_dirs(target_directory, i_files):
    for rel_path in i_files:
        shuffle_path = os.path.join(target_directory, rel_path)
        os.makedirs(shuffle_path, exist_ok=True)

def find_i_files(base_dir):
    target_dir = os.path.join(base_dir, "testcase", "C")
    i_files = []

    for root, _, files in os.walk(target_dir):
        for file in files:
            if file.endswith(".i"):
                i_files.append(os.path.splitext(file)[0])

    return i_files

def move_matching_files(original_dest_dir, base_dir, i_files, except_ir = false, source = ""):

    for rel_path in i_files:
        for file in os.listdir(base_dir):
            if except_ir:
                if file.startswith(rel_path) and not file.endswith(".ll") and not file.endswith(".bc"):
                    src_file = os.path.join(base_dir, file)
                    dest_dir = os.path.join(original_dest_dir, rel_path, file + "_" + source)
                    if os.path.isdir(src_file):
                        shutil.copytree(src_file, dest_dir)
                    else:
                        shutil.copy2(src_file, dest_dir)
                    print(f"{src_file} to {dest_dir} finish")
            else:
                if file.startswith(rel_path):
                    src_file = os.path.join(base_dir, file)
                    dest_dir = os.path.join(original_dest_dir, rel_path, file + "_" + source)
                    if os.path.isdir(src_file):
                        shutil.copytree(src_file, dest_dir)
                    else:
                        shutil.copy2(src_file, dest_dir)
                    print(f"{src_file} to {dest_dir} finish")

def shuffle(directory):
    dest_dir = os.path.join(directory, "shuffle")
    if os.path.exists(dest_dir):
        shutil.rmtree(dest_dir)
    os.mkdir(dest_dir)
    all_i_files = find_i_files(directory)
    create_shuffle_dirs(dest_dir, all_i_files)
    # input C
    input_c_directory = os.path.join(directory, "testcase", "C")
    move_matching_files(dest_dir, input_c_directory, all_i_files, except_ir = True)
    # input Rust
    input_rust_directory = os.path.join(directory, "testcase", "Rust")
    move_matching_files(dest_dir, input_rust_directory, all_i_files, except_ir = True)

    input_c_ir = os.path.join(directory, "klee_ir_files", "C")
    move_matching_files(dest_dir, input_c_ir, all_i_files, source = "C")

    input_rust_ir = os.path.join(directory, "klee_ir_files", "Rust")
    move_matching_files(dest_dir, input_rust_ir, all_i_files, source = "Rust")

    input_c_symbol_log = os.path.join(directory, "klee_symbol_log", "C")
    move_matching_files(dest_dir, input_c_symbol_log, all_i_files, source = "C")

    input_rust_symbol_log = os.path.join(directory, "klee_symbol_log", "Rust")
    move_matching_files(dest_dir, input_rust_symbol_log, all_i_files, source = "Rust")

    input_c_output_directory = os.path.join(directory, "graph_output", "C")
    move_matching_files(dest_dir, input_c_output_directory, all_i_files, source = "C")

    input_rust_output_directory = os.path.join(directory, "graph_output", "Rust")
    move_matching_files(dest_dir, input_rust_output_directory, all_i_files, source = "Rust")


if __name__ == "__main__":
    # shuffle("../Symbolizer/optipng_gpt_4o_20250412_2025-04-12_05-11-08")
    shuffle(sys.argv[1])