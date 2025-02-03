import networkx as nx
import pydot
import subprocess
from networkx.drawing.nx_pydot import write_dot
from Node import Node
import os

def dot_str_to_nx_graph(dot_str: str) -> nx.DiGraph:
    (pydot_graph,) = pydot.graph_from_dot_data(dot_str)
    G = nx.DiGraph(nx.nx_pydot.from_pydot(pydot_graph))
    return G

def is_extract_node(node_label: Node) -> bool:
    return node_label.value == "Extract"
    # return "value = Extract" in node_label

def is_zext_node(node_label: Node) -> bool:
    return node_label.value == "ZExt" or node_label.value == "SExt"
    # return "value = ZExt" in node_label

def is_add_node(node_label: Node) -> bool:
    return node_label.value == "Add"

def is_readlsb_w64(node_label: Node) -> bool:
    return node_label.value == "ReadLSB" and node_label.type_value == "w64"
    # return ("value = ReadLSB" in node_label) and ("type = w64" in node_label)

def is_extract_w32(node_label: Node) -> bool:
    return node_label.value == "Extract" and node_label.type_value == "w32"
    # return ("value = Extract" in node_label) and ("type = w32" in node_label)

def is_type_w64(node_label: Node) -> bool:
    return node_label.type_value == "w64"
    # return "type = w64" in node_label

def remove_subtree(G: nx.DiGraph, root: Node):
    if root not in G:
        return
    desc = nx.descendants(G, root) | {root}
    G.remove_nodes_from(desc)

def rewire_parent_to_child(G: nx.DiGraph, old_node: Node, new_child: Node):
    if old_node not in G:
        return
    preds = list(G.predecessors(old_node))
    for p in preds:
        if not G.has_edge(p, new_child):
            G.add_edge(p, new_child)
    G.remove_node(old_node)



def subtree_contains_zext(G: nx.DiGraph, root: Node) -> bool:
    stack = [root]
    visited = set()
    while stack:
        cur = stack.pop()
        if cur in visited:
            continue
        visited.add(cur)
        if is_zext_node(cur):
            return True
        for child in G.successors(cur):
            stack.append(child)
    return False

def remove_subtree(G: nx.DiGraph, root: Node):
    if root not in G:
        return
    to_remove = nx.descendants(G, root) | {root}
    G.remove_nodes_from(to_remove)

def remove_node_keep_children(G: nx.DiGraph, node: Node):
    if node not in G:
        return
    preds = list(G.predecessors(node))
    succs = list(G.successors(node))
    for p in preds:
        for s in succs:
            if not G.has_edge(p, s):
                G.add_edge(p, s)
    G.remove_node(node)

def find_subtree_with_two_zext_branches(G: nx.DiGraph, root: Node) -> bool:
    children = list(G.successors(root))
    for subroot in children:
        sub_children = list(G.successors(subroot))
        if len(sub_children) < 2:
            continue
        left, right = sub_children[0], sub_children[1]
        
        if subtree_contains_zext(G, left) and subtree_contains_zext(G, right):
            return True
    return False


def process_graph_sub(G: nx.DiGraph):
    for extract_node in list(G.nodes()):
        if not is_extract_node(extract_node):
            continue

        extract_children = list(G.successors(extract_node))
        if len(extract_children) < 2:
            continue

        add_candidates = [c for c in extract_children if is_add_node(c)]
        if len(add_candidates) != 1:
            continue
        add_node = add_candidates[0]

        to_delete_subtree = [c for c in extract_children if c != add_node]

        add_children = list(G.successors(add_node))
        sext_candidates = [c for c in add_children if is_zext_node(c)]
        if len(sext_candidates) != 1:
            continue
        sext_node = sext_candidates[0]

        sext_children = list(G.successors(sext_node))

        for subtree_root in to_delete_subtree:
            remove_subtree(G, subtree_root)

        for sc in sext_children:
            rewire_parent_to_child(G, sext_node, sc)

        rewire_parent_to_child(G, extract_node, add_node)

        return True

    return False


def process_graph_ZExt(G: nx.DiGraph):
    extract_nodes = [n for n in G.nodes() if is_extract_node(n)]
    if not extract_nodes:
        return False
    extract_node = extract_nodes[0]
    
    if not find_subtree_with_two_zext_branches(G, extract_node):
        return False
    
    for c in list(G.successors(extract_node)):
        if not subtree_contains_zext(G, c):
            remove_subtree(G, c)
    
    if extract_node in G:
        G.remove_node(extract_node)
    
    zext_nodes = [n for n in G.nodes() if is_zext_node(n)]
    for z in zext_nodes:
        remove_node_keep_children(G, z)
    return True


def process_graph(G: nx.DiGraph):
    removed = False
    for node in list(G.nodes()):
        if G.in_degree(node) == 0:
            continue
        node_label = node 
        if not is_readlsb_w64(node_label):
            continue
        
        children = list(G.successors(node))
        e32_nodes = [c for c in children if is_extract_w32(c)]
        if len(e32_nodes) == 0:
            continue
        
        e32_node = e32_nodes[0]
        
        e32_children = list(G.successors(e32_node))
        w64_child = None
        for cc in e32_children:
            if is_type_w64(cc):
                w64_child = cc
                break
        if not w64_child:
            continue

        to_delete_subtree = [c for c in children if c != e32_node]
        for del_root in to_delete_subtree:
            remove_subtree(G, del_root)
        

        e32_del_subtree = [cc for cc in e32_children if cc != w64_child]
        for del_root in e32_del_subtree:
            remove_subtree(G, del_root)
        

        rewire_parent_to_child(G, e32_node, w64_child)

        rewire_parent_to_child(G, node, w64_child)
        removed = True
        

        break
    return removed

def test2():
    dot_str = r"""
    strict digraph {
    "44 [value = 0, ]";
    "45 [value = 18446744047000223744, ]";
    "47 [value = 0, ]";
    "48 [value = 8, ]";
    "49 [value = 0, ]";
    "51 [value = ReadLSB,  type = w32]";
    "50 [value = unnamed, ]";
    "52 [value = SExt,  type = w64]";
    "53 [value = Mul,  type = w64]";
    "46 [value = Extract,  type = w32]";
    "55 [value = ReadLSB,  type = w64]";
    "54 [value = const_arr1, ]";
    "56 [value = Add,  type = w64]";
    "43 [value = Extract,  type = w32]";
    "58 [value = Read,  type = w8]";
    "57 [value = const_arr2, ]";
    "51 [value = ReadLSB,  type = w32]" -> "49 [value = 0, ]";
    "51 [value = ReadLSB,  type = w32]" -> "50 [value = unnamed, ]";
    "52 [value = SExt,  type = w64]" -> "51 [value = ReadLSB,  type = w32]";
    "53 [value = Mul,  type = w64]" -> "48 [value = 8, ]";
    "53 [value = Mul,  type = w64]" -> "52 [value = SExt,  type = w64]";
    "46 [value = Extract,  type = w32]" -> "47 [value = 0, ]";
    "46 [value = Extract,  type = w32]" -> "53 [value = Mul,  type = w64]";
    "55 [value = ReadLSB,  type = w64]" -> "46 [value = Extract,  type = w32]";
    "55 [value = ReadLSB,  type = w64]" -> "54 [value = const_arr1, ]";
    "56 [value = Add,  type = w64]" -> "45 [value = 18446744047000223744, ]";
    "56 [value = Add,  type = w64]" -> "55 [value = ReadLSB,  type = w64]";
    "43 [value = Extract,  type = w32]" -> "44 [value = 0, ]";
    "43 [value = Extract,  type = w32]" -> "56 [value = Add,  type = w64]";
    "58 [value = Read,  type = w8]" -> "43 [value = Extract,  type = w32]";
    "58 [value = Read,  type = w8]" -> "57 [value = const_arr2, ]";
    }
    """
    G = dot_str_to_nx_graph(dot_str)

    output_file = os.path.join("/Users/gab/repo/Rust/rustify-validator/src/Symbolizer", "output_graph_1.dot")
    write_dot(G, output_file)

    # Convert to the PNG automatically
    png_cmd = "dot -Tpng " + output_file + " -o " + output_file+".png"
    result = subprocess.getoutput(png_cmd)
    

    
    process_graph(G)
    
    output_file1 = os.path.join("/Users/gab/repo/Rust/rustify-validator/src/Symbolizer", "output_graph_2.dot")
    write_dot(G, output_file1)

    # Convert to the PNG automatically
    png_cmd = "dot -Tpng " + output_file1 + " -o " + output_file1+".png"
    result = subprocess.getoutput(png_cmd)

def test1():
    dot_str = r"""
    strict digraph {
    "5 [value = 0, ]";
    "6 [value = 0, ]";
    "8 [value = ReadLSB,  type = w16]";
    "7 [value = unnamed, ]";
    "9 [value = ZExt,  type = w32]";
    "10 [value = 8, ]";
    "11 [value = AShr,  type = w32]";
    "12 [value = 255, ]";
    "13 [value = And,  type = w32]";
    "16 [value = 0, ]";
    "15 [value = ReadLSB,  type = w16]";
    "17 [value = unnamed, ]";
    "14 [value = ZExt,  type = w32]";
    "18 [value = 255, ]";
    "19 [value = And,  type = w32]";
    "20 [value = 8, ]";
    "21 [value = Shl,  type = w32]";
    "22 [value = Or,  type = w32]";
    "4 [value = Extract,  type = w16]";
    "8 [value = ReadLSB,  type = w16]" -> "6 [value = 0, ]";
    "8 [value = ReadLSB,  type = w16]" -> "7 [value = unnamed, ]";
    "9 [value = ZExt,  type = w32]" -> "8 [value = ReadLSB,  type = w16]";
    "11 [value = AShr,  type = w32]" -> "9 [value = ZExt,  type = w32]";
    "11 [value = AShr,  type = w32]" -> "10 [value = 8, ]";
    "13 [value = And,  type = w32]" -> "11 [value = AShr,  type = w32]";
    "13 [value = And,  type = w32]" -> "12 [value = 255, ]";
    "15 [value = ReadLSB,  type = w16]" -> "16 [value = 0, ]";
    "15 [value = ReadLSB,  type = w16]" -> "17 [value = unnamed, ]";
    "14 [value = ZExt,  type = w32]" -> "15 [value = ReadLSB,  type = w16]";
    "19 [value = And,  type = w32]" -> "14 [value = ZExt,  type = w32]";
    "19 [value = And,  type = w32]" -> "18 [value = 255, ]";
    "21 [value = Shl,  type = w32]" -> "19 [value = And,  type = w32]";
    "21 [value = Shl,  type = w32]" -> "20 [value = 8, ]";
    "22 [value = Or,  type = w32]" -> "13 [value = And,  type = w32]";
    "22 [value = Or,  type = w32]" -> "21 [value = Shl,  type = w32]";
    "4 [value = Extract,  type = w16]" -> "5 [value = 0, ]";
    "4 [value = Extract,  type = w16]" -> "22 [value = Or,  type = w32]";
    }
    """

    G = dot_str_to_nx_graph(dot_str)

    output_file = os.path.join("/Users/gab/repo/Rust/rustify-validator/src/Symbolizer", "output_graph_1.dot")
    write_dot(G, output_file)

    # Convert to the PNG automatically
    png_cmd = "dot -Tpng " + output_file + " -o " + output_file+".png"
    result = subprocess.getoutput(png_cmd)

    process_graph_ZExt(G)

    output_file1 = os.path.join("/Users/gab/repo/Rust/rustify-validator/src/Symbolizer", "output_graph_2.dot")
    write_dot(G, output_file1)

    # Convert to the PNG automatically
    png_cmd = "dot -Tpng " + output_file1 + " -o " + output_file1+".png"
    result = subprocess.getoutput(png_cmd)


if __name__ == "__main__":
    test1()
    test2()
