from antlr4 import *

from KqueryLexer import KqueryLexer 
from KqueryListener import KqueryListener
from KqueryParser import KqueryParser
from KqueryVisitor import KqueryVisitor
from networkx.drawing.nx_pydot import write_dot


import networkx as nx

class Node:
    def __init__(self, value, type_value):
        self.value = value
        self.type_value = type_value
        self.children = [] # List of Nodes
            

    def __str__(self):
        desc = f"{self.value}"
        if len(self.type_value) > 0:
            desc = desc + f" [type = {self.type_value}]"
        return desc


class KqueryASTVisitor(KqueryVisitor):

    def __init__(self):
        self.definition_map = {} # Map of definition to Node
        self.G = nx.DiGraph()

    def visitIdentifier(self, ctx):
        identifier = ctx.getText()
        print("identifier: " + identifier)
        if identifier in self.definition_map:
            node = self.definition_map[identifier]
            return node
        return Node(identifier, "")

    def visitNumber(self, ctx):
        number = ctx.getText()
        return Node(number, "")

    def visitDefinition(self, ctx):
        print("In definition")
        # Create the node and populate it in the definition_map
        # definition: IDENTIFIER ':' expr;
        identifier = ctx.getChild(0).getText()
        definition = self.visit(ctx.getChild(2))
        self.definition_map[identifier] = definition
        return definition

    def visitNumber_list(self, ctx):
        # number_list: NUMBER | NUMBER ',' number_list;
        node = Node("number_list", "")
        self.G.add_node(node)
        if len(ctx.getChildCount()) == 1:
            number = visit(ctx.getChild(0))
            node.children.append(number)
            self.G.add_edge(node, number)
        else:
            child_number = self.visit(ctx.getChild(0))
            child_number_list = self.visit(ctx.getChild(2))

            node = Node("NumberList", "")
            node.children.append(child_number)
            node.children.append(child_number_list)

            self.G.add_node(node)
            self.G.add_edge(node, child_number)
            self.G.add_edge(node, child_number_list)
        return node

    def visitArray_initializer(self, ctx):
        # array_initializer: 'symbolic' | '[' number_list ']';
        node = Node("array_initializer", "")
        self.G.add_node(node)
        if ctx.getChildCount() == 1:
            symbolic = ctx.getChild(0).getText()
            child = Node(symbolic, "")
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
        node = Node(array, identifier)
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

        print("expr1 = " + expr1.getText())
        print("expr2 = " + expr2.getText())
        child_node1 = self.visit(expr1)
        child_node2 = self.visit(expr2)
        
        node = Node(expr_kind, value_type)
        node.children.append(child_node1)
        node.children.append(child_node2)

        self.G.add_node(node)
        self.G.add_edge(node, child_node1)
        self.G.add_edge(node, child_node2)
        return node

    def visitBitwise_expr(self, ctx):
        # bitwise_expr: '(' bitwise_expr_kind expr expr ')';
        expr_kind = ctx.getChild(1).getText()
        expr1 = ctx.getChild(2)
        expr2 = ctx.getChild(3)

        print("expr1 = " + expr1.getText())
        print("expr2 = " + expr2.getText())
        child_node1 = self.visit(expr1)
        child_node2 = self.visit(expr2)
        
        node = Node(expr_kind, "")
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
            node = Node(expr_kind, value_type)

            child1 = self.visit(ctx.getChild(3))
            child2 = self.visit(ctx.getChild(4))
            
            node.children.append(child1)
            node.children.append(child2)
            self.G.add_edge(node, child1)
            self.G.add_edge(node, child2)
        else:
            node = Node(expr_kind, "")

            child1 = self.visit(ctx.getChild(2))
            child2 = self.visit(ctx.getChild(3))
            
            node.children.append(child1)
            node.children.append(child2)
            self.G.add_edge(node, child1)
            self.G.add_edge(node, child2)
        return node

    def visitBv_expr(self, ctx):
        pass


    def visitExtension_expr(self, ctx):
        pass

    def visitRead_expr(self, ctx):
        # read_expr: '(' read_expr_kind type expr version ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()


        child = self.visit(ctx.getChild(3))
        version = self.visit(ctx.getChild(4))
        
        node = Node(expr_kind, value_type)

        self.G.add_node(node)
        node.children.append(child)
        node.children.append(version)

        self.G.add_edge(node, child)
        self.G.add_edge(node, version)

    def visitSelect_expr(self, ctx):
        # select_expr : '(' select_expr_kind type expr expr expr ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        node = Node(expr_kind, value_type)

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
            node = Node(expr_kind, value_type)
            expr = ctx.getChild(3)
            child = self.visit(expr)
            node.children.append(child)
            self.G.add_node(node)
            self.G.add_edge(node, child)
        else:
            node = Node(expr_kind, "")
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

        node = Node(expr_kind, value_type)
        node.children.append(child1)
        node.children.append(child2)

        
        self.G.add_node(node)
        self.G.add_edge(node, child1)
        self.G.add_edge(node, child2)
        return node


    def visitVersion(self, ctx):
        # We don't parse version any deeper. TODO?
        version = ctx.getText()
        node = Node(version, "")
        return node

    def visitExpr(self, ctx):
        print(str(type(ctx)) + " : " + ctx.getText())
        if ctx.getChildCount() > 1:
            for i in range(ctx.getChildCount()):
                child = ctx.getChild(i)
                self.visit(ctx.getChild(i))
        elif ctx.getChildCount() == 1:
            return self.visit(ctx.getChild(0))
        else:
            return self.visit(ctx)
       
    
    """
    def exitExpr(self, ctx):
        print("Exited expr")
    """


if __name__ == "__main__":
    expressions = [
     "array foo[] : w8 -> w1 = [ true, false, false, true ]",
     "(Read w8 0 small_array)",
     "(Read w8 1 [1=0xff] @ small_array)",
     "(ReadLSB w32 0 d)",
     "(Add w32 (ReadLSB w32 4 sptr) d)",
     "(Add w32 N0:(ReadLSB w32 4 sptr) N0)",
     "(Neg (Add w32 N0:(ReadLSB w32 4 sptr) N0))",
     "(And (Add w32 N0:(ReadLSB w32 4 sptr) N0) (ReadLSB w32 0 d))",
     "(Read w8 1 U0)",
     "array small_array[2] : w32 -> w8 = symbolic"
     "array const_array[] : w32 -> w8 = [5,6]"]

    expression = expressions[-1] 

    input_stream = InputStream(expression)
    lexer = KqueryLexer(input_stream)
    token_stream = CommonTokenStream(lexer)
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
    print(visitor.G)
    write_dot(visitor.G, "output_graph.dot")
