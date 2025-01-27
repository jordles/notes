# Binary Search n(logn)

A search algorithm that finds the position of a target value within a sorted array by dividing the search interval in half on each iteration and checking if the target value is less than or greater than the middle element. The running time is logarithmic. For this algorithm to work, THE ARRAY MUST BE SORTED!!

We use the concept of divide and conquer for binary search. 

1. Suppose you have a sorted list of 128 names, and you’re searching
through it using binary search. What’s the maximum number of
steps it would take? 64, 32, 16, 8, 4, 2, 1 = 7 steps or 2^7^ = 128

2. Suppose you double the size of the list. What’s the maximum
number of steps now? 128, 64, 32, 16, 8, 4, 2, 1 = 8 steps or 2^8^ = 256


```js
const binarySearch = (arr, target) => {
  arr.sort((a, b) => a - b);
  let left = 0;
  let right = arr.length - 1;
  while (left <= right) {
    const mid = Math.floor((left + right) / 2);
    if (arr[mid] === target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;

}
```
```js
//recursion
const binarySearch = (arr, target, left = 0, right = arr.length - 1) => {
  if(left > right) return -1;
  const mid = Math.floor((left + right) / 2);
  if(arr[mid] === target) return mid;
  if(arr[mid] < target) return binarySearch(arr, target, mid + 1, right);
  if(arr[mid] > target) return binarySearch(arr, target, left, mid - 1);
  return -1;
}
```
