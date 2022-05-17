#  Breadth-First Search(Traversal)
# 
#  Python3 Program to print BFS traversal
#  from a given source vertex. BFS(int s)
#  traverses vertices reachable from s.
from collections import defaultdict

class Grapgh():
    def __init__(self):
        self.graph = defaultdict(list)

grapgh = Grapgh()
grapgh.graph
