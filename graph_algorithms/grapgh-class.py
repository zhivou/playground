class Grapgh:
    def __init__(self, nodes: Node):
        self.nodes = nodes

class Node:
    def __init__(self, name, children: Node) :
        self.name = name
        self.children = children

nodes = [
    Node(6, [Node(5, None)]),
    Node(5, [Node(4, None)]),
    Node(4, [Node(6, None)]),
    Node(0, [Node(1, None)]),
    Node(1, [Node(2, None)]),
    Node(2, [Node(0, None), Node(3, None)]),
    Node(3, [Node(2, None)])
]
g = Grapgh(nodes)