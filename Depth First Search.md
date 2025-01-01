# Depth First Search

| Traversal	| Sequence | Root Position | Common Use Case | 
| --- | --- | --- |--- |
| Preorder | Root → Left → Right | First | Copying a tree, prefix expression evaluation
| Inorder	| Left → Root → Right	| Middle | Sorted traversal of a BST
| Postorder | Left → Right → Root	| Last | Deleting a tree, postfix expression evaluation 


```js
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
  // DFS (PreOrder)

  dfsPreOrder(current = this.root, data = []){
    if(!current) return data;
    data.push(current.value);
    this.dfsPreOrder(current.left, data);
    this.dfsPreOrder(current.right, data);
    return data;
  }

  dfsInOrder(current = this.root, data = []){
    if(!current) return data;
    this.dfsInOrder(current.left, data);
    data.push(current.value);
    this.dfsInOrder(current.right, data);
    return data;
  }

  dfsPostOrder(current = this.root, data = []){
    if(!current) return data;
    this.dfsPostOrder(current.left, data);
    this.dfsPostOrder(current.right, data);
    data.push(current.value);
    return data;
  }
}
```
