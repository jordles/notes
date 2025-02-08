# Merge Sort

A sorting algorithm that divides the array into two halves, recursively sorts each half, and then merges them back together. The running time is linear.

Because the way we split the array each time, when we merge them, we sort them in order from smallest to largest on each side (left and right) and then continue merging the two sorted arrays. 

Pseudocode:
* Create an empty array, take a look at the smallest values in each input array.
* While there are still values we haven't looked at...
  * If the current value in the left array is smaller than current value in the right array, push the current value in the left array into our results and move on to the next value in the left array.
  * Otherwise, push the current value in the right array into our results and move on to the next value in the right array.
* After we run out of values in either array, push all the remaining values from the other array into our results.

```js
function merge(left, right){ //uses the multiple pointers pattern
  let result = [];
  let leftIndex = 0;
  let rightIndex = 0;
  while(leftIndex < left.length && rightIndex < right.length){
    if(left[leftIndex] < right[rightIndex]){
      result.push(left[leftIndex]);
      leftIndex++;
    }
    else{
      result.push(right[rightIndex])
      rightIndex++;
    }
  }
  return [...result, ...left.slice(leftIndex), ...right.slice(rightIndex)] //return result.concat(left.slice(leftIndex)).concat(right.slice(rightIndex));
}

function merge(left, right) {
  let result = [];
  while (left.length && right.length) {
    result.push(left[0] < right[0] ? left.shift() : right.shift());
  }
  return [...result, ...left, ...right];
}
```


```js
function mergeSort(arr){
  if(arr.length <= 1) return arr;

  const mid = Math.floor(arr.length / 2);
  const left = mergeSort(arr.slice(0, mid));
  const right = mergeSort(arr.slice(mid));

  return merge(left, right);
}
```
