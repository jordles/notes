# Insertion Sort

`(iterate over the elements - 1 and insert them into their correct position)`

a sorting algorithm that sorts an array by repeatedly inserting elements into their correct position. The running time is quadratic.

We insert the element into its correct position by comparing it with all the elements before it, so that always leaves one side of the array sorted. We continue this until we reach the end of the array.

```js
function insertionSort(arr) {
  for(let i = 1; i < arr.length; i++){
    let j;
    let currentVal = arr[i]; // save the current value were trying to insert
    for(j = i - 1; j >= 0 && arr[j] > currentVal ; j--){
      arr[j + 1] = arr[j]; // shift element to the right
    }
    arr[j + 1] = currentVal;
  }
  return arr;
}
```
```js
// recursive version O(n^2)
function insertionSort(arr, i = 1) {
  if(i === arr.length) return arr;
  let j;
  let currentVal = arr[i]; // save the current value were trying to insert
  for(j = i - 1; j >= 0 && arr[j] > currentVal ; j--){
    arr[j + 1] = arr[j]; // shift element to the right
  }
  arr[j + 1] = currentVal;
  return insertionSort(arr, i + 1);
}
```
