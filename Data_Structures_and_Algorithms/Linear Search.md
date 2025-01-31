# Linear Search

Linear search is a search algorithm that searches an array for a specific value by comparing each element of the array with the target value until the target value is found. The running time is linear.

We already have some methods that use linear search in javascript: indexOf(), includes(), and find().

```js
// for loop 
function linearSearch(arr, search){
  for(let i = 0; i < arr.length; i++){
      if(arr[i] === search) return i;
  }
  return -1;
}
```
```js
// tail recursion
function linearSearch(arr, search, i = 0){
    if(i > arr.length - 1) return -1;
    if(arr[i] === search) return i;
    return linearSearch(arr, search, i + 1)
}
```
```js
// using a flag / pointer
function linearSearch(arr, val) {
  let index = -1; // Default to -1; base case for when value is not found
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] === val) {
      index = i;
      break; // Exit loop once value is found
    }
  }
  return index;
}
```
