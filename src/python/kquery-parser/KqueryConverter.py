import re
from collections import defaultdict
from KqueryGrapher import *
import sys
import shutil

def process_sym_values(file_path):
    with open(file_path, 'r') as file:
        data = file.read()
    
    lines = data.split('\n')
    processed_lines = []
    buffer = ""
    global_left = 0
    global_right = 0
    for line in lines:
        if line.startswith("SYM VALUE"):
            global_left = line.count("(")
            global_right = line.count(")")
            if global_left == global_right:
                processed_lines.append(line)
                global_left = 0
                global_right = 0
            else:
                buffer = line
        else:
            # Check if the last character is not a closing parenthesis
            if line.startswith("KLEE:"):
                continue
            # Check if the parentheses are balanced
            global_left = global_left + line.count("(")
            global_right = global_right + line.count(")")
            buffer = buffer + " " + line.strip()
            if (global_left == global_right):
                processed_lines.append(buffer)
                buffer = ""

    result = extract_values(processed_lines)

    filtered_result = {}
    numeric_values = None
    for key, values in result.items():
        if key == "free_call_counts":
            numeric_values = [int(v) for v in values if v.isdigit()]
            values = str(numeric_values)
        else:
            filtered_result[key] = values

    if numeric_values:
        directory = os.path.join(key, "free_call_counts.txt")
        if not os.path.exists(key):
            os.makedirs(key)
        with open(directory, "w") as output_file:
            output_file.write(str(max(numeric_values)))

    return filtered_result



def extract_values(processed_lines):
    sym_dict = {}
    for line in processed_lines:
        match = re.match(r'SYM VALUE: (\S+) : :(.*)', line)
        if match:
            key = match.group(1)  
            expression = match.group(2).strip()  
            if key not in sym_dict:
                sym_dict[key] = []
            sym_dict[key].append(expression)

    return sym_dict
    


if __name__ == "__main__":
    if len(sys.argv) < 3:
        directory_name = 'csv_increase_buffer'
        if os.path.exists(directory_name):
            # Delete all contents in the directory
            shutil.rmtree(directory_name)
        os.makedirs(directory_name)
        os.chdir(directory_name)
        result = process_sym_values('test')
        proccess_c = True
    else:
        directory_name = sys.argv[2]
        if os.path.exists(directory_name):
            # Delete all contents in the directory
            shutil.rmtree(directory_name)
        os.makedirs(directory_name)
        os.chdir(directory_name)
        proccess_c = (sys.argv[3] == 'c')
        result = process_sym_values(sys.argv[1])

    for key, values in result.items():
        seen_graph = []
        # if (directory_name == 'csv_increase_buffer' and key == '*(arg_value_0.field_5)' and (not proccess_c)):
        #     convert_kquery_to_graph(values, "", key, seen_graph, False)
        # else:
        convert_kquery_to_graph(values, "", key, seen_graph, False)
