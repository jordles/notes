# Breadth First Search

An algorithm that explores/searches the entire tree level by level.

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

  BFS(){ // Breadth First Search, meant to be used for traversing the tree and getting the values of each node
    let current = this.root;
    let data = [];
    let queue = [];

    queue.push(current);

    while(queue.length){
      current = queue.shift();
      data.push(current.value);
      if(current.left) queue.push(current.left);
      if(current.right) queue.push(current.right);
    }

    return data;
  }
}
```
