import os.path

from llvmlite import binding as llvm
import json
from tree_sitter import Language, Parser
import tree_sitter_c
import tree_sitter_rust
import sys
from pathlib import Path
import re
from typing import Dict, List, Tuple

llvm.initialize()
llvm.initialize_native_target()
llvm.initialize_native_asmprinter()

def edit_distance(s1: str, s2: str) -> int:
    len1, len2 = len(s1), len(s2)
    # initialize dp table of size (len1+1) x (len2+1)
    dp = [[0] * (len2 + 1) for _ in range(len1 + 1)]

    # base cases: transforming to or from the empty string
    for i in range(len1 + 1):
        dp[i][0] = i
    for j in range(len2 + 1):
        dp[0][j] = j

    # fill dp table
    for i in range(1, len1 + 1):
        for j in range(1, len2 + 1):
            cost = 0 if s1[i - 1] == s2[j - 1] else 1
            dp[i][j] = min(
                dp[i - 1][j] + 1,        # deletion
                dp[i][j - 1] + 1,        # insertion
                dp[i - 1][j - 1] + cost  # substitution
            )

    return dp[len1][len2]

def find_identifier(n):
    if n.type == 'identifier':
        return n
    for c in n.children:
        result = find_identifier(c)
        if result:
            return result
    return None

def find_c_target_function(root, src_bytes: bytes, file_name: str) -> str:
    best_name = ""
    best_distance = sys.maxsize

    def visit(node):
        nonlocal best_name, best_distance

        # C function definitions are 'function_definition'
        if node.type == 'function_definition':
            # grab the name token
            decl = node.child_by_field_name('declarator')
            if not decl:
                return

            # 2) locate the identifier
            name_node = find_identifier(decl)
            if not name_node:
                return
            if name_node:
                func_name = src_bytes[name_node.start_byte:name_node.end_byte].decode()
                dist = edit_distance(func_name, file_name)
                if dist < best_distance:
                    best_distance  = dist
                    best_name      = func_name

        for child in node.children:
            visit(child)

    visit(root)
    return best_name

def find_func(node, code, name):
    for child in node.children:
        if child.type in ("function_definition", "function_item"):
            id_node = child.child_by_field_name("name")
            if id_node is not None:
                ident = code[id_node.start_byte:id_node.end_byte].decode()
                if ident == name:
                    return child
        res = find_func(child, code, name)
        if res:
            return res
    return None

def find_c_func(node, code, name):
    for child in node.children:
        if child.type in ("function_definition"):
            decl = child.child_by_field_name('declarator')
            if not decl:
                continue
            name_node = find_identifier(decl)
            if name_node is not None:
                ident = code[name_node.start_byte:name_node.end_byte].decode()
                if ident == name:
                    return child
        res = find_c_func(child, code, name)
        if res:
            return res
    return None

def extract_signature(func_node, code, target_function_name):
    # ret_ty = func_node.child_by_field_name("type")
    params = func_node.child_by_field_name("parameters")

    # ret_str = code[ret_ty.start_byte:ret_ty.end_byte].decode().strip() if ret_ty else "void"
    param_text = code[params.start_byte:params.end_byte].decode().strip("() ")
    return f"{target_function_name}({param_text})"

def extract_c_signature(func_node, code: bytes, target_function_name: str) -> str:
    spec_node = func_node.child_by_field_name("declaration_specifiers")
    decl_node = func_node.child_by_field_name("declarator")
    if spec_node and decl_node:
        ret_part = code[spec_node.start_byte:decl_node.start_byte].decode().strip()
    else:
        ret_part = "void"

    func_decl = decl_node
    while func_decl and func_decl.type != "function_declarator":
        func_decl = func_decl.child_by_field_name("declarator")

    params_node = func_decl.child_by_field_name("parameters") if func_decl else None
    param_text  = code[params_node.start_byte:params_node.end_byte].decode().strip() if params_node else "()"

    signature = f"{target_function_name}{param_text}"
    return " ".join(signature.split())

def find_rust_target_function(root, src_bytes: bytes, file_name: str) -> str:

    best_name = ""
    best_distance = sys.maxsize

    def visit(node):
        nonlocal best_name, best_distance

        # whenever we hit a function declaration/definition
        if node.type == 'function_item':
            name_node = node.child_by_field_name('name')
            if name_node:
                func_name = src_bytes[name_node.start_byte:name_node.end_byte].decode()
                dist = edit_distance(func_name, file_name)
                if dist < best_distance:
                    best_distance = dist
                    best_name = func_name

        # recurse into children
        for child in node.children:
            visit(child)

    visit(root)
    return best_name


def fetch_rust_function_signature_with_byte(input_byte, target_function_name):
    parser = Parser(Language(tree_sitter_rust.language()))
    code = input_byte
    tree = parser.parse(code)
    root = tree.root_node
    target_function_name = find_rust_target_function(root, code, target_function_name)
    fn_node = find_func(root, code, target_function_name)
    if not fn_node:
        print(f"function '{target_function_name}' not found")
        return "", ""
    result = extract_signature(fn_node, code, target_function_name)
    return target_function_name, result


def fetch_rust_function_signature(intput_path, target_function_name):
    parser = Parser(Language(tree_sitter_rust.language()))
    code = Path(intput_path).read_bytes()
    tree = parser.parse(code)
    root = tree.root_node
    target_function_name = find_rust_target_function(root, code, target_function_name)
    fn_node = find_func(root, code, target_function_name)
    if not fn_node:
        print(f"function '{target_function_name}' not found")
        return "", ""
    result = extract_signature(fn_node, code, target_function_name)
    return target_function_name, result

def fetch_c_function_signature(intput_path, target_function_name):
    parser = Parser(Language(tree_sitter_c.language()))
    code = Path(intput_path).read_bytes()
    tree = parser.parse(code)
    root = tree.root_node
    target_function_name = find_c_target_function(root, code, target_function_name)
    fn_node = find_c_func(root, code, target_function_name)
    if not fn_node:
        print(f"function '{target_function_name}' not found")
        return "", ""
    result = extract_c_signature(fn_node, code, target_function_name)
    return target_function_name, result

def fetch_llvm_function_signature(intput_directory, target_function_name):
    with open(intput_directory, "r",
              encoding="utf-8") as f:
        llvm_ir = f.read()

    mod = llvm.parse_assembly(llvm_ir)
    mod.verify()
    best_distance = sys.maxsize
    target = None
    for func in mod.functions:
        current_distance = edit_distance(target_function_name, func.name)
        if current_distance < best_distance:
            best_distance = current_distance
            target = func
    return target.name, str(target.type)

def fetch_complete_llvm_function_signature(input_directory, target_function_name):
    with open(input_directory, "r",
              encoding="utf-8") as f:
        llvm_ir = f.read()

    mod = llvm.parse_assembly(llvm_ir)
    mod.verify()
    best_distance = sys.maxsize
    target = None
    for func in mod.functions:
        current_distance = edit_distance(target_function_name, func.name)
        if current_distance < best_distance:
            best_distance = current_distance
            target = func

    target_function_name = target.name

    pattern = rf'define.*?@{re.escape(target_function_name)}\s*\(.*?\)'
    match = re.search(pattern, llvm_ir)

    if match:
        return target_function_name, match.group(0)
    else:
        return "", ""


def list_files(is_rust: bool, root_dir: str) -> List[Tuple[str, str]]:
    root = Path(root_dir)
    results: List[Tuple[str, str]] = []
    if is_rust:
        pattern = "*.rs"
    else:
        pattern = "*.i"
    for path in root.rglob(pattern):
        full_path = str(path)
        name_without_ext = path.stem
        results.append((full_path, name_without_ext))
    return results

def list_ir_files(is_rust: bool, root_dir: str) -> List[Tuple[str, str]]:
    root = Path(root_dir)
    results: List[Tuple[str, str]] = []
    for path in root.rglob("*.ll"):
        full_path = str(path)
        name_without_ext = path.stem
        if is_rust:
            name_without_ext = name_without_ext.removesuffix(".rs")
        else:
            name_without_ext = name_without_ext.removesuffix(".i")
        results.append((full_path, name_without_ext))
    return results


def find_best_match(target_function_name: str, function_map) -> str:
    best_distance = sys.maxsize
    target = ""
    for name, info in function_map.items():
        current_distance = edit_distance(target_function_name, name)
        if current_distance < best_distance:
            best_distance = current_distance
            target = name
    return target

if __name__ == "__main__":
    if len(sys.argv) < 2:
        input_path = "/Users/gab/repo/server/testcase"
    else:
        input_path = sys.argv[1]

    output = "function_map.json"
    output_path = Path(output)
    rust_input_path = os.path.join(input_path, "Rust")
    c_input_path = os.path.join(input_path, "C")
    rs_files = list_files(True, rust_input_path)
    c_files = list_files(False, c_input_path)
    rs_ir_files = list_ir_files(True, rust_input_path)
    c_ir_files = list_ir_files(False, c_input_path)

    function_argument_map = {}

    # C original code
    for full_path, name in c_files:
        target_function_name, result = fetch_c_function_signature(full_path, name)
        if target_function_name == "":
            continue
        if target_function_name in function_argument_map:
            print(f"{target_function_name} occur more than once")
        else :
            function_argument_map[target_function_name] = {
                "c_original_code" : result
            }

    # C IR results
    for full_path, name in c_ir_files:
        target_function_name, result = fetch_complete_llvm_function_signature(full_path, name)
        if target_function_name in function_argument_map:
            function_argument_map[target_function_name]["c_ir_file"] = result
        else:
            print(f"In C IR,  '{target_function_name}' not found")

    # Rust original code
    for full_path, name in rs_files:
        target_function_name, result = fetch_rust_function_signature(full_path, name)
        if target_function_name == "":
            continue
        if target_function_name in function_argument_map:
            function_argument_map[target_function_name]["rust_original_code"] = result
        else:
           best_match_name = find_best_match(target_function_name, function_argument_map)
           function_argument_map[best_match_name]["rust_original_code"] = result

    # Rust IR results
    for full_path, name in rs_ir_files:
        target_function_name, result = fetch_complete_llvm_function_signature(full_path, name)
        if target_function_name in function_argument_map:
            function_argument_map[target_function_name]["rust_ir_file"] = result
        else:
            best_match_name = find_best_match(target_function_name, function_argument_map)
            function_argument_map[best_match_name]["rust_ir_file"] = result

    to_delete = []

    for name, info in function_argument_map.items():
        if not ("rust_original_code" in info and "rust_ir_file" in info):
            print(f"{name} is missing rust IR fields")
            to_delete.append(name)

    for name in to_delete:
        function_argument_map.pop(name)

    with output_path.open("w", encoding="utf-8") as fp:
        json.dump(
            function_argument_map,
            fp,
            indent=2,
            ensure_ascii=False
        )