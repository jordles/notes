# Hash Tables
| Language | Data Structure |
| -------- | -------------- |
JavaScript | Objects |
Python | Dictionaries |
Java, C#, Go | Maps |
C++ | Unordered Maps (hash tables) |

**Hash Functions** - Acts like a translator, taking an input of any size (key) and returning an output of a fixed size value (hash code) that can be used as an index within the hash table's internal array. The process of mapping arbitrary keys to hash codes is called hashing. Hash functions are a function that takes in a key and returns a value.

* **Input** - You feed any kind of data into the hash function. It can be a string, number, object, etc.
* **Hashing Process** - The hash function takes the input and turns it into a hash code. The function will perform a series of mathematical operations on the input data, scrambling it up in a unique way.
* **Fixed-Size Output** - Regardless of the input size, the hash function always spits out a fixed-size value, like a short string of characters or a number. 

## Terminology 
* Map - a data structure that stores key-value pairs.
* Bucket - a container that holds key-value pairs.
* Pair - a key-value pair.

```js
// creating our own hash table
class HashTable {
  constructor(size = 53) {
    this.keyMap = new Array(size);
  }

  hashFunction(key) { // hash our key
    let total = 0;
    const prime = 31; // reduce collisions and evenly distribute the keys
    for (let i = 0; i < Math.min(key.length, 100); i++) { // limit the key length to 100 characters to prevent excessive memory usage for longer keys. 
      const charCode = key.charCodeAt(0) - 96; // reduce the ascii to a smaller range of alphabets
      total = (total * prime + charCode) % this.keyMap.length; // ensure the hash is within the bounds of the array. 
    }
    return total;
  }

  set(key, value) {
    const index = this.hashFunction(key);
    if (!this.keyMap[index]) { // if the index is empty, create a new array
      this.keyMap[index] = [];
    }
    this.keyMap[index].push([key, value]); // push the key and value into the array
  }

  get(key) { // similar to getting values from an object through dot or bracket notation
    const index = this.hashFunction(key);
    if (this.keyMap[index]) {
      for(let pair of this.keyMap[index]) { // check if the key is in the array
        if (pair[0] === key) { 
          return pair[1]; //return the value if the key is found
        }
      }
    }
    return undefined;
  }

  keys(){
    const keys = [];
    for(let bucket of this.keyMap) {
      if (bucket) {
        for(let pair of bucket) {
          keys.push(pair[0]);
        }
      }
    }
    return keys;
  }

  values(){
    const values = [];
    for(let bucket of this.keyMap) {
      if (bucket) {
        for(let pair of bucket) {
          values.push(pair[1]);
        }
      }
    }
    return values;
  }

  pairs(){
    const pairs = [];
    for(let bucket of this.keyMap) {
      if (bucket) {
        pairs.push(...bucket);
      }
    }
    return pairs; 
  }

  delete(key){ 
    const index = this.hashFunction(key);
    if (this.keyMap[index]) {
      for(let i = 0; i < this.keyMap[index].length; i++) {
        if (this.keyMap[index][i][0] === key) {
          for(let j = index; j < this.keyMap[index].length - 1; j++){ //basically the same as splice
            this.keyMap[index][j] = this.keyMap[index][j + 1];
            delete this.keyMap[index][this.keyMap[index].length - 1];
          }
          //this.keyMap[index].splice(i, 1);
        }
      }
    }
  }
}
```
