# String Search
a search algorithm that searches for a substring within a string. The best case running time is linear.

```js
//naive string search O(n^2)
function stringSearch(string, target) {
  let count = 0;
  for(let char = 0; char < string.length; char++){
    for(let char2 = 0; char2 < target.length; char2++){
      if(string[char2] !== string[char + char2]) break;
      if(char2 === target.length - 1) count++;
    }
  }
  return count;
}
```
```js
// multiple pointers string search  -  Time: O(n) Space: O(1)

function stringSearch(string, target){
  let position = 0;
  let count = 0;
  for(let char of string){
    if(char === target[position]) position++; 
    else position = 0;
    if(position === target.length) {
      count ++;
      position = 0;
    }
  }
  return count;
}


```
