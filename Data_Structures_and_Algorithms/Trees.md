# Trees

a data structure that stores data in a hierarchical way. It represents a collection of elements called nodes, connected by edges called links or branches that form a tree-like structure. It allows you to store and retrieve data in constant time. It also allows you to delete and update data in constant time.

__Root__
It is the topmost node of a tree.

__Leaf Node__ 
A leaf node is a node that has no children.

__Edge__
It is the link between any two nodes.

__Height of a Node__
The height of a node is the number of edges from the node to the deepest leaf (ie. the longest path from the node to a leaf node).

__Depth of a Node__
The depth of a node is the number of edges from the root to the node.

__Height of a Tree__
The height of a Tree is the height of the root node or the depth of the deepest node.

![](https://cdn.programiz.com/sites/tutorial2program/files/nodes-edges_0.png)


## Full Binary Tree

has no children (leaf node) or exactly two children. 

![](https://cdn.programiz.com/sites/tutorial2program/files/full-binary-tree_0.png)

## Perfect Binary Tree - Full + Balance 
Balance - All the leaf nodes are at the same level (distance from the root) This means the tree is completely filled with no gaps at any level. 

![](https://www.programiz.com/sites/tutorial2program/files/perfect-binary-tree_0.png)

## Complete Binary Tree 

A complete binary tree is a binary tree in which all the levels are completely filled except possibly the lowest one, which is filled from the left.

A complete binary tree is just like a full binary tree, but with two major differences:
- All the leaf elements must lean towards the left.
- The last leaf element might not have a right sibling i.e. a complete binary tree doesn't have to be a full binary tree.

![](https://cdn.programiz.com/sites/tutorial2program/files/complete-binary-tree_0.png)

## Balanced Binary Tree

A balanced binary tree is a binary tree in which the difference between the heights of the two subtrees of any node is not more than one.

Conditions for a height-balanced binary tree:
- difference between the left and the right __subtree__ for any node is not more than one
- the left subtree is balanced
- the right subtree is balanced

To calculate a node's __df (balance factor)__:  
`| height of left subtree - height of right subtree |`  
If the df is more than 1, then we know its not balanced.

![](https://cdn.programiz.com/sites/tutorial2program/files/balanced-binary-tree.png)
![](https://cdn.programiz.com/sites/tutorial2program/files/unbalanced-binary-tree.png)

This second one is unbalanced, the balance factor of the root node is 2. 3 from the left subtree and 1 from the right subtree.


Almost Full Levels - All levels except possibly the last one are completely filled with nodes.
Left Leaning Last Level - The last level is filled with nodes from the left side as much as possible. There might be empty spaces on the right side. 

[Binary Search Tree (BST)](<Binary Search Tree.md>) - A type of binary tree used to organize data in a sorted way. It works like a filing cabinet where you can efficiently search, add, or remove items.

[AVL Tree](<AVL Tree.md>) - A self-balancing balanced binary search tree that strictly enforces balance after every insertion/deletion

[Breadth First Search (BFS)](<Breadth First Search.md>) - an algorithm that explores/searches the entire tree level by level. The running time is linear.

[Depth First Search (DFS)](<Depth First Search.md>) - an algorithm that explores/searches the entire tree level by level. The running time is linear.