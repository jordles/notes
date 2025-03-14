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
    this.length = 1; //recall that length doesnt account for 0 since we start at 1
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

  // shift(){
  //   if(!this.head) return null;
    
  //   let current = this.head;
  //   this.head = this.head.next;
  //   current.next = null;
  //   this.length--; 
  //   if(this.length == 0){
  //       this.head = null;
  //       this.tail = null;
  //   }
  //   return current; 
  // }

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
    if(index < 0 || index > this.length){ //recall that although index is 0 based and length is 1 based, we still can accept this.length itself, since insert is not bound by the limits of the linked list compared to remove. 
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
    // Swap head and tail
    let temp = this.head;
    this.head = this.tail;
    this.tail = temp;

    // Reverse pointers
    let prev = null;
    let current = temp; // Start from the old head (which is stored in temp)
    while (current) {
        let next = current.next; // Store next node
        current.next = prev; // Reverse pointer
        prev = current; // Move prev forward
        current = next; // Move current forward
    }
    return this;

  }

  // rotate(num){ //rotates the linked list but doesn't account for other scenarios and is not efficient when num passes the length of the linked list
  //   if(!this.head || !this.head.next){
  //     return this;
  //   }
  //   for(let i = 0; i < num; i++){
  //     this.push(this.shift());
  //   }
  //   return this;
  // }

  rotate(num) {
    let trueN = ((num % this.length) + this.length) % this.length; // calculate the effective number of rotations needed, the extra calculations are to handle negative numbers
    if (trueN === 0 || this.length < 2) return this; // if no rotation is needed or list is too short, return the list as is
    let current = this.tail;
    this.tail.next = this.head; // connect the tail to the head to make it circular 
    for(let i = 0; i < trueN; i++){
      current = current.next;
    }
  
    this.tail = current; // set the new tail
    this.head = current.next; // set the new head
    this.tail.next = null; // break the circular connection
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

  /**
   * constructor(){
   *   this.head = null;
   *   this.tail = null;
   *   this.length = 0;
   * }
  */
 
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

  // shift(){
  //   if(!this.head) return undefined;
  //   let current = this.head;
  //   this.head = this.head.next;
    
  //   this.length--;
  //   if(this.length === 0){
  //       this.head = null;
  //       this.tail = null;
  //   }
  //   else{
  //       this.head.prev = null;
  //   }
  //   current.next = null;
  //   return current;
  // }

  get(index){
    if(index < 0 || index > this.length - 1) return null;
    let current;
    if(index < this.length / 2 - 1){
        current = this.head;
        for(let i = 0; i < index; i++){
            current = current.next;
        }
    }
    else{
        current = this.tail;
        for(let i = this.length - 1; i > index; i--){
            current = current.prev;
        }
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
    this.tail = this.head; //swap head and tail
    this.head = prev;
    return this;
  }
}
```
