# Selection Sort (selection swap)

`(swap once per iterative index with min, min is found by looping through the whole array per iterative index)`

Since the algorithm is linear time, but also runs an n number of times each time, its O(n<sup>2</sup>). It should be noted the actual runtime is O(n * 1/2 * n) because we reduce the number of elements in each iteration by one leaving about half of the comparisons made at the end. But constants are ignored on Big O notation. So running time is quadratic.

Its called a selection sort because we select the smallest element in the array and swap it with the first element. Then we do the same for the second element on the next iteration and so on. We continue this until we reach the end of the array.

```js
const selectionSort = (arr) => {
  for (let i = 0; i < arr.length; i++) {
    let minIndex = i;
    for (let j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    if (minIndex !== i) { //if there was no new minimum, we dont need to swap
      [arr[i], arr[minIndex]] = [arr[minIndex], arr[i]];
    }
  }
  return arr;
}
``` 

```js
// recursive version O(n^2)
const selectionSort = (arr, i = 0) => {
  if(i === arr.length) return arr;
  let minIndex= i;
  for(let j = i + 1, j < arr.length; j++){
    if(arr[j] < arr[minIndex]){
      minIndex = j;
    }
  }
  if(minIndex !== i) [arr[i], arr[minIndex]] = [arr[minIndex], arr[i]];

  return selectionSort(arr, i + 1)
}
```
