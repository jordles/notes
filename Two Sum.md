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


