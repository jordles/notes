# Linked Lists

A data structure that contains a head, tail, and length property. Linked Lists consist of nodes, each node contains a value and a pointer/reference to the next node. 

[Singly Linked Lists](#singly-linked-lists)  
[Doubly Linked Lists](#doubly-linked-lists)
***
## Singly Linked Lists

```js
// making our own singly linked list
class ListNode{
  constructor(val){
    this.value = val;
    this.next = null;
  }
}

class LinkedList{
  constructor(val){
    this.head = new ListNode(val);
    this.tail = this.head;
    this.length = 1;
  }

  /** also viable
   * constructor(val){
    this.head = null;
    this.tail = null;
    this.length = 0;
  }
   */

  push(val){
    const node = new ListNode(val);
    if(!this.head){
      this.head = node;
      this.tail = node;
    }
    else{
      this.tail.next = node;
      this.tail = node;
    }
    
    this.length++;
    return;
  }

  pop(){
    if(!this.head){
      return null;
    }
    let current = this.head;
    let newTail = current;
    while(current.next){ // we have to start from the head, since we can't only traverse a singly linked list backwards
      newTail = current;
      current = current.next;
    }
    this.tail = newTail;
    this.tail.next = null;
    this.length--;
    if(this.length === 0){
      this.head = null;
      this.tail = null;
    }
    return current;
  // the node is automatically deleted from memory in the garbage collector for javascript. This would not be the case for languages like c or c++.
  }

  unshift(val){
    const node = new ListNode(val);
    if(!this.head){
      this.head = node;
      this.tail = node;
    }
    else{
      node.next = this.head;
      this.head = node;
    }
    this.length++;
    return;
  }

  shift(){
    if(!this.head){
      return null;
    }

    let node = this.head;
    if(this.length === 1){
      this.head = null;
      this.tail = null;
    }
    else{
      this.head = this.head.next;
      node.next = null; // we are deleting the node, but garbage collector will not be able to delete it from memory if we don't remove any pointers to it
    }
    
    this.length--;
    return node;
  }

  get(index){
    if(index < 0 || index >= this.length){
      return 'index out of range';
    }
    let current = this.head;
    for(let i = 0; i < index; i++){
      current = current.next;
    }
    return current;
  }

  search(val){
    let current = this.head;
    while(current){
        if(current.value === val){
            return current;
        }
        current = current.next;
    }
    return null;
  }

  set(index, val){
    let node = this.get(index);
    if(node){
      node.value = val;
    }
    return node;
  }

  insert(index, val){
    if(index < 0 || index > this.length){
      return 'index out of range';
    }
    if(index === 0){
      return this.unshift(val);
    }
    if(index === this.length){
      return this.push(val);
    }

    let node = new ListNode(val);
    const temp = this.get(index - 1);
    node.next = temp.next;
    temp.next = node;
    this.length++;
    return;
  }

  remove(index){
    if(index < 0 || index >= this.length){
      return 'index out of range';
    }
    if(index === 0){
      return this.shift();
    }
    if(index === this.length - 1){
      return this.pop();
    }
    const prevNode = this.get(index - 1);
    const node = prevNode.next;
    prevNode.next = node.next;
    node.next = null;
    this.length--;
    return node;
  }


  get getHead(){
    return this.head;
  }
  
  get getTail(){
    return this.tail;
  }

  get size(){
    return this.length;
  }

  clear(){
    this.head = null;
    this.tail = null;
    this.length = 0;
  }

  reverse(){
    //reverse the head and tail
    const temp = this.head;
    this.head = this.tail;
    this.tail = temp;

    // reverse the arrow direction of each node
    let prev = null;
    let current = temp;
    while(current){ //current and temp follow each other
      current = temp.next; // current moves to the next node
      temp.next = prev; //original head gets the values of null initially
      prev = temp; //the prev now becomes the next node, so our next node can point to the previous node
      temp = current; // the original head now becomes the next node
    }
    return this;

  }
}

```

***

## Doubly Linked Lists
```js
class ListNode{
  constructor(val){
    this.prev = null;
    this.value = val;
    this.next = null;
  }
}

class DoublyLinkedList{
  constructor(val){
    this.head = new ListNode(val);
    this.tail = this.head;
    this.length = 1;
  }

  push(val){
    const node = new ListNode(val);
    if(!this.head){
      this.head = node;
      this.tail = node;
      this.length++;  
      return 
    }
    this.tail.next = node;
    node.prev = this.tail;
    this.tail = node; 
    this.length++;

    return node;
  }

  pop(){
    if(!this.head){
      return null;
    }
    
    const node = this.tail;

    if(this.length === 1){
      this.head = null;
      this.tail = null;
    }
    else{
      this.tail = this.tail.prev;
      this.tail.next = null;
    }
    
    this.length--;
    return node;
  }

  unshift(val){
    const node = new ListNode(val);
    if(!this.head){
      this.head = node;
      this.tail = node;
    }
    else{
      this.head.prev = node;
      node.next = this.head;
      this.head = node;
    }
    
    this.length++;
    return;
  }

  shift(){
    if(!this.head){
      return null;
    }
    const node = this.head;

    if(this.length === 1){
      this.head = null;
      this.tail = null;
    }
    this.head = this.head.next;
    this.head.prev = null;

    node.next = null; // we are deleting the node, but garbage collector will not be able to delete it from memory if we don't remove the any pointers attached to it. 
    this.length--;
    return node;
  }

  get(index){
    if(index < 0 || index >= this.length){
      return 'index out of range';
    }
    let current = this.head;
    for(let i = 0; i < index; i++){
      current = current.next;
    }
    return current;
  }

  set(index, val){
    if(index < 0 || index >= this.length){
      return 'index out of range'
    }
    let current = this.get(index);
    current.value = val;
    return current;
  }

  insert(index, val){
    if(index < 0 || index >= this.length){
      return 'index out of range'
    }

    if(index === 0){
      return this.unshift(val);
    }

    if(index === this.length - 1){
      return this.push(val);
    }

    const node = new ListNode(val);
    let current = this.get(index);
    let prevNode = current.prev;
    prevNode.next = node;
    current.prev = node;
    node.prev = prevNode;
    node.next = current;
    length++;
    return;
  }

  get getHead(){
    return this.head;
  }
  
  get getTail(){
    return this.tail;
  }

  get size(){
    return this.length;
  }

  clear(){
    this.head = null;
    this.tail = null;
    this.length = 0;
  }

  reverse(){
    let current = this.head;
    let prev = null;
    while(current){
      let next = current.next;
      current.next = prev;
      current.prev = next;
      prev = current;
      current = next;
    }
    this.head = prev;
    return this;
  }
}
```
