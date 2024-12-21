# Linked Lists

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

  push(val){
    const node = new ListNode(val);
    if(!this.head){
      this.head = node;
      this.tail = node;
      this.length++;
      return;
    }
    this.tail.next = node;
    this.tail = node;
    this.length++;
    return;
  }

  pop(){
    if(!this.head){
      return null;
    }
    let current = this.head;
    let newTail = current;
    while(current.next){
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
      this.length++;
      return;
    }
    node.next = this.head;
    this.head = node;
    this.length++;
    return;
  }

  shift(){
    if(!this.head){
      return null;
    }
    let node = this.head;
    this.head = this.head.next;
    node.next = null;
    this.length--;

    if(this.length === 0){
      this.tail = null;
    }
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
}

```
