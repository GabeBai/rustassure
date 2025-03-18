import subprocess
import sys


def start_symbolized(directory):
    compile = ["rustc", "-A", "dead_code", "--emit=llvm-ir", "--crate-type=lib", "-o", "r.ll", directory]
    demangle = ["opt", "-load-pass-plugin", "../build/DemanglePass/DemanglePass.so", "-O0", "r.ll", "-S", "-o", "r.ll"]
    symbolized = ["opt", "-load-pass-plugin", "../build/Pass/SymbolizerPass.so", "-O0", "r.ll", "-S", "-o", "r.ll"]
    link_core = ["llvm-link", "r.ll", "core_demangle.ll", "-S", "-o", "r.ll"]
    commands = [compile, demangle, link_core]
    for cmd in commands:
        try:
            result = subprocess.run(cmd, check=True, capture_output=True, text=True)
            print(f"success: {' '.join(cmd)}")
        except subprocess.CalledProcessError as e:
            print(f"fail: {' '.join(cmd)}\nerror message:\n{e.stderr}")
            break

if __name__ == "__main__":
    start_symbolized(sys.argv[1])