from KqueryLexer import KqueryLexer 
from KqueryListener import KqueryListener
from KqueryParser import KqueryParser
from KqueryVisitor import KqueryVisitor


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