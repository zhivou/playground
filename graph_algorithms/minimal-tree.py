#
# Given sorted, increasing inorder Array of int[]
# => BST(Binary Search Tree)
#

class TreeNode:
    def __init__(self, value):
        self.value = value
        self.start = None
        self.end = None

def create_minimal_bst(self, array):
    if not array:
        return None
    
    mid = int(len(array) / 2)

    ## Recurtion is starting here. It will continue untill
    ## all nested elements in array placed in the BST.
    ##
    ## 001: Passing full array [1, 2, 3, 4, 5, 6, 7]
    ## 002: Finding Mid node -> 4
    ## 003: Finding it's left and right arrays and recursevly calling
    ##      the same method. L=[1, 2, 3] R=[5, 6, 7]
    ## 004: Passing Left array [1,2,3]
    ## 005: Finding Mid of      ^^^ -> 2
    ## 006: Finding it's left and right arrays and recursevly calling
    ##      the same method. L=[1] R=[3]
    ## 007: Passing Left Array [1]
    ## 008: Finding Mid of [1] -> 1
    ## 009: Finding it's left and right arrays and recursevly calling
    ##      the same method. L=[] R=[]
    ## 010: Passing Left Array []
    ## 011: Returning bcause empty
    ## 012: Passing Right Array [3]
    ## 013: Finding Mid of [3] -> 3
    ## 014: Finding it's left and right arrays and recursevly calling
    ##      the same method. L=[] R=[]
    ## ....
    ## 999: Will stop when all array elements are iterated.
    node = TreeNode(array[mid])
    node.left = create_minimal_bst(arr[:mid])
    node.right = create_minimal_bst(arr[mid+1:])

    return mid

arr = [1, 2, 3, 4, 5, 6, 7]