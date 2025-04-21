# Binary Search Tree

A type of binary tree used to organize data in a sorted way. It works like a filing cabinet where you can efficiently search, add, or remove items.

Binary search tree is a data structure that quickly allows us to maintain a sorted list of numbers.

- It is called a binary tree because each tree node has a maximum of two children.
- It is called a search tree because it can be used to search for the presence of a number in O(log(n)) time.

The properties that separate a binary search tree from a regular binary tree is:

- All nodes of left subtree are less than the root node
- All nodes of right subtree are more than the root node
- Both subtrees of each node are also BSTs i.e. they have the above two properties

| Operation | Best Case Complexity | Average Case Complexity | Worst Case Complexity |
| --- | --- | --- | --- |
| Search | O(log n) | O(log n) | O(n) |
| Insertion | O(log n) | O(log n) | O(n) |
| Deletion | O(log n) | O(log n) | O(n) |

Space Complexity for all operations is `O(n)`

![](https://cdn.programiz.com/sites/tutorial2program/files/bst-vs-not-bst.png)

__In this diagram, 2 is less than its parent node and located on the right side of the parent node. Which is a violation of a binary search tree. If we wanted to add 2 it would have gone on the left subtree of the parent node to the right of 1.__


The logic is we go left of the node if the value is less than the node, and we go right if the value is greater than the node. If that parent node is already full, then we go to the next child node to check if the value is less than or greater than the node.

```js
// making our own binary tree

class TreeNode { //binary tree
	constructor(val) {
		this.value = val;
		this.left = null;
		this.right = null;
	}
}

class BinarySearchTree {
	constructor() {
		this.root = null;
	}

  insert(val){
    const newNode = new TreeNode(val);
    if(!this.root){
      this.root = newNode;
      return;
    }
    let current = this.root;
    while(true){
      if(val === current.value) return undefined; // we don't want to allow duplicates
      if(val < current.value){
        if(!current.left){
          current.left = newNode;
          return;
        }
        current = current.left;
      }
      else{
        if(!current.right){
          current.right = newNode;
          return;
        }
        current = current.right;
      }
    }
  }

  contains(val){
    if(!this.root) return false;
    let current = this.root;

    while(current){
      if(val == current.value) return true;
      if(val < current.value){
        current = current.left;
      }
      else{
        current = current.right;
      }
    }

    return false;
  }
}
```
