from venv import logger

import networkx as nx
import argparse
import os
import re
from itertools import combinations
from loggerFactory import getLogger
import subprocess
import logging
import csv
import glob

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

def matchNodes(N1, N2):
    label1 = N1.get('label', "")
    label2 = N2.get('label', "")
    pattern = r'\\{(.*?)\\}'
    N1ArgIndex = ""
    N1FunctionName = ""
    N2ArgIndex = ""
    N2FunctionName = ""
    match = re.search(pattern, label1)
    if match:
        val = match.group(1)
        # self.logger.info("label1 match = %s", val)
        if " arg " in val:
            N1ArgIndex = val.split()[0]
            N1FunctionName = val.split()[2]
    match = re.search(pattern, label2)
    if match:
        val = match.group(1)
        # self.logger.info("label2 match = %s", val)
        if " arg " in val:
            N2ArgIndex = val.split()[0]
            N2FunctionName = sanitize(val.split()[2])

    # If one of the nodes is an argument, then it must match only with the corresponding argument of the translated function
    # With every other node it must return false
    # For any other node pair, we can say the nodes are equal, aka. they match (and return true)
    #       In this case, it would rely on the incoming, outgoing edges to determine the edit distance

    # self.logger.info("%s, %s, %s, %s", N1ArgIndex, N1FunctionName, N2ArgIndex, N2FunctionName)

    if len(N1FunctionName) > 0 or len(N2FunctionName) > 0:
        if N1FunctionName == N2FunctionName and N1ArgIndex == N2ArgIndex:
            return True
        else:
            return False
    else:
        return True

def traverse_two_levels_rust():
    path_to_file_dict = {}
    
    base_dir = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/graph_output/Rust'
    for root, dirs, files in os.walk(base_dir):
        rel_path = os.path.relpath(root, base_dir)
        
        if len(rel_path.split(os.sep)) == 2:
            dot_files = [file_name for file_name in files if file_name.endswith('.dot')]
            if dot_files:
                path_to_file_dict[rel_path] = dot_files

    return path_to_file_dict

def traverse_two_levels_c():
    path_to_file_dict = {}
    
    base_dir = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/graph_output/C'
    for root, dirs, files in os.walk(base_dir):
        rel_path = os.path.relpath(root, base_dir)
        
        if len(rel_path.split(os.sep)) == 2:

            dot_files = [file_name for file_name in files if file_name.endswith('.dot')]
            if dot_files:
                path_to_file_dict[rel_path] = dot_files

    return path_to_file_dict

def compare_graph_optimize_edit_distance(G1, G2, max_iterations = 4):
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
    normGed = ged / max(G1.number_of_nodes() + G1.number_of_edges(), G2.number_of_nodes() + G2.number_of_edges())
    return ged, normGed

def load_graph_from_dot(file_path):
    try:
        G = nx.nx_agraph.read_dot(file_path)
        print(f"Loaded graph from {file_path}")
        return G
    except Exception as e:
        print(f"Error loading graph from {file_path}: {e}")
        return None



def compare_and_export_csv(c_dict, rust_dict, output_csv_path):
    rust_base = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/graph_output/rust"
    c_base = "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/graph_output/C"

    results_max = []
    results_min = []
    results_all = []


    for c_key, c_dot_files in c_dict.items():
        if '/' in c_key:
            function_name, argument_name = c_key.split('/', 1)
        else:
            function_name = c_key
            argument_name = ""

        c_dir = os.path.join(c_base, c_key)
        c_files = sorted(glob.glob(os.path.join(c_dir, "*.dot")))

        max_edit_distance = None
        min_edit_distance = None
        all_edit_distances = set()

        found_match = False
        best_r_key = None

        for r_key in rust_dict.keys():
            if r_key.startswith(c_key):
                best_r_key = r_key
                found_match = True
                break

        if not found_match:
            if c_key.endswith(')'):
                # case : lib_csv : csv_error
                c_key_modified = c_key[:-1]
            else:
                c_key_modified = c_key

            matching_r_keys = []
            for r_key in rust_dict.keys():
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
                best_r_key = max(matching_r_keys, key=len)
                found_match = True

        if found_match:
            print(f"gabb c is {c_key}, rust is {best_r_key}")
            rust_dir = os.path.join(rust_base, best_r_key)
            rust_files = sorted(glob.glob(os.path.join(rust_dir, "*.dot")))

            max_len = max(len(c_files), len(rust_files)) if c_files and rust_files else 0

            for i in range(max_len):
                if not c_files:
                    continue
                if not rust_files:
                    continue


                if i < len(c_files):
                    c_file_path = c_files[i]
                else:
                    c_file_path = c_files[-1]

                if i < len(rust_files):
                    rust_file_path = rust_files[i]
                else:
                    rust_file_path = rust_files[-1]

                if os.path.exists(rust_file_path) and os.path.exists(c_file_path):
                    G1 = load_graph_from_dot(rust_file_path)
                    G2 = load_graph_from_dot(c_file_path)

                    if G1 and G2:
                        distance, normdistance = compare_graph_optimize_edit_distance(G1, G2)
                        if distance is not None and normdistance is not None:
                            all_edit_distances.add(distance)
                            if max_edit_distance is None or distance > max_edit_distance:
                                max_edit_distance = distance
                            if min_edit_distance is None or distance < min_edit_distance:
                                min_edit_distance = distance

        if not found_match or max_edit_distance is None:
            max_edit_distance_str = "rust empty"
            min_edit_distance_str = "rust empty"
            all_distances_str = "rust empty"
        else:
            max_edit_distance_str = str(max_edit_distance)
            min_edit_distance_str = str(min_edit_distance)
            all_distances_str = ", ".join(map(str, sorted(all_edit_distances)))

        results_max.append((function_name, argument_name, max_edit_distance_str))
        results_min.append((function_name, argument_name, min_edit_distance_str))
        results_all.append((function_name, argument_name, all_distances_str))

    os.makedirs(output_csv_path, exist_ok=True)

    with open(os.path.join(output_csv_path, 'max_edit_distance.csv'), 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["function_name", "argument_name", "max_edit_distance"])
        writer.writerows(results_max)

    with open(os.path.join(output_csv_path, 'min_edit_distance.csv'), 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["function_name", "argument_name", "min_edit_distance"])
        writer.writerows(results_min)

    with open(os.path.join(output_csv_path, 'all_edit_distances.csv'), 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["function_name", "argument_name", "all_edit_distances"])
        writer.writerows(results_all)

                        

if __name__ == "__main__":
    logger = SingletonLogger()
    result_C = traverse_two_levels_c()
    result_Rust = traverse_two_levels_rust()
    compare_and_export_csv(result_C, result_Rust, "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/edit_distance")