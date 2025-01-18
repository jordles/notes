# Multiple Pointers (Pattern)

Creating pointers or values that correspond to an index or position and move towards the beginning, end or middle based on a certain condition.

Its very efficient for solving problems with minimal space complexity as well. 

Sorting is required if were comparing adjacent values.



## Challenges

* [Write a function to count the number of unique values in an array](#count-unique-values)
* [Write a function to check if there are duplicates in the arguments for the function](#are-there-duplicates)
* [White a function that determines if there is a pair of values in the sorted array where the average of the pair equals the target value](#average-pair)
* [Write a function that takes in two strings and checks whether the characters in the first string form a subsequence of the characters in the second string (in order)](#is-subsequence)
## Count Unique Values
```js
// O(n) i and j are our pointers
function countUniqueValues(arr){
  let count = arr.length === 0 ? 0 : 1;
  let i = 0;
  for(let j = 1; j < arr.length; j++){
    if(arr[i] !== arr[j]){
        count++;
        i = j;
    }
  }
  return count; 
}
```

## Are There Duplicates?
```js
// O(nlogn)
function areThereDuplicates(...args){
  args.sort((a,b) => a > b ? 1 : -1)
  let i = 0;
  for(j = 1; j < args.length; j++){
    if(arr[i] === arr[j]) return true;
    i = j;
  }
  return false;
}
```

## Average Pair
```js
  //without multiple pointers O(n^2)
  function averagePair(arr, target){
    for(let i = 0; i < arr.length; i++){
        for(let j = 1; j < arr.length; j++){
            if((arr[i] + arr[j])/ 2 == target) return true;
        }
    }
    return false;
}
```
```js
// Time: O(n) Space: O(1)
function averagePair(arr, target){
  let left = 0;
  let right = arr.length - 1;
  //We only use these two pointers for space complexity so its O(1)
  while(left < right){
    const avg = (arr[left] + arr[right]) / 2;
    if(avg === target) return true;
    if(avg > target) right--;
    else left++;
  }
  return false; 
}
```

## Is Subsequence
```js
// Time: O(n) Space: O(1) 
  function isSubsequence(str, finalStr){
    let i = 0;
    for(let j = 0; j < finalStr.length; j++){
      if(finalStr[j] === str[i]) i++;
      if(i === str.length) return true;
    }
    return false;
  }
```
```js
// Recursion 
// Time: O(n) Space: O(n)
function isSubsequence(str1, str2) {
  if(str1.length === 0) return true
  if(str2.length === 0) return false
  if(str2[0] === str1[0]) return isSubsequence(str1.slice(1), str2.slice(1))  
  return isSubsequence(str1, str2.slice(1))
}
``` 
