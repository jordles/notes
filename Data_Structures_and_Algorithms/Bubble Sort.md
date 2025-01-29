# Bubble Sort

`(Swap adjacent elements on each current loop iteration by sorted order (bubble the last element to the end) => loop on each iterating index)`

A sorting algorithm that sorts an array by repeatedly swapping adjacent elements if they are in the wrong order, per loop iteration. The running time is quadratic.

Its called a bubble sort because we bubble the largest element (or smallest element) to the end of the array. Then we bubble the second largest element to the end of the array. We continue this until we reach the end of the array. Bubbling is the process of swapping elements in the array
```js
// O(n^2)
function bubbleSort(arr) {
  let swapped = false;
  for(let i = 0; i < arr.length; i++){
    for(let j = 0; j < arr.length - i - 1; j++){
      if(arr[j] > arr[j+1]){
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
        swapped = true;
      }
    }
    if(!swapped) break; //ensures we can achieve O(n) if the array is already sorted
  }
  return arr;
}
```
```js
//recursive version O(n^2)
function bubbleSort(arr, n = arr.length) {
  if(n === 1) return arr;

  for(let i = 0; i < n - 1; i++){
    if(arr[i] > arr[i + 1]){
      [arr[i], arr[i + 1]] = [arr[i + 1], arr[i]];
    }
  }

  return bubbleSort(arr, n - 1);
}
```
