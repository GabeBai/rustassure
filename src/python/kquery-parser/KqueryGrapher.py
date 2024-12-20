from antlr4 import *

from KqueryLexer import KqueryLexer 
from KqueryListener import KqueryListener
from KqueryParser import KqueryParser
from KqueryVisitor import KqueryVisitor
from networkx.drawing.nx_pydot import write_dot
import os
import subprocess


import networkx as nx


# Command to generate the classes (need to do this because versions can be different.
# antlr4 -Dlanguage=Python3 -visitor Kquery.g4


class Node:

    NODE_ID = 0
    def __init__(self, value, type_value, G):
        # We maintain a reference to the networkx graph in each Node
        self.G = G

        # NetworkX seems to need an unique ID per node, or it "merges" the two nodes
        # with same value.
        Node.NODE_ID+=1
        self.node_id = Node.NODE_ID
        self.value = value
        self.type_value = type_value
        self.children = [] # List of Nodes
            

    def __str__(self):
        desc = str(self.node_id) + f" [value = {self.value}, "
        if len(self.type_value) > 0:
            desc += f" type = {self.type_value}"
        desc += "]"
        return desc

    def deep_copy(self):
        # When we encounter a definition (NO, for example)
        # We will deep copy the tree that is rooted at that definition
        # print("Calling deep copy for " + str(self))
        copied_node = Node(self.value, self.type_value, self.G)
        for child in self.children:
            copied_child = child.deep_copy()
            copied_node.children.append(copied_child)
            self.G.add_node(copied_child)
            self.G.add_edge(copied_node, copied_child)
        return copied_node


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
        return Node(number, "", self.G)

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
        

def convert_kquery_to_graph(expressions, function_name, output_dir):
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

        """
        listener = KqueryGrapher()
        walker = ParseTreeWalker()
        walker.walk(listener, tree)
        """ 
        # Create and apply the custom visitor
        visitor = KqueryASTVisitor()
        visitor.visit(tree)

        # Save the output to the specified directory
        output_file = os.path.join(output_dir, "output_graph_" + function_name + "_" + str(i) + ".dot")
        write_dot(visitor.G, output_file)

        # Convert to the PNG automatically
        """
        png_cmd = "dot -Tpng " + output_file + " -o " + output_file+".png"
        print(png_cmd)
        result = subprocess.getoutput(png_cmd)
        """



if __name__ == "__main__":
    expressions = [
#         """
# (Extract w16 0 (Or w32 (And w32 (AShr w32 N0:(ZExt w32 (ReadLSB w16 0 unnamed))
#                                            8)
#                                  255)
#                         (Shl w32 (And w32 N0 255) 8)))
#         """
    "(Or w32 (ReadLSB w16 0 unnamed) (ReadLSB w16 0 unnamed))"
    ]          
    convert_kquery_to_graph(expressions, "", "text")

