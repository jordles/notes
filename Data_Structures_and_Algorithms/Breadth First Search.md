# Breadth First Search

An algorithm that explores/searches the entire tree level by level.

Inside our [Binary Tree](<Binary Search Tree.md>) :

```js
bfs(){ // Breadth First Search, meant to be used for traversing the tree and getting the values of each node
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
```
```js
bfs( current = this.root, data = []){ //recursive version
  if(!current) return data;
  data.push(current.value);
  queue.push(current.left);
  queue.push(current.right);
  this.bfs(queue.shift(), data);
  return data;
}
```
