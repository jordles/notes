# Quick Sort

QuickSort is fast because it places elements into position early, cutting down the number of comparisons. Its logic is similar to selection sort, but instead of finding the minimum element, it places the pivot element in the correct position early on. 

When we partition the array in half with a pivot, we cut down the number of operations / comparisons needed to sort the array. We no longer need to compare with the rest of the array only the half of it.

Example Problem: arr = [7, 2, 1, 8, 6, 3, 5, 4]
| Algorithm	| Passes | Comparisons per pass | Total Comparisons |
| --- | --- | --- | --- |
| Selection Sort	| 7 | 7 + 6 + 5 + 4 + 3 + 2 + 1	 | 28 |
| QuickSort | log(n) ≈ 3 | ~ n comparisons per partition | 15 |


Quick Sort Pseudocode:
* Call the pivot helper on the array
* Base case: If the length of the array is 1 or 0, return the array
* When the helper returns to you the updated pivot index, recursively call the pivot helper on the subarray to the left of that index, and the subarray to the right of that index.

```js
// multiple pointers and sliding window pattern
function quickSort(arr){
  let index = pivot(arr);
  if(index - 1 > 0) quickSort(arr.slice(0, index));
  if(index + 1 < arr.length) quickSort(arr.slice(index + 1));
  return arr;
}

function quickSort(arr, start = 0, end = arr.length - 1){
  let index = pivot(arr, start, end);
  if(index - 1 > start) quickSort(arr, start, index - 1);
  if(index + 1 < end) quickSort(arr, index + 1, end);
  return arr;
}

function quickSort(arr, start = 0, end = arr.length - 1){
  if(start < end){ //this check ensures we don't go out of bounds from left to right for each partition
    let index = pivot(arr, start, end);
    quickSort(arr, start, index - 1);
    quickSort(arr, index + 1, end);
  }
  return arr;
}
```

Partition / Pivot Pseudocode:
* Create three arguments: array, start, end
* Grab a pivot from the start of the array
* Store the current pivot index in a variable to keep track of where the pivot should end up
* Loop through the array from the start until the end
  * If the pivot is greater than the current element, increment the pivotIndex variable and then swap the current element with the element at the pivot index
* Swap the pivot with the pivot index
* Return the pivot index 

```js
function pivot(arr, start = 0, end = arr.length - 1) {
  let pivot = arr[start];
  let pivotIndex = start;
  for(let i = start + 1; i <= end; i++){
    if(arr[i] < pivot){
      pivotIndex ++;
      [arr[i], arr[pivotIndex]] = [arr[pivotIndex], arr[i]]
    }
  }
  [pivot, arr[pivotIndex]] = [arr[pivotIndex], pivot];
  return pivotIndex;
}
```
