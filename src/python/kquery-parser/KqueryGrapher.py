from antlr4 import *

from KqueryLexer import KqueryLexer 
from KqueryParser import KqueryParser
from KqueryVisitor import KqueryVisitor
from networkx.drawing.nx_pydot import write_dot
import os
import sys
sys.setrecursionlimit(5000)
from PostProcess import process_graph
from PostProcess import process_graph_ZExt
from PostProcess import process_graph_sub
from PostProcess import process_root_zext_eq_only
from PostProcess import process_extract_with_single_node_subtree
from Node import Node

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

def extract_and_relabel_subtree(G: nx.DiGraph, root) -> nx.DiGraph:
    """
    1) Walk G in pre-order (root, then each successor in insertion order).
    2) Assign new labels 0,1,2,… in the order we see them.
    3) Copy over all node- and edge-attributes.
    """
    if root not in G:
        raise KeyError(f"Node {root!r} is not in the graph")

    H = nx.DiGraph()
    mapping = {}          # old_id -> new_label
    next_label = 0        # counter for new labels

    def dfs(u):
        nonlocal next_label

        # 1) assign a new label to u and copy its attrs
        mapping[u] = next_label
        H.add_node(next_label, **G.nodes[u])
        my_label = next_label
        next_label += 1

        # 2) visit each child *in the order it was originally inserted*
        for v in G.successors(u):
            dfs(v)
            # after v has a label, copy the edge over
            H.add_edge(my_label, mapping[v], **G.get_edge_data(u, v))

    dfs(root)
    return H

def is_duplicate_graph(new_graph, seen_list):
    for old_graph in seen_list:
        ged = compare_graph_optimize_edit_distance(new_graph, old_graph, "", True, False, 3)
        if ged == 0:
            return True
    return False

class KqueryASTVisitor(KqueryVisitor):

    def __init__(self):
        self.definition_map = {} # Map of definition to Node
        self.G = nx.DiGraph()
        self.G.update_list_value_node = []

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
            node.children.append(child)
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
        if ctx.getChildCount() == 6:
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
        elif ctx.getChildCount() == 5:
            expr1 = ctx.getChild(2)
            expr2 = ctx.getChild(3)

            child_node1 = self.visit(expr1)
            child_node2 = self.visit(expr2)

            node = Node(expr_kind, "", self.G)
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

        return node

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


    def visitUpdate_list(self, ctx):
        """
        update_list : expr '=' expr (',' expr '=' expr)*;
        The expr = expr on the left most is the most recent one.
        We will retain this convention.
        """
        update_node = Node("update_list", "", self.G)
        # print("Update list: " + ctx.getText())

        i = 0
        while i < ctx.getChildCount():
            # If it is a comma, skip it
            if ctx.getChild(i).getText() == ",":
                i += 1
                continue
            sub_node = Node("update_list_sub_node", "", self.G)
            lhs_expr_child = ctx.getChild(i)
            update_node.children.append(sub_node)
            self.G.add_edge(update_node.node_id, sub_node.node_id)
            rhs_expr_child = ctx.getChild(i + 2)
            # print("LHS: " + lhs_expr_child.getText())
            # print("RHS: " + rhs_expr_child.getText())
            if isinstance(lhs_expr_child, KqueryParser.ExprContext):
                lhs_expr_node = self.visit(lhs_expr_child)
                rhs_expr_node = self.visit(rhs_expr_child)
                self.G.update_list_value_node.append((rhs_expr_child.getText(), rhs_expr_node.node_id))
                sub_node.children.append(lhs_expr_node)
                sub_node.children.append(rhs_expr_node)

                # Add edges
                self.G.add_edge(sub_node.node_id, lhs_expr_node.node_id)
                self.G.add_edge(sub_node.node_id, rhs_expr_node.node_id)
            i += 3
        return update_node
           

    def visitVersion(self, ctx):
        """
update_list : expr '=' expr (',' expr '=' expr)*;
version: '[' (update_list)? ']' '@' version
       | IDENTIFIER (':' expr)?
       ;
        """
        version_name = ctx.getText()
        version_node = None
        if not version_name or ctx.getChildCount() > 1:
            version_node = Node("version", "", self.G)
        else:
            version_node = Node(version_name, "", self.G)
        for i in range(ctx.getChildCount()):
            child = ctx.getChild(i)
            if isinstance(child, KqueryParser.Update_listContext):
                update_list_node = self.visit(child)
                version_node.children.append(update_list_node)
                self.G.add_edge(version_node.node_id, update_list_node.node_id)
            if isinstance(child, KqueryParser.IdentifierContext):
                identifier_node = self.visit(child)
                version_node.children.append(identifier_node)
                self.G.add_edge(version_node.node_id, identifier_node.node_id)
            if isinstance(child, KqueryParser.ExprContext):
                expr_node = self.visit(child)
                version_node.children.append(expr_node)
                self.G.add_edge(version_node.node_id, expr_node.node_id)
            if child.getText() == "@":
                version_target = ctx.getChild(i + 1).getText()
                final_node = Node(f'"target : {version_target}"', "", self.G)
                version_node.children.append(final_node)
                self.G.add_edge(version_node.node_id, final_node.node_id)

        return version_node

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

def convert_kquery_to_graph(expressions, function_name, output_dir, seen_graphs):
    # Create the directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    expression_index = 0
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
        seen_graphs.add(expression)
        print(f"finish processing expression {i}")

        """
        if len(visitor.G.update_list_value_node):
            for idx, (current_exp, current_node) in enumerate(visitor.G.update_list_value_node):
                if current_exp not in seen_graphs:
                    output_file = os.path.join(output_dir,
                                               "output_graph_" + function_name + "_" + str(
                                                   expression_index + idx) + ".dot")
                    new_graph = extract_and_relabel_subtree(visitor.G, current_node)
                    seen_graphs.add(current_exp)
                    write_dot(new_graph, output_file)
                    # Generate the corresponding PDF using Graphviz
            expression_index = expression_index + len(visitor.G.update_list_value_node)
        else:
        """
        # TODO : @gabe : add to a else branch after finish development handle updatelist
        removed = process_graph(visitor.G)
        removed_zext = process_graph_ZExt(visitor.G)
        removed_sub = process_graph_sub(visitor.G)
        removed_empty_extract = process_extract_with_single_node_subtree(visitor.G)
        removed_zext_eq = process_root_zext_eq_only(visitor.G)
        output_file = os.path.join(output_dir, "output_graph_" + function_name + "_" + str(expression_index) + ".dot")
        write_dot(visitor.G, output_file)
        """
        # convert to pdf
        png_file = os.path.join(output_dir, "output_graph_" + function_name + "_" + str(expression_index) + ".png")
        os.system(f"dot -Tpng {output_file} -o {png_file}")
        """
        expression_index += 1

if __name__ == "__main__":
    kquery_expression = r"""(Read w8 (Extract w32 0 (Add w64 18446613489242865665
                                  N0:(ReadLSB w64 0 input_argument_1)))
          [(Extract w32 0 (Add w64 18446613489242865664 N0))=(Read w8 (Extract w32 0 (Add w64 18446613534340022272
                                                                                              (ReadLSB w64 0 input_argument_4)))
                                                                      input_argument_4)] @ input_argument_2)"""

    expressions = [
        kquery_expression,
    ]          
    convert_kquery_to_graph(expressions, "abc", "text", set())

