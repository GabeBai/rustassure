from venv import logger

import networkx as nx
import argparse
import os
import re
from itertools import combinations
from loggerFactory import getLogger
import subprocess
import logging

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


def traverse_two_levels():
    path_to_file_dict = {}
    
    for root, dirs, files in os.walk('../Symbolizer/graph_output/Rust'):
        rel_path = os.path.relpath(root, 'graph_output/Rust')
        
        if len(rel_path.split(os.sep)) == 2:
            dot_files = [file_name for file_name in files if file_name.endswith('.dot')]
            if dot_files:
                path_to_file_dict[rel_path] = dot_files

    return path_to_file_dict

def compare_graph_optimize_edit_distance(G1, G2):
    logger = SingletonLogger()
    logger.info("Graph1: number of nodes: %f, edges: %f", len(G1), len(G1.edges()))
    logger.info("Graph2: number of nodes: %f, edges: %f", len(G2), len(G2.edges()))
    print("Graph1: number of nodes:", len(G1), ", edges:", len(G1.edges()))
    print("Graph2: number of nodes:", len(G2), ", edges:", len(G2.edges()))
    ged_generator = nx.optimize_graph_edit_distance(G1, G2, node_match=matchNodes)  #
    ged = 0
    for g in ged_generator:
        print("ged = %f", g)
        ged = g
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


def compare_graphs_in_directories(input_dict):

    rust_base = "graph_output/rust"
    c_base = "graph_output/c"

    for key, dot_files in input_dict.items():
        rust_dir = os.path.join(rust_base, key)
        c_dir = os.path.join(c_base, key)

        for dot_file in dot_files:
            rust_file_path = os.path.join(rust_dir, dot_file)
            c_file_path = os.path.join(c_dir, dot_file)

            # Ensure both files exist before attempting to load and compare
            if os.path.exists(rust_file_path) and os.path.exists(c_file_path):
                G1 = load_graph_from_dot(rust_file_path)
                G2 = load_graph_from_dot(c_file_path)

                if G1 and G2:
                    # Calculate and print the graph edit distance
                    distance, normdistance = compare_graph_optimize_edit_distance(G1, G2)
                    if distance is not None and normdistance is not None:
                        logger = SingletonLogger()
                        logger.info("Graph Edit Distance between %s and %s: %s", rust_file_path, c_file_path, distance)
                        logger.info("Norm Graph Edit Distance between %s and %s: %s", rust_file_path, c_file_path, normdistance)
                        print(f"Graph Edit Distance between {rust_file_path} and {c_file_path}: {distance}")
                    else:
                        print(f"Failed to calculate graph edit distance between {rust_file_path} and {c_file_path}")
            elif not os.path.exists(rust_file_path):
                print(f"rust file do not exist: {rust_file_path}")
            else:
                print(f"C file do not exist: {rust_file_path}")

if __name__ == "__main__":
    logger = SingletonLogger()
    result = traverse_two_levels()
    logger.info('all graphs need to be compared %s', result)
    print(f'all graphs need to be compared {result}')
    compare_graphs_in_directories(result)


    # G1 = load_graph_from_dot('/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/graph_output/rust/function/arg_value_0/output_graph__0.dot')
    # G2 = load_graph_from_dot('/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/graph_output/C/function/arg_value_0/output_graph__0.dot')
    # for node in list(G1.nodes):
    #     G1.nodes[node]["label"] = node
    # for node in list(G2.nodes):
    #     G2.nodes[node]["label"] = node

    # # print_graph_nodes(G1, '1')


    # distance = compare_graph_optimize_edit_distance(G1, G2)
    # if distance is not None:
    #     print(f"{distance}")