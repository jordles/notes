# Sliding Window

This pattern involves creating a window which can either be an array or number from one position to another. A window is basically like grouping of elements.

Depending on a certain condition, the window either increases or closes (and a new window is created).

Very useful for keeping track of a subset of data in an array/string etc. 

## Challenges

```js
// find the length of the longest substring without repeating characters
```

```js
// find the maximum sum of a subarray with length num O(n^2) 
function maxSubarraySum(arr, num){
  if(num > arr.length) return null;
  let max = 0;
  for(let i = 0; i < arr.length - num + 1; i++){
    let total = 0;
    for(let j = 0; j < num; j++){
      total += arr[i+j];
    }
    if (total > max) max = total;
  }
  return max;
}

function maxSubarraySum(arr, num){ // O(n) sliding window
  let maxSum = 0;
  let tempSum = 0;
  if (arr.length < num) return null;
  for (let i = 0; i < num; i++) { //calculate the sum of the first window
    maxSum += arr[i];
  }
  tempSum = maxSum;
  for (let i = num; i < arr.length; i++) { // loop through the array
    tempSum = tempSum - arr[i - num] + arr[i]; //adjust the sum for the sliding window; subtract the left most element from the window and add in the new element
    maxSum = Math.max(maxSum, tempSum); //update maxsum if the current window sum is greater
  }
  return maxSum;
}
```
