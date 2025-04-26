from KqueryLexer import KqueryLexer
from KqueryListener import KqueryListener
from KqueryParser import KqueryParser
from KqueryVisitor import KqueryVisitor
import re


class Node:

    NODE_ID = 0

    @classmethod
    def reset_node_id(cls):
        cls.NODE_ID = 0

    def process_value(self, value):
        if bool(re.fullmatch(r'\d{20}', value)):
            return "KLEE_Offset"
        elif value.startswith("const_arr"):
            return "const_arr"
        return value

    def __init__(self, value, type_value, G):
        # We maintain a reference to the networkx graph in each Node
        self.G = G

        # NetworkX seems to need an unique ID per node, or it "merges" the two nodes
        # with same value.
        Node.NODE_ID+=1
        self.node_id = Node.NODE_ID
        self.value = self.process_value(value)
        self.type_value = type_value
        self.children = [] # List of Nodes
        attr = {}

        if self.value:
            attr = {'label': self.value}
        if self.type_value:
            attr['type'] = self.type_value
        self.G.add_node(self.node_id, **attr)

    def deep_copy(self):
        # When we encounter a definition (NO, for example)
        # We will deep copy the tree that is rooted at that definition
        # print("Calling deep copy for " + str(self))
        copied_node = Node(self.value, self.type_value, self.G)
        for child in self.children:
            copied_child = child.deep_copy()
            copied_node.children.append(copied_child)
            self.G.add_edge(copied_node.node_id, copied_child.node_id)
        return copied_node