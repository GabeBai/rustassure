import networkx as nx
import os
import subprocess
import logging
import csv
import glob
import sys

current_dir = os.path.dirname(os.path.abspath(__file__))

field_map = {}

field_map_gpt_4o_mini = {
    "osys_rename" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_4"
    },
    "check_obj_option" : {
        "arg_value_1" : "arg_value_2"
    },
    "check_power2_option" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_4",
        "arg_value_3" : "arg_value_5",
    },
    "opng_strcasecmp" : {
        "arg_value_1" : "arg_value_2",
    },
    "check_num_option" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_4",
        "arg_value_3" : "arg_value_5"
    },
    "opng_init_iteration" : {
        "arg_value_3" : "arg_value_4",
    },
    "opng_print_image_info" : {
        "arg_value_0" : "arg_value_1",
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_3",
        "arg_value_3" : "arg_value_4"
    },
    "app_printf" : {
        "arg_value_0" : "arg_value_1",
    },
    "err_option_arg" : {
        "arg_value_1" : "arg_value_2"
    },
    "scan_option" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_4",
        "*(arg_value_3)" : "*(arg_value_5)",
    },
    "osys_path_chext" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_3",
        "arg_value_3" : "arg_value_5"
    },
    "osys_path_chdir" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_3",
        "arg_value_3" : "arg_value_4"
    }
}

field_map_gpt_3_5 = {
    "check_obj_option" : {
        "arg_value_1" : "arg_value_2"
    },
    "check_power2_option" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_4",
        "arg_value_3" : "arg_value_5",
    },
    "check_num_option" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_4",
        "arg_value_3" : "arg_value_5"
    },
    "opng_print_image_info" : {
        "arg_value_0" : "arg_value_1",
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_3",
        "arg_value_3" : "arg_value_4"
    },
    "app_printf" : {
        "arg_value_0" : "arg_value_1",
        "arg_value_0_pointer" : "arg_value_1_pointer"
    },
    "err_option_arg" : {
        "arg_value_1" : "arg_value_2"
    },
    "scan_option" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_3",
        "*(arg_value_3)" : "*(arg_value_4)",
    },
    "osys_path_chext" : {
        "arg_value_3" : "arg_value_4",
    },
}

field_map_gpt_4o = {
    "osys_rename" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_4"
    },
    "opng_rangeset_string_to_bitset" : {
        "arg_value_1" : "arg_value_2"
    },
    "check_rangeset_option" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_4"
    },
    "check_obj_option" : {
        "arg_value_1" : "arg_value_2"
    },
    "check_power2_option" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_4",
        "arg_value_3" : "arg_value_5",
    },
    "opng_strcasecmp" : {
        "arg_value_1" : "arg_value_2",
    },
    "opng_sprint_uratio_impl" : {
        "arg_value_2" : "arg_value_1",
        "arg_value_3" : "arg_value_2",
        "arg_value_4" : "arg_value_3",
    },
    "opng_strtail" : {
        "arg_value_1" : "arg_value_2",
    },
    "check_num_option" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_4",
        "arg_value_3" : "arg_value_5"
    },
    "opng_init_iteration" : {
        "arg_value_3" : "ret_value",
    },
    "opng_print_image_info" : {
        "arg_value_0" : "arg_value_1",
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_3",
        "arg_value_3" : "arg_value_4"
    },
    "app_printf" : {
        "arg_value_0" : "arg_value_1",
        "arg_value_0_pointer" : "arg_value_1_pointer"
    },
    "err_option_arg" : {
        "arg_value_1" : "arg_value_2"
    },
    "scan_option" : {
        "arg_value_1" : "arg_value_2",
        "arg_value_2" : "arg_value_3",
        "*(arg_value_3)" : "*(arg_value_4)"
    },
    "osys_path_chext" : {
        "arg_value_3" : "arg_value_4",
        "arg_value_3_pointer" : "arg_value_4_pointer"
    },
    "osys_path_chdir" : {
        "arg_value_3" : "arg_value_4",
    },
    "parse_args" : {
        "*(arg_value_1)" : "*(arg_value_0)",
        "*(arg_value_1)_pointer" : "*(arg_value_0)_pointer"
    }
}

class SingletonLogger:
    _instance = None

    def __new__(cls):
        if cls._instance is None:
            cls._instance = super(SingletonLogger, cls).__new__(cls)
            cls._instance._initialize_logger()
        return cls._instance

    def _initialize_logger(self):
        # Configure the logger only once
        self.logger = logging.getLogger("SingletonLogger")
        self.logger.setLevel(logging.INFO)
        
        # Create handler and formatter if they don't already exist
        if not self.logger.hasHandlers():
            handler = logging.FileHandler('compare_graph_output_log.log')  # Log to file
            formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
            handler.setFormatter(formatter)
            self.logger.addHandler(handler)

    def info(self, message, *args):
        self.logger.info(message, *args)

    def error(self, message, *args):
        self.logger.error(message, *args)

def print_graph_nodes(graph, graph_name):
    print(f"Nodes and attributes in {graph_name}:")
    for node, attributes in graph.nodes(data=True):
        print(f"Node: {node}, Attributes: {attributes}")

def sanitize(self, functionName):
    cmd = "rustfilt %s" % functionName
    result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    functionNameSanitized = result.stdout.split("::")[1]
    self.logger.debug("Sanitized function %s to %s", functionName, functionNameSanitized)
    return functionNameSanitized

def matchNodes(node1, node2):

    label1 = node1.get('label')
    label2 = node2.get('label')

    if label1 == label2:
        return True
    else:
        return False

def traverse_two_levels_rust():
    path_to_file_dict = {}
    base_dir = 'graph_output/Rust'
    for root, dirs, files in os.walk(base_dir):
        rel_path = os.path.relpath(root, base_dir)
        
        if len(rel_path.split(os.sep)) == 2:
            dot_files = [file_name for file_name in files if file_name.endswith('.dot') or file_name.endswith('.txt')]
            if dot_files:
                path_to_file_dict[rel_path] = dot_files

    return path_to_file_dict

def traverse_two_levels_c():
    path_to_file_dict = {}
    base_dir = 'graph_output/C'
    for root, dirs, files in os.walk(base_dir):
        rel_path = os.path.relpath(root, base_dir)
        
        if len(rel_path.split(os.sep)) == 2:

            dot_files = [file_name for file_name in files if file_name.endswith('.dot') or file_name.endswith('.txt')]
            if dot_files:
                path_to_file_dict[rel_path] = dot_files

    return path_to_file_dict

def compare_graph_optimize_edit_distance(G1, G2, max_iterations = 1):
    logger = SingletonLogger()
    logger.info("Graph1: number of nodes: %f, edges: %f", len(G1), len(G1.edges()))
    logger.info("Graph2: number of nodes: %f, edges: %f", len(G2), len(G2.edges()))
    print("Graph1: number of nodes:", len(G1), ", edges:", len(G1.edges()))
    print("Graph2: number of nodes:", len(G2), ", edges:", len(G2.edges()))
    ged_generator = nx.optimize_graph_edit_distance(G1, G2, node_match=matchNodes)  #
    ged = 0
    count = 0
    for g in ged_generator:
        print("ged = %f" % g)
        ged = g

        count += 1
        if count >= max_iterations:
            break
    return ged

def load_graph_from_dot(file_path):
    try:
        G = nx.nx_agraph.read_dot(file_path)
        print(f"Loaded graph from {file_path}")
        return G
    except Exception as e:
        print(f"Error loading graph from {file_path}: {e}")
        return None



def calculate_distance(input_files_a,
                       input_files_b):
    best_distance = None
    for i, file_path_a in enumerate(input_files_a):
        G1 = load_graph_from_dot(file_path_a)
        num_nodes_a = len(G1.nodes)
        current_best = 1000
        for file_path_b in input_files_b:
            G2 = load_graph_from_dot(file_path_b)
            num_nodes_b = len(G2.nodes)

            if num_nodes_a == num_nodes_b:
                current_best = min(current_best, compare_graph_optimize_edit_distance(G1, G2))

        if best_distance is None:
            best_distance = current_best
        else:
            best_distance = max(best_distance, current_best)
        if current_best == 1000:
            print(f"{file_path_a} cannot find a comparable graph, stop comparing this argument")
            break
    return best_distance

def all_lengths_equal(arr):
    return all(len(s) == len(arr[0]) for s in arr)

def compare_and_export_csv(c_dict, rust_dict, output_csv_path):
    rust_base = "graph_output/Rust"
    c_base = "graph_output/C"

    results_best = []
    free_counts = []
    for c_key, c_dot_files in c_dict.items():
        if '/' in c_key:
            function_name, argument_name = c_key.split('/', 1)
        else:
            function_name = c_key
            argument_name = ""

        mapped_c_key = c_key
        if function_name in field_map:
            field_name_map = field_map[function_name]
            if argument_name in field_name_map:
                new_argument_name_suffix = field_name_map[argument_name]
                mapped_c_key = f"{function_name}/{new_argument_name_suffix}"

        c_dir = os.path.join(c_base, c_key)
        c_files = sorted(glob.glob(os.path.join(c_dir, "*.dot")))


        found_match_input_directory = False
        best_r_key = None
        # find best match directory for each c input
        matching_r_keys = []
        for r_key in rust_dict.keys():
            if r_key == mapped_c_key:
                best_r_key = r_key
                found_match_input_directory = True
                break
            if r_key.startswith(mapped_c_key):
                if not mapped_c_key.endswith("pointer") and r_key.endswith("pointer"):
                    continue
                matching_r_keys.append(r_key)
                found_match_input_directory = True

        if matching_r_keys:
            if not all_lengths_equal(matching_r_keys):
                best_r_key = max(matching_r_keys, key=len)
            else:
                for r_key in matching_r_keys:
                    if r_key.endswith("field_0)") or r_key.endswith("field_0"):
                        best_r_key = r_key

        if not found_match_input_directory:
            if mapped_c_key.endswith("pointer"):
                c_key_modified = mapped_c_key[:-9]
            elif mapped_c_key.endswith(')'):
                # case : lib_csv : csv_error
                c_key_modified = mapped_c_key[:-1]
            else:
                c_key_modified = mapped_c_key

            for r_key in rust_dict.keys():
                if not mapped_c_key.endswith("pointer") and r_key.endswith("pointer"):
                    continue
                if r_key.startswith(c_key_modified) and function_name in r_key:
                    matching_r_keys.append(r_key)
                elif "ret_value" in c_key_modified:
                    # case : url_parser : url_get_port
                    if "ret_value" in r_key and function_name in r_key:
                        matching_r_keys.append(r_key)
                else:
                    # case : url_parser : decode_percent
                    slash_index = c_key.find('/')
                    if slash_index != -1:
                        temp_c_key = c_key_modified[:slash_index + 1] + '*(' + c_key_modified[slash_index + 1:]
                        if r_key.startswith(temp_c_key) and function_name in r_key:
                            matching_r_keys.append(r_key)

            if matching_r_keys:
                if not all_lengths_equal(matching_r_keys):
                    best_r_key = max(matching_r_keys, key=len)
                    found_match_input_directory = True
                else:
                    for r_key in matching_r_keys:
                        if r_key.endswith("field_0)"):
                            best_r_key = r_key
                            found_match_input_directory = True

        if c_key.endswith("free_call_counts"):
            free_call_max_c = 0
            free_call_max_rust = 0
            with open(os.path.join(c_dir, "free_call_counts.txt"), "r") as file:
                free_call_max = file.read().strip()
                if free_call_max.isdigit():
                    free_call_max_c = int(free_call_max)

            if not best_r_key:
                free_counts.append((function_name, argument_name, "rust_empty"))
            else:
                rust_dir = os.path.join(rust_base, best_r_key)
                if os.path.exists(os.path.join(rust_dir, "free_call_counts.txt")):
                    with open(os.path.join(rust_dir, "free_call_counts.txt"), "r") as file:
                        free_call_max = file.read().strip()
                        if free_call_max.isdigit():
                            free_call_max_rust = int(free_call_max)
                    free_counts.append((function_name, argument_name, str(abs(free_call_max_c - free_call_max_rust))))
                else:
                    free_counts.append((function_name, argument_name, "rust_empty"))
        elif found_match_input_directory:
            print(f" c is {c_key}, rust is {best_r_key}")

            rust_dir = os.path.join(rust_base, best_r_key)
            rust_files = sorted(glob.glob(os.path.join(rust_dir, "*.dot")))

            edit_distance = max(calculate_distance(c_files, rust_files),
                                calculate_distance(rust_files, c_files))
            results_best.append((function_name, argument_name, str(edit_distance)))
        else:
            results_best.append((function_name, argument_name, "Rust Empty!"))

    os.makedirs(output_csv_path, exist_ok=True)

    with open(os.path.join(output_csv_path, 'best_edit_distances.csv'), 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["function_name", "argument_name", "best_edit_distances"])
        writer.writerows(results_best)
    with open(os.path.join(output_csv_path, 'free_count.csv'), 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["function_name", "argument_name", "free_difference"])
        writer.writerows(free_counts)

if __name__ == "__main__":
    logger = SingletonLogger()
    result_C = traverse_two_levels_c()
    result_Rust = traverse_two_levels_rust()
    gptmodel = sys.argv[1]
    if gptmodel == "1":
        field_map = field_map_gpt_4o
    elif gptmodel == "2":
        field_map = field_map_gpt_4o
    elif gptmodel == "3":
        field_map = field_map_gpt_3_5
    elif gptmodel == "4":
        field_map = field_map_gpt_4o
    compare_and_export_csv(result_C, result_Rust, "edit_distance")