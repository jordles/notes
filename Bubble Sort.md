# Bubble Sort

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