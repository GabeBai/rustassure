import shutil
import subprocess
import os
from enum import Enum
import inspect
from datetime import datetime
import argparse
from processOutput import *

class Model(Enum):
    claude = 1
    gpt_4o = 2
    gpt_3_5 = 3
    gpt_4o_mini = 4


symbol_execution_directory = "../Symbolizer"

divide_script_path = "../scripts/divide_script.sh"
convert_klee_claude = "../scripts/convert_klee_claude.sh"
convert_klee = "../scripts/convert_klee.sh"
convert_klee_gpt3 = "../scripts/convert_klee_gpt3.sh"
convert_klee_4omini = "../scripts/convert_klee_4omini.sh"


def start_process(source_path, model : Model):
    subprocess.run(["bash", divide_script_path], cwd=source_path, text=True)
    subprocess.run(["python3", "../../python/symbolicExecution.py"], cwd=source_path, text=True)
    # if model == Model.claude:
    #     subprocess.run(["bash", convert_klee_claude], cwd=source_path, text=True)
    # elif model == Model.gpt_4o:
    #     subprocess.run(["bash", convert_klee], cwd=source_path, text=True)
    # elif model == Model.gpt_3_5:
    #     subprocess.run(["bash", convert_klee_gpt3], cwd=source_path, text=True)
    # elif model == Model.gpt_4o_mini:
    #     subprocess.run(["bash", convert_klee_4omini], cwd=source_path, text=True)


def prepare_directory(source, target_directory):
    main_directory = os.path.join(symbol_execution_directory, target_directory)
    os.makedirs(main_directory, exist_ok=True)

    subdirectory_path = os.path.join(main_directory, "testcase")
    os.makedirs(subdirectory_path, exist_ok=True)
    shutil.copytree(source, os.path.join(subdirectory_path, "before_divide_testcases"))

    return main_directory

def perform_general_execution(input_directory):
    print("Executing general task")
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(input_directory, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path

def libcsv_gpt_4o():
    print("Executing libcsv task with GPT-4o...")
    source_dir = "inputs-complex/libcsv/archive/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path


def libcsv_gpt_3_5_turbo():
    print("Executing libcsv task with GPT-3.5-turbo...")
    source_dir = "inputs-complex/libcsv/archive/individual-funcs_gpt-3.5-turbo_2025-02-21_16-38-16__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_3_5)
    return subdirectory_path


def libcsv_gpt_4o_mini():
    print("Executing libcsv task with GPT-4o-mini...")
    source_dir = "inputs-complex/libcsv/archive/individual-funcs_gpt-4o-mini_2025-02-22_16-35-33__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o_mini)
    return subdirectory_path


def libcsv_claude_3_5_sonnet():
    print("Executing libcsv task with Claude 3.5 Sonnet...")
    source_dir = "inputs-complex/libcsv/archive/iindividual-funcs_claude-3-5-sonnet-20240620_2025-02-24_18-08-16__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.claude)
    return subdirectory_path


def libbmp_gpt_4o():
    print("Executing libbmp task with GPT-4o...")
    source_dir = "inputs-complex/libbmp/src/archive/individual-funcs_gpt-4o_2025-04-09_00-45-00__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path


def libbmp_gpt_3_5_turbo():
    print("Executing libbmp task with GPT-3.5-turbo...")
    source_dir = "inputs-complex/libbmp/src/archive/individual-funcs_gpt-3.5-turbo_2025-02-26_00-39-44__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_3_5)
    return subdirectory_path


def libbmp_gpt_4o_mini():
    print("Executing libbmp task with GPT-4o-mini...")
    source_dir = "inputs-complex/libbmp/src/archive/individual-funcs_gpt-4o-mini_2025-02-22_23-19-43__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o_mini)
    return subdirectory_path


def libbmp_claude_3_5_sonnet():
    print("Executing libbmp task with Claude 3.5 Sonnet...")
    source_dir = "inputs-complex/libbmp/src/archive/individual-funcs_claude-3-5-sonnet-20240620_2025-02-24_17-11-26__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.claude)
    return subdirectory_path


def optipng_gpt_4o():
    print("Executing optipng task with GPT-4o...")
    source_dir = "inputs-complex/optipng/archive/individual-funcs_gpt-4o_2025-04-09_00-31-55__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path


def optipng_gpt_3_5_turbo():
    print("Executing optipng task with GPT-3.5-turbo...")
    source_dir = "inputs-complex/optipng/src/optipng/archive/individual-funcs_gpt-3.5-turbo_2025-02-21_17-01-52__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_3_5)
    return subdirectory_path


def optipng_gpt_4o_mini():
    print("Executing optipng task with GPT-4o-mini...")
    source_dir = "inputs-complex/optipng/src/optipng/archive/individual-funcs_gpt-4o-mini_2025-02-22_17-57-17__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o_mini)
    return subdirectory_path


def optipng_claude_3_5_sonnet():
    print("Executing optipng task with Claude 3.5 Sonnet...")
    source_dir = "inputs-complex/optipng/src/optipng/archive/individual-funcs_claude-3-5-sonnet-20240620_2025-02-24_16-14-45__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.claude)
    return subdirectory_path


def url_parser_gpt_4o():
    print("Executing url_parser task with GPT-4o...")
    source_dir = "inputs-complex/url_parser.h/archive/individual-funcs_gpt-4o_2025-04-09_00-41-44__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path


def url_parser_gpt_3_5_turbo():
    print("Executing url_parser task with GPT-3.5-turbo...")
    source_dir = "inputs-complex/url_parser.h/archive/individual-funcs_gpt-3.5-turbo_2025-02-21_18-09-46__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_3_5)
    return subdirectory_path


def url_parser_gpt_4o_mini():
    print("Executing url_parser task with GPT-4o-mini...")
    source_dir = "inputs-complex/url_parser.h/archive/individual-funcs_gpt-4o-mini_2025-02-22_23-15-50__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o_mini)
    return subdirectory_path


def url_parser_claude_3_5_sonnet():
    print("Executing url_parser task with Claude 3.5 Sonnet...")
    source_dir = "inputs-complex/url_parser.h/archive/individual-funcs_claude-3-5-sonnet-20240620_2025-02-24_17-19-27__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.claude)
    return subdirectory_path


def u8c_gpt_4o():
    print("Executing u8c task with GPT-4o...")
    source_dir = "inputs-complex/u8c/test/archive/individual-funcs_gpt-4o_2025-04-09_00-47-30__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path


def u8c_gpt_3_5_turbo():
    print("Executing u8c task with GPT-3.5-turbo...")
    source_dir = "inputs-complex/u8c/test/archive/individual-funcs_gpt-3.5-turbo_2025-02-21_17-39-47__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_3_5)
    return subdirectory_path


def u8c_gpt_4o_mini():
    print("Executing u8c task with GPT-4o-mini...")
    source_dir = "inputs-complex/u8c/test/archive/individual-funcs_gpt-4o-mini_2025-02-22_23-24-40__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o_mini)
    return subdirectory_path


def u8c_claude_3_5_sonnet():
    print("Executing u8c task with Claude 3.5 Sonnet...")
    source_dir = "inputs-complex/u8c/test/archive/individual-funcs_claude-3-5-sonnet-20240620_2025-02-24_16-07-37__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.claude)
    return subdirectory_path


def select_option(options, prompt):
    """ Display options and let the user select one """
    print(prompt)
    for i, option in enumerate(options, 1):
        print(f"{i}. {option}")

    while True:
        try:
            choice = int(input("Enter option number: "))
            if 1 <= choice <= len(options):
                return options[choice - 1]
            else:
                print("Invalid input, please enter a valid number.")
        except ValueError:
            print("Invalid input, please enter a number.")


def execute_task(codebase, model):
    """ Generate function name and execute corresponding function """
    function_name = f"{codebase}_{model.replace('-', '_')}"

    if function_name in globals():
        directory = globals()[function_name]()  # Call the function dynamically
        process_output(directory, model, function_name)
    else:
        print(f"Function {function_name} not found.")


if __name__ == "__main__":
    # libbmp_gpt_4o()
    parser = argparse.ArgumentParser(
        description="custom your input directory")
    parser.add_argument("--src", type=str, default="",
                        help="The source directory that contains the original files")

    args = parser.parse_args()
    args.src = os.path.expanduser(args.src)

    if args.src:
        directory = perform_general_execution(args.src)
        process_output(directory, "custom", "custom")
    else:
        codebases = ["libcsv", "libbmp", "optipng", "url_parser", "u8c"]
        models = ["gpt-4o", "gpt-3.5-turbo", "gpt-4o-mini", "claude-3-5-sonnet"]
        selected_codebase = select_option(codebases, "Select a Codebase:")
        selected_model = select_option(models, "Select a GPT Model:")
        execute_task(selected_codebase, selected_model)
