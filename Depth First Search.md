# Depth First Search

| Traversal	| Sequence | Root Position | Common Use Case | 
| --- | --- | --- |--- |
| Preorder | Root → Left → Right | First | Copying a tree, prefix expression evaluation
| Inorder	| Left → Root → Right	| Middle | Sorted traversal of a BST
| Postorder | Left → Right → Root	| Last | Deleting a tree, postfix expression evaluation 

Inside our [Binary Tree](<Binary Search Tree.md>) :

```js
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
```
