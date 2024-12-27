# Arrays

| Methods | Time Complexity |
| --- | --- |
| push | O(1) |
| pop | O(1) |
| shift | O(n) |
| unshift | O(n) |
| concat | O(n) |
| slice | O(n) |
| splice | O(n) |
| indexOf | O(n) |
| includes | O(n) |
| sort | O(n<sup>2</sup>) or nlogn |
| forEach/map/filter/reduce/etc. | O(n) |
<!-- create our own custom array -->

```js
class MyArray{
  constructor(){
    this.length = 0;
    this.data = {};
  }

  get(index){
    return this.data[index];
  }

  delete(index){
    const deleted = this.data[index];
    for(let i = index; i < this.length - 1; i++){
      this.data[i] = this.data[i + 1];
    }
    delete this.data[this.length - 1]; //remove the last element because we shifted everything over.
    this.length--;
    return deleted;
  }

  push(item){ //the original push method returns the length of the array
    this.data[this.length] = item;
    this.length++;
    return this.length; 
  }

  pop(){ //the original pop method returns the removed item
    const lastItem = this.data[this.length - 1];
    delete this.data[this.length - 1]; //we cannot delete lastItem directly because it may be undefined to account for empty arrays
    this.length--;
    return lastItem;
  }

  unshift(item){ 
    for(let i = 1; i < this.length; i++){
      this.data[i] = this.data[i - 1];
    }
    this.data[0] = item;
    this.length++;
    return this.length;
  }

  shift(){
    const firstItem = this.data[0];
    for(let i = 0; i < this.length; i++){ // shift everything by one
      this.data[i] = this.data[i + 1];
    }
    delete this.data[this.length - 1]; // remove the last element
    this.length--;
    return firstItem;
  }
}
```
