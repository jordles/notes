# Stacks

A linear data structure that follows the **LIFO (Last In First Out) principle**.

```js
// using linked lists O(1)
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

  display(){
    if(!this.top) return null;
    return this.top;
  }

  min(){ //O(n)
    if(!this.top) return null;
    let min = this.top.value;
    let current = this.top;
    while(current.next){
      current = current.next;
      if(current.value < min){
        min = current.value;
      }
    }

    return min;
  }

}
```

```js
// using arrays O(1)
class Stack{
  
  constructor(val = null){
    this.data = [];
    this.min = [];
    if(val){
      this.data.push(val);
      this.min.push(val);
    }
  }

  push(val){
    this.data.push(val);
    if(!this.min.length || val < this.min[this.min.length - 1]){
      this.min.push(val);
    }
    return;
  }

  pop(){
    if(!this.data.length) return null;
    const popped = this.data.pop();
    if(popped === this.min[this.min.length - 1]){
      this.min.pop();
    }
    return popped;
  }

  display(){
    return this.data;
  }

  getMin(){ 
    return this.min[this.min.length - 1]; // O(1)
    //return Math.min(...this.data); // O(n)
  }
}
```
