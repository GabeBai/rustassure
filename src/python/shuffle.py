import os
import shutil

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

def move_matching_files(dest_dir, base_dir, i_files, except_ir = false):

    for rel_path in i_files:
        for file in os.listdir(base_dir):
            if except_ir:
                if file.startswith(rel_path) and not file.endswith(".ll"):
                    src_file = os.path.join(base_dir, file)
                    dest_dir = os.path.join(dest_dir, rel_path, file)
                    shutil.move(src_file, dest_dir)
            else:
                if file.startswith(rel_path):
                    src_file = os.path.join(base_dir, file)
                    dest_dir = os.path.join(dest_dir, rel_path, file)
                    shutil.move(src_file, dest_dir)

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
    move_matching_files(dest_dir, input_c_ir, all_i_files)

    input_rust_ir = os.path.join(directory, "klee_ir_files", "Rust")
    move_matching_files(dest_dir, input_rust_ir, all_i_files)

    input_c_symbol_log = os.path.join(directory, "klee_symbol_log", "C")
    move_matching_files(dest_dir, input_c_symbol_log, all_i_files)

    input_rust_symbol_log = os.path.join(directory, "klee_symbol_log", "Rust")
    move_matching_files(dest_dir, input_rust_symbol_log, all_i_files)

    input_output_directory = os.path.join(directory, "graph_output", "C")
    move_matching_files(dest_dir, input_output_directory, all_i_files)


if __name__ == "__main__":
    shuffle("../Symbolizer/tempcase")