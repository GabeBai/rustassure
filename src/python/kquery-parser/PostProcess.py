import networkx as nx
import pydot
import subprocess
from networkx.drawing.nx_pydot import write_dot
from Node import Node
import os


def is_single_node_subtree(g: nx.DiGraph, n) -> bool:
    return len(list(g.successors(n))) == 0

def dot_str_to_nx_graph(dot_str: str) -> nx.DiGraph:
    (pydot_graph,) = pydot.graph_from_dot_data(dot_str)
    G = nx.DiGraph(nx.nx_pydot.from_pydot(pydot_graph))
    return G

def is_extract_node(node_id, G):
    return G.nodes[node_id].get('label') == "Extract"

def is_empty_type_extract_node(node_id: Node, G) -> bool:
    return G.nodes[node_id].get('label') == "Extract" and (not G.nodes[node_id].get('type'))

def is_zext_node(node_id: Node, G) -> bool:
    return G.nodes[node_id].get('label') == "ZExt" or G.nodes[node_id].get('label') == "SExt"

def is_add_node(node_id: Node, G) -> bool:
    return G.nodes[node_id].get('label') == "Add"

def is_readlsb_w64(node_id: Node, G) -> bool:
    return G.nodes[node_id].get('label') == "ReadLSB" and G.nodes[node_id].get('type') == "w64"

def is_extract_w32(node_id: Node, G) -> bool:
    return G.nodes[node_id].get('label') == "Extract" and G.nodes[node_id].get('type') == "w32"

def is_type_w64(node_id: Node, G) -> bool:
    return G.nodes[node_id].get('type') == "w64"

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
        if is_zext_node(cur, G):
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
        if not is_extract_node(extract_node, G):
            continue

        extract_children = list(G.successors(extract_node))
        if len(extract_children) < 2:
            continue

        add_candidates = [c for c in extract_children if is_add_node(c, G)]
        if len(add_candidates) != 1:
            continue
        add_node = add_candidates[0]

        to_delete_subtree = [c for c in extract_children if c != add_node]

        add_children = list(G.successors(add_node))
        sext_candidates = [c for c in add_children if is_zext_node(c, G)]
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
    extract_nodes = [n for n in G.nodes() if is_extract_node(n, G)]
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
    
    zext_nodes = [n for n in G.nodes() if is_zext_node(n, G)]
    for z in zext_nodes:
        remove_node_keep_children(G, z)
    return True

def process_root_zext_eq_only(G: nx.DiGraph) -> bool:
    for node in list(G.nodes()):
        if G.in_degree(node) == 0 and is_zext_node(node, G):
            children = list(G.successors(node))
            if len(children) == 1:
                eq_node = children[0]
                if G.nodes[eq_node].get('label') == "Eq":
                    remove_node_keep_children(G, node)
                    return True
    return False


def process_extract_with_single_node_subtree(G: nx.DiGraph) -> bool:
    changed = False

    for node in list(G.nodes()):
        if is_empty_type_extract_node(node, G):
            children = list(G.successors(node))
            if len(children) == 2:
                child_a, child_b = children
                single_subtree = None
                keep_child = None

                if is_single_node_subtree(G, child_a):
                    single_subtree = child_a
                    keep_child = child_b
                elif is_single_node_subtree(G, child_b):
                    single_subtree = child_b
                    keep_child = child_a

                if single_subtree and keep_child:
                    remove_subtree(G, single_subtree)
                    rewire_parent_to_child(G, node, keep_child)
                    changed = True
                    break

    return changed


def process_graph(G: nx.DiGraph):
    removed = False
    for node in list(G.nodes()):
        if G.in_degree(node) == 0:
            continue
        node_label = node 
        if not is_readlsb_w64(node_label, G):
            continue
        
        children = list(G.successors(node))
        e32_nodes = [c for c in children if is_extract_w32(c, G)]
        if len(e32_nodes) == 0:
            continue
        
        e32_node = e32_nodes[0]
        
        e32_children = list(G.successors(e32_node))
        w64_child = None
        for cc in e32_children:
            if is_type_w64(cc, G):
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