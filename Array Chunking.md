# Array Chunking
<!-- Chunking an array into subarrays of a given size -->
```js
// loops
function chunk(arr, size) {
  let newArr = [];
  for(let i = 0; i < arr.length; i+= size){
    newArr.push(arr.slice(i, i + size));
  }
  return newArr;
}

function chunk(arr, size){
  let newArr = [];
  for(let i = 0; i < arr.length; i++){
    if(i % size === 0){
      newArr.push([]);
    }
    newArr[newArr.length - 1].push(arr[i]);
  }
  return newArr;
}
```

```js
// using reduce
function chunk(arr, size){

  return arr.reduce((acc, val) => {
    const last = acc[acc.length - 1];
    if(!last || last.length === size){
      acc.push([val]);
    } else {
      last.push(val);
    }
    return acc;
  }, []);
}

function chunk(arr, size){
  return arr.reduce((acc, val, i) => {
    const group = Math.floor(i / size); // Math.floor returns the largest integer less than or equal to a given number
    acc[group] = acc[group] || []; // if acc[group] is undefined, set it to an empty array
    acc[group].push(val); // add val to the group
    return acc;
  }, []);
}

function chunk(arr, size){
  return arr.reduce((acc, val, i) => {
    if(i % size === 0){ // if i is a multiple of size, push an empty array
      acc.push([]);
    }
    acc[acc.length - 1].push(val); // add val to the last array in acc
    return acc;
  }, []);
}
```

