# Stacks

A linear data structure that follows the **LIFO (Last In First Out) principle**.

```js
// using linked lists O(n)
class ListNode{
  constructor(val){
    this.value = val;
    this.next = null;
  }
}

class Stack{
  constructor(val = null){
    if(val){
      const newNode = new ListNode(val);
      this.top = newNode;
      this.length = 1;
    }
    else{
      this.top = null;
      this.length = 0;
    }
    
  }

  push(val){

    const newNode = new ListNode(val);

    if(!this.top){
      this.top = newNode;
    }
    else{
      newNode.next = this.top;
      this.top = newNode;
    }
    
    this.length++;
    return;
  }

  pop(){
    if(!this.top) return null;
    const temp = this.top;
    this.top = this.top.next;
    temp.next = null;
    this.length--;
    return temp;
  }

  get getTop(){
    if(!this.top) return null;
    return this.top;
  }
}
```

```js
// using arrays O(1)
class Stack{
  
  constructor(){
    this.data = [];
  }

  push(val){
    this.data.push(val);
  }

  pop(){
    if(!this.data.length) return null;
    return this.data.pop();
  }

  display(){
    return this.data;
  }
}
```
