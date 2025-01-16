# Multiple Pointers (Pattern)

Creating pointers or values that correspond to an index or position and move towards the beginning, end or middle based on a certain condition.

Its very efficient for solving problems with minimal space complexity as well. 

Sorting is required if were comparing adjacent values.



## Challenges

* [Write a function to count the number of unique values in an array](#count-unique-values)
* [Write a function to check if there are duplicates in the arguments for the function](#are-there-duplicates)

## Count Unique Values
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

## Are There Duplicates?
```js
// O(nlogn)
function areThereDuplicates(...args){
  args.sort((a,b) => a > b ? 1 : -1)
  let i = 0;
  for(j = 1; j < args.length; j++){
    if(arr[i] === arr[j]) return true;
    i = j;
  }
  return false;
}
```
