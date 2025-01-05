# Insertion Sort

`(swap by sort order on each element, but also check the sort order of the elements before it)`

a sorting algorithm that sorts an array by repeatedly inserting elements into their correct position. The running time is quadratic.

Its logic is similar to [bubble sort](<Bubble Sort.md>). But instead of bubbling the largest element to the end of the array, we insert the element into its correct position by comparing it with all the elements before it. We continue this until we reach the end of the array.

```js
function insertionSort(arr) {
  for(let i = 1; i < arr.length; i++){

    for(let j = i - 1; j >= 0; j--){
      if(arr[j] > arr[i]){
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
      }
    }
    
    
  }
  return arr;
}
```