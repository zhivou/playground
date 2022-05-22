from collections import defaultdict

class Grapgh:
    def __init__(self, V, nodes = defaultdict(list)):
        """
        We need V here only to know the size of the graph, 
        we can't just understand it by looking at the Adjacency 
        list as it can have loops.
        """
        self.V = V
        self.nodes = nodes

    def add_edge(self, u, v):
        self.nodes[u].append(v)

    def is_reachable(self, u, v):
        """
        We going to use visited array as mapping for visited nodes,
        this will keep track of possible loops.
        index will be eq to node.value
        value will be boolean representing visted or not nodes
        """
        if(u == v):
            return True

        visited = [False] * self.V
        queue = []
        route = []
        
        visited[u] = True
        queue.append(u)
        
        while queue:
            n = queue.pop(0)

            # If visiting node is eq to v it means it was
            # reached and can return True as reachable node.
            if(n == v):
                return True
            
            for i in self.nodes[n]:
                if (visited[i] == False):
                    visited[i] = True
                    queue.append(i)
        
        return False
        

g = Grapgh(4)
g.add_edge(0, 1)
g.add_edge(0, 2)
g.add_edge(1, 2)
g.add_edge(2, 0)
g.add_edge(2, 3)
g.add_edge(3, 3)

g.is_reachable(2,3)

# Can also be represented as a Node class.
class Node:
    def __init__(self, name, children: Node) :
        self.name = name
        self.children = children

