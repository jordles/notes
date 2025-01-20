# Sliding Window

This pattern involves creating a window which can either be an array or number from one position to another. A window is basically like grouping of elements.

Depending on a certain condition, the window either increases or closes (and a new window is created).

Very useful for keeping track of a subset of data in an array/string etc. 

## Challenges
* [Find the maximum sum of a subarray that has length num](#max-subarray-sum)
* [Return the minimal length of a contiguous subarray in which its sum is greater than or equal to the target integer passed](#min-subarray-length)
* [Find the longest substring with all distinct characters](#find-longest-substring)


## Max Subarray Sum
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

function maxSubarraySum(arr, num){ //my version that makes more sense to me
    if(arr.length - 1 < num) return null;
    let total = 0;
    for(let i = 0; i < num; i++){ //get the initial window. 
        total += arr[i]
    }
    let max = total;
    for(let j = num; j < arr.length; j++){
        total = total - arr[j - num] + arr[j];
        max = Math.max(max, total)
    }
    return max;
}
```

## Min Subarray Length
```js
// O(n) since the pointers go through the array only once
function minSubArrayLen(arr, target){
  let left = 0; // pointer for our starting window 
  let right = 0; //pointer for our ending window
  let total = 0; //total to compare with our target
  let minLen = Infinity; //keep track of the minimum length to return later.
  while(right < arr.length){
    total += arr[right];
    while(total >= target){
      minLen = Math.min(minLen, right - left + 1);
      total -= arr[left];
      left++;
    }
    right++;
  }
  return minLen === Infinity ? 0 : minLen;
}
```

## Find Longest Substring
```js
//O(n)
function findLongestSubstring(str){
  let maxLength = 0;
  let seen = {}; //we use the seen object to keep track of the last index of each character
  let start = 0;

  for(let end = 0; end < str.length; end++){
    let char = str[end];
    if(char in seen){ //cannot use seen[char] since we use 0s as an index, which is falsy. 
      start = Math.max(start, seen[char] + 1); //we must ensure the start never moves the window backwards because sometimes the seen[char] index will be lower than our start index. 
    }
    seen[char] = end;
    maxLength = Math.max(maxLength, end - start + 1);
  }
  return maxLength;
}

// using a set O(n)
function findLongestSubstring(str) {
  let start = 0;
  let maxLength = 0;
  const seen = new Set();

  for (let end = 0; end < str.length; end++) {
    while (seen.has(str[end])) {
      seen.delete(str[start]);
      start++;
    }
    seen.add(str[end]);
    maxLength = Math.max(maxLength, end - start + 1);
  }

  return maxLength;
}
```
