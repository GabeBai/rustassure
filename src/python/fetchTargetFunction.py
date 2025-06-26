from tree_sitter import Language, Parser
import tree_sitter_c
import tree_sitter_rust
import sys

C = Language(tree_sitter_c.language())
RUST = Language(tree_sitter_rust.language())

def find_identifier(n):
    if n.type == 'identifier':
        return n
    for c in n.children:
        result = find_identifier(c)
        if result:
            return result
    return None


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

def find_target_c_function(src_bytes: bytes, file_name: str) -> str:
    parser = Parser(C)
    tree = parser.parse(src_bytes)
    root = tree.root_node

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

def find_target_rust_function(src_bytes: bytes, file_name: str) -> str:
    parser = Parser(RUST)
    tree = parser.parse(src_bytes)
    root = tree.root_node

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


if __name__ == '__main__':
    intput_path = ""
    intput_name = ""
    language = ""
    if len(sys.argv) < 2:
        input_path = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/tempCase/r.rs"
        input_name = "r"
        language = "Z"
    else:
        input_path = sys.argv[1]
        input_name = sys.argv[2]
        language = sys.argv[3]

    src = open(input_path, 'rb').read()

    if language == "C":
        target_function = find_target_c_function(src, input_name)
    else:
        target_function = find_target_rust_function(src, input_name)

    print(f"target name is {target_function}")
