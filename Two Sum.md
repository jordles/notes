# Two Sum

```js
// array methods O(n)
function twoSum(arr, sum){
  for(let i = 0; i < arr.length; i++){
    let foundIndex = arr.indexOf(sum-arr[i])
    if(foundIndex !== -1){
      return [i, foundIndex];
    }
  }
  return 'no sum found'
}

// multiple sums solution
function twoSum(arr, sum){
  let solutions = [];
  for(let i = 0; i < arr.length; i++){
    let foundIndex = arr.indexOf(sum-arr[i])
    if(foundIndex !== -1 && foundIndex !== i && 
    !solutions.some(([findex, sindex]) => 
        findex === foundIndex && sindex === i
    )){
      solutions.push([i, foundIndex]);
    }
  }
  return solutions.length == 1 ? solutions[0] : solutions.length > 1 ? solutions : 'no sum found'
}
```

```js
// loops O(n^2)
function twoSum(arr, sum){
  for(let i = 0; i < arr.length; i++){
    for(let j = i + 1; j < arr.length; j++){
      if(arr[i] + arr[j] === sum){
        return [i, j];
      }
    }
  }
  return 'no sum found'
}
```

```js
// JavaScript Objects O(n)
function twoSum(arr, sum){
  let obj = {};
  for(let i = 0; i < arr.length; i++){
    const complement = sum - arr[i];
    if(complement in obj && obj[complement] !== i) return [obj[complement], i];
    obj[arr[i]] = i; // we map the key to the index of the array
  }
  return 'no sum found'
}

//reduce
function twoSum(arr, sum){
  arr.reduce((acc, val, i) => {
    const complement = sum - val;
    if(complement in acc && acc[complement] !== i) return [acc[complement], i];
    acc[val] = i;
    return acc;

  }, {})
}
```

[Hash Tables](<Hash Tables.md>)
```js
// hash table O(n)
function twoSum(arr, sum) {
  const hashMap = new HashTable(); // Use a Map to store seen values and their indices

  for (let i = 0; i < arr.length; i++) {
    const complement = sum - arr[i];
    if (hashMap.get(complement) !== undefined && hashMap.get(complement) !== i) return [hashMap.get(complement), i];
    hashMap.set(arr[i], i); // Store the current value and its index
  }

  return 'no sum found';
}

//reduce
function twoSum(arr, sum) {
  let result;
  arr.reduce((acc, val, i) => {
    const complement = sum - val;
    if (acc.get(complement) !== undefined && acc.get(complement) !== i) {
      result = [acc.get(complement), i];
    } else {
      acc.set(val, i);
    }
    return acc;
  }, new Map());
  return result; // Return the result after the reduce completes
}
```
