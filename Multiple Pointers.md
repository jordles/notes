# Multiple Pointers (Pattern)

Creating pointers or values that correspond to an index or position and move towards the beginning, end or middle based on a certain condition.

Its very efficient for solving problems with minimal space complexity as well. 

Sorting is required if were comparing adjacent values.
## Challenges
```js
// O(n) i and j are our pointers
function countUniqueValues(arr){
  let count = arr.length === 0 ? 0 : 1;
  let i = 0;
  for(let j = 1; j < arr.length; j++){
    if(arr[i] !== arr[j]){
        count++;
        i = j;
    }
  }
  return count; 
}
```
