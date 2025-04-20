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
        if ctx.getChildCount() == 1:
            node = Node(ctx.getChild(0).getText(), "", self.G)
            return node
        else:
            child_number = Node(ctx.getChild(0).getText(), "", self.G)
            child_number_list = self.visit(ctx.getChild(2))

            node = Node("NumberList", "", self.G)

            node.children.append(child_number)
            node.children.append(child_number_list)
            self.G.add_edge(node.node_id, child_number.node_id)
            self.G.add_edge(node.node_id, child_number_list.node_id)
        return node

    def visitArray_initializer(self, ctx):
        # array_initializer: 'symbolic' | '[' number_list ']';
        node = Node("array_initializer", "", self.G)
        if ctx.getChildCount() == 1:
            symbolic = ctx.getChild(0).getText()
            child = Node(symbolic, "", self.G)
            self.G.add_edge(node.node_id, child.node_id)
        else:
            number_list = self.visit(ctx.getChild(1))
            node.children.append(number_list)
            self.G.add_edge(node.node_id, number_list.node_id)

        return node

    def visitArray_declaration(self, ctx):
        # array_declaration: 'array' IDENTIFIER '[' NUMBER? ']' ':' TYPE '->' TYPE '=' array_initializer;
        array = ctx.getChild(0).getText()
        identifier = ctx.getChild(1).getText()
        node = Node(array, identifier, self.G)

        if ctx.getChildCount() == 11:
            array_initializer_index = 10
        else:
            array_initializer_index = 9
        array_initializer = self.visit(ctx.getChild(array_initializer_index))
        
        node.children.append(array_initializer)
        self.G.add_edge(node.node_id, array_initializer.node_id)

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

        # self.G.add_node(node)
        self.G.add_edge(node.node_id, child_node1.node_id)
        self.G.add_edge(node.node_id, child_node2.node_id)
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

        # self.G.add_node(node)
        self.G.add_edge(node.node_id, child_node1.node_id)
        self.G.add_edge(node.node_id, child_node2.node_id)
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
            self.G.add_edge(node.node_id, child1.node_id)
            self.G.add_edge(node.node_id, child2.node_id)
        else:
            node = Node(expr_kind, "", self.G)

            child1 = self.visit(ctx.getChild(2))
            child2 = self.visit(ctx.getChild(3))
            
            node.children.append(child1)
            node.children.append(child2)
            self.G.add_edge(node.node_id, child1.node_id)
            self.G.add_edge(node.node_id, child2.node_id)
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
                self.G.add_edge(node.node_id, child1.node_id)
            if child2:
                self.G.add_edge(node.node_id, child2.node_id)
        else:
            node = Node(expr_kind, "", self.G)

            child1 = self.visit(ctx.getChild(2))
            child2 = self.visit(ctx.getChild(3))
            
            node.children.append(child1)
            node.children.append(child2)
            self.G.add_edge(node.node_id, child1.node_id)
            self.G.add_edge(node.node_id, child2.node_id)
        return node


    def visitExtension_expr(self, ctx):
        # extension_expr: '(' extension_expr_kind type expr ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        child = self.visit(ctx.getChild(3))
        
        node = Node(expr_kind, value_type, self.G)

        node.children.append(child)

        self.G.add_edge(node.node_id, child.node_id)
        return node

    def visitRead_expr(self, ctx):
        # read_expr: '(' read_expr_kind type expr version ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()


        child = self.visit(ctx.getChild(3))
        version = self.visit(ctx.getChild(4))
        
        node = Node(expr_kind, value_type, self.G)

        node.children.append(child)
        node.children.append(version)

        self.G.add_edge(node.node_id, child.node_id)
        self.G.add_edge(node.node_id, version.node_id)
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

        self.G.add_edge(node.node_id, child1.node_id)
        self.G.add_edge(node.node_id, child2.node_id)
        self.G.add_edge(node.node_id, child3.node_id)

    def visitNeg_expr(self, ctx):
        # neg_expr: '(' neg_expr_kind (type)? expr ')'
        expr_kind = ctx.getChild(1).getText()
        if ctx.getChildCount() == 5: 
            value_type = ctx.getChild(2).getText()
            node = Node(expr_kind, value_type, self.G)
            expr = ctx.getChild(3)
            child = self.visit(expr)
            node.children.append(child)
            self.G.add_edge(node.node_id, child.node_id)
        else:
            node = Node(expr_kind, "", self.G)
            expr = ctx.getChild(2)
            child = self.visit(expr)
            node.children.append(child)
            self.G.add_edge(node.node_id, child.node_id)
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

        self.G.add_edge(node.node_id, child1.node_id)
        self.G.add_edge(node.node_id, child2.node_id)
        return node


    def visitVersion(self, ctx):
        # We don't parse version any deeper. TODO?
        version = ctx.getText()
        if not extract_unique_numbers_from_string(version) == "":
            version = "update list" + extract_unique_numbers_from_string(version)
        elif len(version) > 20:
            version = "abnormal update list"
        node = Node(version, "", self.G)
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
        Node.reset_node_id()
        expression = expressions[i]
    
        input_stream = InputStream(expression)
        lexer = KqueryLexer(input_stream)
        token_stream = CommonTokenStream(lexer)
        # lazy init, need to fill the token
        token_stream.fill()
        parser = KqueryParser(token_stream)
        
        tree = parser.prog()
        # print(tree.toStringTree(recog=parser))

        # Create and apply the custom visitor
        print(f"processing expression {i}")
        visitor = KqueryASTVisitor()
        try:
            visitor.visit(tree)
        except Exception as e:
            print(f"error expression {expression}")
            raise RuntimeError(f"error in expression {i}") from e

        print(f"finish processing expression {i}")
        removed = process_graph(visitor.G)
        removed_zext = process_graph_ZExt(visitor.G)
        removed_sub = process_graph_sub(visitor.G)
        removed_empty_extract = process_extract_with_single_node_subtree(visitor.G)
        removed_zext_eq = process_root_zext_eq_only(visitor.G)

        # if dedup:
        #     if is_duplicate_graph(visitor.G, seen_graphs):
        #         continue
        # Save the output to the specified directory
        output_file = os.path.join(output_dir, "output_graph_" + function_name + "_" + str(i) + ".dot")
        # if (removed):
        #     logging.info(f"{current_dir}/{output_file} - removed is True")
        # if (removed_zext):
        #     logging.info(f"{current_dir}/{output_file} - removed_zext is True")
        # if (removed_sub):
        #     logging.info(f"{current_dir}/{output_file} - removed_sub is True")
        write_dot(visitor.G, output_file)

        # seen_graphs.append(visitor.G)



if __name__ == "__main__":
    kquery_expression = r"""(Read w8 (Extract w32 0 (Add w64 18446742474907975680
                                  (ReadLSB w64 0 opt_buf)))
          [7=0, 6=0, 5=0, 4=0, 3=0, 2=0, 1=0, 0=0] @ ptr2)"""

    expressions = [
        kquery_expression,
    ]          
    convert_kquery_to_graph(expressions, "abc", "text", [])

