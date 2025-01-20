# Binary Search Tree

A type of binary tree used to organize data in a sorted way. It works like a filing cabinet where you can efficiently search, add, or remove items.

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
