import os
import re
import csv
import argparse


def tokenize_by_underscore(s: str) -> set:
    lower_s = s.lower()
    replaced = lower_s.replace('_', ' ')
    tokens = replaced.split()
    return set(tokens)


def compare_strings(filename_without_ext: str, function_name: str) -> bool:

    def normalize(s: str) -> str:
        return ''.join(c.lower() for c in s if c != '_')


    norm_str1 = normalize(filename_without_ext)
    norm_str2 = normalize(function_name)
    if norm_str1 == norm_str2:
        return True
    
    file_tokens = tokenize_by_underscore(filename_without_ext)
    func_tokens = tokenize_by_underscore(function_name)

    for token in func_tokens:
        if token not in file_tokens:
            return False
    return True


def find_function_bodies(content: str, target_func_name: str):



    func_pattern = re.compile(
        r"\b(?:pub\s*\([^)]*\)\s*|pub\s+|async\s+|const\s+|unsafe\s+)*fn\s+([A-Za-z0-9_]+)\s*"
    )

    bodies = []
    search_pos = 0

    while True:
        match = func_pattern.search(content, search_pos)
        if not match:
            break

        captured_func_name = match.group(1)  


        if compare_strings(target_func_name, captured_func_name):
            brace_start = content.find('{', match.end())
            if brace_start == -1:
                search_pos = match.end()
                continue

            brace_count = 0
            end_index = brace_start
            for i in range(brace_start, len(content)):
                if content[i] == '{':
                    brace_count += 1
                elif content[i] == '}':
                    brace_count -= 1

                if brace_count == 0:
                    end_index = i
                    break

            function_body = content[brace_start:end_index + 1]
            bodies.append(function_body)
            search_pos = end_index + 1
        else:
            search_pos = match.end()

    return bodies


def count_unsafe_lines_in_body(body):
    total_unsafe_lines = 0
    has_unsafe_block = False

    index = 0
    while True:
        unsafe_pos = body.find("unsafe {", index)
        if unsafe_pos == -1:
            break  

        has_unsafe_block = True
        brace_start = body.find('{', unsafe_pos)
        if brace_start == -1:
            break 

        brace_count = 0
        block_end = brace_start
        for i in range(brace_start, len(body)):
            if body[i] == '{':
                brace_count += 1
            elif body[i] == '}':
                brace_count -= 1

            if brace_count == 0:
                block_end = i
                break

        unsafe_block = body[brace_start:block_end + 1]
        block_lines = unsafe_block.count('\n') + 1

        total_unsafe_lines += block_lines
        index = block_end + 1

    return has_unsafe_block, total_unsafe_lines


def analyze_rs_files(root_dir, csv_file_path):
    with open(csv_file_path, 'w', encoding='utf-8', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["function_name", "has_unsafe_block", "unsafe_lines"])

        for root, dirs, files in os.walk(root_dir):
            for file in files:
                if file.endswith('.rs'):
                    file_path = os.path.join(root, file)
                    func_name = os.path.splitext(file)[0] 

                    with open(file_path, 'r', encoding='utf-8') as f:
                        content = f.read()

                    function_bodies = find_function_bodies(content, func_name)

                    if not function_bodies:
                        writer.writerow([func_name, False, 100000000])
                    else:
                        total_unsafe_lines_all = 0
                        has_unsafe_any = False

                        for body in function_bodies:
                            has_unsafe_block, unsafe_lines = count_unsafe_lines_in_body(body)
                            if has_unsafe_block:
                                has_unsafe_any = True
                            total_unsafe_lines_all += unsafe_lines

                        writer.writerow([
                            func_name,
                            has_unsafe_any,
                            total_unsafe_lines_all
                        ])


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="stastic unsafe rust functions.")
    parser.add_argument("input_path", type=str, help="Path to the input directory or file.")

    # args = parser.parse_args()
    # input_path = args.input_path
    analyze_rs_files(root_dir="inputs-complex/u8c/test/individual-funcs_gpt-4o_2025-02-11_19-37-59__complete", csv_file_path="/Users/gab/repo/Rust/rustify-validator/src/calculate/result.csv")
    print("execution finish")
