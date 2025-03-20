import subprocess
import sys


def start_symbolized(directory, file_name):
    compile = ["rustc", "-A", "dead_code", "--emit=llvm-ir", "--crate-type=lib", "-o", file_name, directory]
    demangle = ["opt", "-load-pass-plugin", "../build/DemanglePass/DemanglePass.so", "-O0", file_name, "-S", "-o", file_name]
    symbolized = ["opt", "-load-pass-plugin", "../build/Pass/SymbolizerPass.so", "-O0", file_name, "-S", "-o", file_name]
    link_core = ["llvm-link", file_name, "core_demangle.ll", "-S", "-o", file_name]
    remove_unuse_function = ["opt", "-S", "-internalize", "-internalize-public-api-list=main", "-globaldce", file_name, "-o", file_name]
    commands = [compile, demangle, link_core, remove_unuse_function]
    for cmd in commands:
        try:
            result = subprocess.run(cmd, check=True, capture_output=True, text=True)
            print(f"success: {' '.join(cmd)}")
        except subprocess.CalledProcessError as e:
            print(f"fail: {' '.join(cmd)}\nerror message:\n{e.stderr}")
            break

if __name__ == "__main__":
    start_symbolized(sys.argv[1], sys.argv[2])