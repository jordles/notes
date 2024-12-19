# Linked List

```js
class ListNode{
  constructor(val){
    this.val = val;
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
      return;
    }
    this.tail.next = node;
    this.tail = node;
    this.length++;
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
  }
}
