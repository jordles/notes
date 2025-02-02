# Quick Sort

Quick Sort Pseudocode:

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
  for(let i = start + 1; i < arr.length; i++){
    if(arr[i] < pivot){
      [arr[i], arr[pivotIndex]] = [arr[pivotIndex], arr[i]]
      pivotIndex ++;
    }
  }
  [pivot, arr[pivotIndex]] = [arr[pivotIndex], pivot];
  return pivotIndex;
}
```
