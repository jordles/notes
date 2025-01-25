# Recursion

A process (a function) that calls itself.  Arrays (like objects) are passed by reference, so all recursive calls share the same result array in memory. This is not the case with numbers and strings, which are passed by value, so they are not shared. 

The [Call Stack](<Call Stack.md>) manages the function calls.

We often see recursion in:
* JSON.parse / JSON.stringify
* DOM traversal and document.getElementById
* Object Traversal
* Complex Data Structures
* Cleaner alternative to iteration

Parts of a recursive function:
* Base case (Where the recursion ends)
* Recursive case (calling itself with different inputs)

Known Techniques:

**Helper Method Recursion**

```js
//helps us compile our code without polluting the global scope, otherwise our variable would remain the same on every recursive call
function outer(input){
  var outerScopedVariable = [];
  function helper(helperInput){
    //modify the outerScopedVariable
    helper(helperInput--);
  }

  helper(input);

  return outerScopedVariable;
}

<!-- ----------------------------------------------------------------------- -->
<!--                                 EXAMPLE                                 -->
<!-- ----------------------------------------------------------------------- -->
function odds(arr){
  let result = [];
  function helper(helperInput){ //recursive function
    if(helperInput.length === 0) return;

    let current = helperInput.shift();
    if(current % 2 === 1){
      result.push(current);
    }

    helper(helperInput);
  }

  helper(arr);

  return result;
}
```

**Pure Recursion**
```js
//utilize methods that do not mutate the original array that way we dont have to worry about it being modified in recursive calls
function odds(arr){
  if(arr.length === 0) return [];

  let current = arr.shift();

  if(current % 2 === 1){
    return [current].concat(odds(arr)); 
  }

  return odds(arr);
}
```
```js
//You can also use a default parameter to avoid mutating the original array, 
function odds(arr, result = []){
  if(arr.length === 0) return result;

  let current = arr.shift();

  if(current % 2 === 1){
    result.push(current);
  }

  return odds(arr, result);
}
//mutating the result array (via result.push(current)) means there is side-effect computation happening before the recursive call. The runtime cannot optimize this like true tail recursion because it cannot guarantee that state changes (like result.push()) are complete before the next stack frame is created.
//In contrast, a pure tail-recursive function should not depend on mutations or other operations before the recursive call.
```

**Tail Recursion** 
* It states that a recursive call must be the last thing in a function. Tail recursion is also known as tail call optimization.
* The runtime can reuse the same stack frame for every call, avoiding memory overhead and making recursion as efficient as looping compared to traditional recursion which uses a new stack frame for each call.
```js
function odds(arr, result = []) {
  if (arr.length === 0) return result;

  let current = arr.shift();

  return odds(arr, current % 2 === 1 ? [...result, current] : result);
}
```


## Common Recursion Problems / Challenges

```js
// Recursive Is Odd
function isOdd(arr){
  if(arr.length === 0) return false;

  if(arr.shift() % 2 === 1) return true;
  return isOdd(arr);
}
```
```js
// Recursive Factorial
function factorial(num){
   if(num === 1 || num === 0) return 1;
   return num * factorial(num - 1)
}

function factorial(num, acc = 1){
  if(num === 1 || num === 0) return acc;
}
```
```js
// Recursive Power
function power(base, exp){
    if(exp === 0) return 1;
    return base * power(base, --exp);
}
```
```js
// Recursive Product
function productOfArray(arr){
    if(arr.length === 0) return 1;
    let num = arr.pop();
    return num * productOfArray(arr);
}

//tail recursion solution
function productOfArray(arr, total = 1){
  if(arr.length === 0) return total;
  return productOfArray(arr.slice(1), total * arr[0])
}
```
```js
// Recursive Range
function recursiveRange(num){
   if(num === 0) return 0;
   return num + recursiveRange(num - 1)
}

//tail recursion solution
function recursiveRange(num, total = 0){
  if(num === 0) return total;
  return recursiveRange(num - 1, total + num)
}
```
```js
// Fibonacci
function fib(num){
    if(num <= 2) return 1;
    return fib(num-1) + fib(num-2)
}
```
```js
// Reverse a string
function reverse(str){
  if(str.length === 0) return '';
  return str.slice(-1) + reverse(str.slice(0, -1))
}

// tail recursion solution
function reverse(str, s = ''){ 
  if(str.length === 0) return s;
  return reverse(str.slice(0, -1), s.concat(str.slice(-1)))
}

//tail recursion solution
function reverse(str, s = '', i = str.length-1){ //track index to avoid using array methods
  if(i < 0) return s;
  return reverse(str, s + str[i], i - 1)
}
```

```js
// Palindrome
function isPalindrome(str, s = '', i = str.length - 1){
  if(i < 0) return str === s;
  return isPalindrome(str, s + str[i], i - 1)
}
```
```js
// map 
function someRecursive(arr, func, i = 0){
  if(i > arr.length - 1) return false;
  if(func(arr[i])) return true;
  return someRecursive(arr, func, i + 1)
}
```
```js
// flatten
function flatten(arr, result = []){
  for(let item of arr){
      Array.isArray(item) ? flatten(item, result) : result.push(item)
  }
  return result;
}
```
```js
// capitalize words
function capitalizeFirst (arr, result = [], i = 0) {
  if(i > arr.length - 1) return result;
  let cap = arr[i][0].toUpperCase() + arr[i].slice(1);
  return capitalizeFirst(arr, [...result, cap], i + 1)
}
```
```js
// sum all even numbers in the following nested object
function nestedEvenSum (obj, result = 0) { 
    //recall result (numbers) are passed by value, not reference so we must pass back the computed value back to parent call. 
  for(let OBJ in obj){
      let value = obj[OBJ];
      if(typeof value === 'object' && !Array.isArray(value) && value !== null) result = nestedEvenSum(value, result)
      else if(typeof value === 'number' && value % 2 === 0) result += value;
  }
  return result;
}
```
```js
// capitalize all words in array
function capitalizeWords (arr, result = [], i = 0) {
  if(i > arr.length - 1) return result;
  let cap = arr[i].toUpperCase();
  return capitalizeWords(arr, [...result, cap], i + 1)
}
``` 
```js
// stringify all numbers in an obj
function stringifyNumbers(obj, newObj = {}){
    for(let key in obj){
        let value = obj[key]
        
        if(typeof value === 'object' && !Array.isArray(value) && value !== null) { //remember arrays and null are technically objects in javascript 
            newObj[key] = {}
            stringifyNumbers(value, newObj[key]);
        }
        else{
            newObj[key] = typeof obj[key] === "number" ? String(obj[key]) : obj[key]
        }
    }
    return newObj;
}

// tail recursion solution
function stringifyNumbers(obj, result = {}) {
    function helper(currObj, currResult) {
        for (let key in currObj) {
            let value = currObj[key];
            if (typeof value === 'object' && !Array.isArray(value) && value !== null) {
                currResult[key] = {};
                helper(value, currResult[key]); // Tail-recursive call
            } else {
                currResult[key] = typeof value === "number" ? String(value) : value;
            }
        }
        return currResult;
    }
    return helper(obj, result);
}
```
```js
// collect strings from an obj and return them in an array
function collectStrings(obj, arr = []){
    for(let key in obj){
        let value = obj[key]
        if(typeof value === 'object' && !Array.isArray(value) && value !== null) collectStrings(value, arr)
        else if(typeof value === 'string') arr.push(value)
    }
    return arr;
}
```

