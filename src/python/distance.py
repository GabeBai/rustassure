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

def compare_graph_optimize_edit_distance(G1, G2):
    logger = SingletonLogger()
    logger.info("Graph1: number of nodes: %f, edges: %f", len(G1), len(G1.edges()))
    logger.info("Graph2: number of nodes: %f, edges: %f", len(G2), len(G2.edges()))
    print("Graph1: number of nodes:", len(G1), ", edges:", len(G1.edges()))
    print("Graph2: number of nodes:", len(G2), ", edges:", len(G2.edges()))
    ged_generator = nx.optimize_graph_edit_distance(G1, G2, node_match=matchNodes)  #
    ged = 0
    max_iterations = 4
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

    results = []  # 将要输出到 CSV 的结果列表，每个元素为 (function_name, argument_name, max_edit_distance)

    for c_key, c_dot_files in c_dict.items():
        # 拆分 function_name 和 argument_name
        if '/' in c_key:
            function_name, argument_name = c_key.split('/', 1)
        else:
            function_name = c_key
            argument_name = ""  # 没有参数名就给个空字符串

        # 构建 c_dir
        c_dir = os.path.join(c_base, c_key)

        # 获取 c_dir 下的 .dot 文件列表
        c_files = sorted(glob.glob(os.path.join(c_dir, "*.dot")))

        max_edit_distance = None  # 用于记录最大 edit distance
        found_match = False       # 是否找到 rust 的匹配目录

        # 遍历 rust_dict 查找前缀匹配
        for r_key, r_dot_files in rust_dict.items():
            c_key_modified = c_key[:-1]
            if r_key.startswith(c_key_modified):
                found_match = True
                rust_dir = os.path.join(rust_base, r_key)
                rust_files = sorted(glob.glob(os.path.join(rust_dir, "*.dot")))

                # 确定最大迭代次数
                max_len = max(len(c_files), len(rust_files)) if c_files and rust_files else 0

                for i in range(max_len):
                    if not c_files:
                        # 如果 c_dir 中没有文件，无法比较
                        continue
                    if not rust_files:
                        # 如果 rust_dir 中没有文件，无法比较
                        continue

                    # 如果超过 c_files 列表长度，则使用最后一个文件
                    if i < len(c_files):
                        c_file_path = c_files[i]
                    else:
                        c_file_path = c_files[-1]

                    # 如果超过 rust_files 列表长度，则使用最后一个文件
                    if i < len(rust_files):
                        rust_file_path = rust_files[i]
                    else:
                        rust_file_path = rust_files[-1]

                    # 确保文件存在
                    if os.path.exists(rust_file_path) and os.path.exists(c_file_path):
                        G1 = load_graph_from_dot(rust_file_path)
                        G2 = load_graph_from_dot(c_file_path)

                        if G1 and G2:
                            distance, normdistance = compare_graph_optimize_edit_distance(G1, G2)
                            if distance is not None and normdistance is not None:
                                # 记录最大值
                                if max_edit_distance is None or distance > max_edit_distance:
                                    max_edit_distance = distance
                            # else: 计算失败不影响 max_edit_distance，继续下一轮
                        # else: 加载图失败不进行处理
                    # else: 文件不存在不进行处理

        # 如果没有找到 rust 对应内容或未能计算出任何距离，则显示 "rust empty"
        if not found_match or max_edit_distance is None:
            max_edit_distance_str = "rust empty"
        else:
            max_edit_distance_str = str(max_edit_distance)

        # 记录结果行
        results.append((function_name, argument_name, max_edit_distance_str))

    # 输出到 CSV 文件
    with open(output_csv_path, 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        # 写表头
        writer.writerow(["function_name", "argument_name", "max_edit_distance"])
        # 写数据行
        for row in results:
            writer.writerow(row)



                        

if __name__ == "__main__":
    logger = SingletonLogger()
    result_C = traverse_two_levels_c()
    result_Rust = traverse_two_levels_rust()
    compare_and_export_csv(result_C, result_Rust, "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/output.csv")