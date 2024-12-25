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

function twoSum(arr, sum){
  arr.reduce((acc, val, i) => {
    const complement = sum - val;
    if(complement in acc && acc[complement] !== i) return [acc[complement], i];
    acc[val] = i;
    return acc;

  }, {})
}
```

```js
// hash table O(n)
```
