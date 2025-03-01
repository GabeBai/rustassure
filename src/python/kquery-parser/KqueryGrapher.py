from antlr4 import *

from KqueryLexer import KqueryLexer 
from KqueryListener import KqueryListener
from KqueryParser import KqueryParser
from KqueryVisitor import KqueryVisitor
from networkx.drawing.nx_pydot import write_dot
import os
import re
import sys
import subprocess
from PostProcess import process_graph
from PostProcess import process_graph_ZExt
from PostProcess import process_graph_sub
from PostProcess import process_root_zext_eq_only
from PostProcess import process_extract_with_single_node_subtree
from Node import Node
import logging
import networkx as nx

module_path = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(module_path)
from distance import *


# Command to generate the classes (need to do this because versions can be different.
# antlr4 -Dlanguage=Python3 -visitor Kquery.g4
current_dir = os.path.dirname(os.path.abspath(__file__))
log_file = os.path.join(current_dir, "post_process_log.log")

logging.basicConfig(filename=log_file,
                    level=logging.INFO, 
                    format='%(asctime)s - %(levelname)s - %(message)s',
                    )


def extract_unique_numbers_from_string(s):
    numbers_after_eq = set(re.findall(r'=(\d+)', s))

    if numbers_after_eq:
        return ','.join(sorted(numbers_after_eq, key=int))

    numbers_before_eq = set(re.findall(r'(\d+)=', s))

    # 返回按数值排序的唯一数字字符串
    return ','.join(sorted(numbers_before_eq, key=int)) if numbers_before_eq else ""

class KqueryASTVisitor(KqueryVisitor):

    def __init__(self):
        self.definition_map = {} # Map of definition to Node
        self.G = nx.DiGraph()

    def visitIdentifier(self, ctx):
        identifier = ctx.getText()
        if identifier in self.definition_map:
            node = self.definition_map[identifier]
            return node.deep_copy()
        return Node(identifier, "", self.G)

    def visitNumber(self, ctx):
        # print("Number")
        number = ctx.getText()
        node =  Node(number, "", self.G)
        self.G.add_node(node, label=number)
        return node

    def visitDefinition(self, ctx):
        # Create the node and populate it in the definition_map
        # definition: IDENTIFIER ':' expr;
        identifier = ctx.getChild(0).getText()
        definition = self.visit(ctx.getChild(2))
        self.definition_map[identifier] = definition
        return definition

    def visitNumber_list(self, ctx):
        # number_list: NUMBER | NUMBER ',' number_list;
        node = Node("number_list", "", self.G)
        self.G.add_node(node)
        if ctx.getChildCount() == 1:
            node = Node(ctx.getChild(0).getText(), "", self.G)
            return node
        else:
            child_number = Node(ctx.getChild(0).getText(), "", self.G)
            child_number_list = self.visit(ctx.getChild(2))

            node = Node("NumberList", "", self.G)

            node.children.append(child_number)
            node.children.append(child_number_list)

            self.G.add_node(node)
            self.G.add_edge(node, child_number)
            self.G.add_edge(node, child_number_list)
        return node

    def visitArray_initializer(self, ctx):
        # array_initializer: 'symbolic' | '[' number_list ']';
        node = Node("array_initializer", "", self.G)
        self.G.add_node(node)
        if ctx.getChildCount() == 1:
            symbolic = ctx.getChild(0).getText()
            child = Node(symbolic, "", self.G)
            self.G.add_node(child)
            self.G.add_edge(node, child)
        else:
            number_list = self.visit(ctx.getChild(1))
            node.children.append(number_list)
            self.G.add_edge(node, number_list)

        return node

    def visitArray_declaration(self, ctx):
        # array_declaration: 'array' IDENTIFIER '[' NUMBER? ']' ':' TYPE '->' TYPE '=' array_initializer;
        array = ctx.getChild(0).getText()
        identifier = ctx.getChild(1).getText()
        node = Node(array, identifier, self.G)
        self.G.add_node(node)

        if ctx.getChildCount() == 11:
            array_initializer_index = 10
        else:
            array_initializer_index = 9
        array_initializer = self.visit(ctx.getChild(array_initializer_index))
        
        node.children.append(array_initializer)
        self.G.add_edge(node, array_initializer)

        return node

    def visitArithmetic_expr(self, ctx):
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        expr1 = ctx.getChild(3)
        expr2 = ctx.getChild(4)

        child_node1 = self.visit(expr1)
        child_node2 = self.visit(expr2)
        
        node = Node(expr_kind, value_type, self.G)
        node.children.append(child_node1)
        node.children.append(child_node2)

        self.G.add_node(node)
        self.G.add_edge(node, child_node1)
        self.G.add_edge(node, child_node2)
        return node

    def visitBitwise_expr(self, ctx):
        # bitwise_expr: '(' bitwise_expr_kind (type)? expr expr ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        expr1 = ctx.getChild(3)
        expr2 = ctx.getChild(4)

        child_node1 = self.visit(expr1)
        child_node2 = self.visit(expr2)
        
        node = Node(expr_kind, value_type, self.G)
        node.children.append(child_node1)
        node.children.append(child_node2)

        self.G.add_node(node)
        self.G.add_edge(node, child_node1)
        self.G.add_edge(node, child_node2)
        return node

    def visitComparison_expr(self, ctx):
        # comparison_expr: '(' comparison_expr_kind (type)? expr expr ')';
        expr_kind = ctx.getChild(1).getText()

        if ctx.getChildCount() == 6:
            value_type = ctx.getChild(2).getText()
            node = Node(expr_kind, value_type, self.G)

            child1 = self.visit(ctx.getChild(3))
            child2 = self.visit(ctx.getChild(4))
            
            node.children.append(child1)
            node.children.append(child2)
            self.G.add_edge(node, child1)
            self.G.add_edge(node, child2)
        else:
            node = Node(expr_kind, "", self.G)

            child1 = self.visit(ctx.getChild(2))
            child2 = self.visit(ctx.getChild(3))
            
            node.children.append(child1)
            node.children.append(child2)
            self.G.add_edge(node, child1)
            self.G.add_edge(node, child2)
        return node

    def visitBv_expr(self, ctx):
        # bv_expr: '(' bv_expr_kind (type)? expr expr ')'; // Bitvector
        expr_kind = ctx.getChild(1).getText()

        if ctx.getChildCount() == 6:
            value_type = ctx.getChild(2).getText()
            node = Node(expr_kind, value_type, self.G)

            child1 = self.visit(ctx.getChild(3))
            child2 = self.visit(ctx.getChild(4))
            
            node.children.append(child1)
            node.children.append(child2)
            if child1:
                self.G.add_edge(node, child1)
            if child2:
                self.G.add_edge(node, child2)
        else:
            node = Node(expr_kind, "", self.G)

            child1 = self.visit(ctx.getChild(2))
            child2 = self.visit(ctx.getChild(3))
            
            node.children.append(child1)
            node.children.append(child2)
            self.G.add_edge(node, child1)
            self.G.add_edge(node, child2)
        return node


    def visitExtension_expr(self, ctx):
        # extension_expr: '(' extension_expr_kind type expr ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        child = self.visit(ctx.getChild(3))
        
        node = Node(expr_kind, value_type, self.G)

        self.G.add_node(node)
        node.children.append(child)

        self.G.add_edge(node, child)
        return node

    def visitRead_expr(self, ctx):
        # read_expr: '(' read_expr_kind type expr version ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()


        child = self.visit(ctx.getChild(3))
        version = self.visit(ctx.getChild(4))
        
        node = Node(expr_kind, value_type, self.G)

        self.G.add_node(node)
        node.children.append(child)
        node.children.append(version)

        self.G.add_edge(node, child)
        self.G.add_edge(node, version)
        return node

    def visitSelect_expr(self, ctx):
        # select_expr : '(' select_expr_kind type expr expr expr ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        node = Node(expr_kind, value_type, self.G)

        expr1 = ctx.getChild(3)
        expr2 = ctx.getChild(4)
        expr3 = ctx.getChild(5)

        child1 = self.visit(expr1)
        child2 = self.visit(expr2)
        child3 = self.visit(expr3)

        node.children.append(child1)
        node.children.append(child2)
        node.children.append(child3)

        self.G.add_node(node)
        self.G.add_edge(node, child1)
        self.G.add_edge(node, child2)
        self.G.add_edge(node, child3)

    def visitNeg_expr(self, ctx):
        # neg_expr: '(' neg_expr_kind (type)? expr ')'
        expr_kind = ctx.getChild(1).getText()
        if ctx.getChildCount() == 5: 
            # There is (type)
            value_type = ctx.getChild(2).getText()
            node = Node(expr_kind, value_type, self.G)
            expr = ctx.getChild(3)
            child = self.visit(expr)
            node.children.append(child)
            self.G.add_node(node)
            self.G.add_edge(node, child)
        else:
            node = Node(expr_kind, "", self.G)
            expr = ctx.getChild(2)
            child = self.visit(expr)
            node.children.append(child)
            self.G.add_node(node)
            self.G.add_edge(node, child)
        pass

    def visitArray_read_expr(self, ctx):
        # array_read_expr : '(' array_read_expr_kind type expr version ')'
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        expr = ctx.getChild(3)
        version = ctx.getChild(4)

        child1 = self.visit(expr)
        child2 = self.visit(version) 

        node = Node(expr_kind, value_type, self.G)
        node.children.append(child1)
        node.children.append(child2)

        
        self.G.add_node(node)
        self.G.add_edge(node, child1)
        self.G.add_edge(node, child2)
        return node


    def visitVersion(self, ctx):
        # We don't parse version any deeper. TODO?
        version = ctx.getText()
        if not extract_unique_numbers_from_string(version) == "":
            version = "update list" + extract_unique_numbers_from_string(version)
        elif len(version) > 20:
            version = "abnormal update list"
        node = Node(version, "", self.G)
        self.G.add_node(node)
        return node

    def visitExpr(self, ctx):
        # print("Visit expr: " + ctx.getText())
        if ctx.getChildCount() > 1:
            for i in range(ctx.getChildCount()):
                child = ctx.getChild(i)
                self.visit(ctx.getChild(i))
        elif ctx.getChildCount() == 1:
            return self.visit(ctx.getChild(0))
        else:
            return self.visit(ctx)
        

def is_duplicate_graph(new_graph, seen_list):
    for old_graph in seen_list:
        ged, norm_ged = compare_graph_optimize_edit_distance(new_graph, old_graph, 1)
        if ged == 0:
            return True
    return False

def convert_kquery_to_graph(expressions, function_name, output_dir, seen_graphs, dedup = True):
    # Create the directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    for i in range(len(expressions)):
        expression = expressions[i]
    
        input_stream = InputStream(expression)
        lexer = KqueryLexer(input_stream)
        token_stream = CommonTokenStream(lexer)
        # lazy init, need to fill the token
        token_stream.fill()
        parser = KqueryParser(token_stream)
        
        tree = parser.prog()
        print(tree.toStringTree(recog=parser))

        # Create and apply the custom visitor
        visitor = KqueryASTVisitor()
        visitor.visit(tree)

        removed = process_graph(visitor.G)
        removed_zext = process_graph_ZExt(visitor.G)
        removed_sub = process_graph_sub(visitor.G)
        removed_empty_extract = process_extract_with_single_node_subtree(visitor.G)
        removed_zext_eq = process_root_zext_eq_only(visitor.G)

        if dedup:
            if is_duplicate_graph(visitor.G, seen_graphs):
                continue
        # Save the output to the specified directory
        output_file = os.path.join(output_dir, "output_graph_" + function_name + "_" + str(i) + ".dot")
        current_dir = os.getcwd() 
        if (removed):
            logging.info(f"{current_dir}/{output_file} - removed is True")
        if (removed_zext):
            logging.info(f"{current_dir}/{output_file} - removed_zext is True")
        if (removed_sub):
            logging.info(f"{current_dir}/{output_file} - removed_sub is True")
        write_dot(visitor.G, output_file)

        seen_graphs.append(visitor.G)



if __name__ == "__main__":
    kquery_expression = r"""(Extract w32 0 (Mul w64 (Add w64 (Mul w64 3
                                           (SExt w64 N0:(ReadLSB w32 0 unnamed_1)))
                                  (SExt w64 (SRem w32 N0 4)))
                         (SExt w64 (ReadLSB w32 0 symbolic_var))))"""

    expressions = [
        kquery_expression
    ]          
    convert_kquery_to_graph(expressions, "abc", "text", [])

