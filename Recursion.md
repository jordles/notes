# Recursion

A process (a function) that calls itself.

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

## Common Recursion Problems

```js
function isOdd(arr){
  if(arr.length === 0) return false;

  if(arr.shift() % 2 === 1) return true;
  return isOdd(arr);
}
```
```js
function factorial(num){
  if(num === 1) return 1;
  return num * factorial(num - 1);
}
```

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
```

**Tail Recursion** 
* It states that a recursive call must be the last thing in a function. Tail recursion is also known as tail call optimization.
* The runtime can reuse the same stack frame for every call, avoiding memory overhead and making recursion as efficient as looping compared to traditional recursion which uses a new stack frame for each call.
```js
function odds(arr){
  if(arr.length === 0) return [];

  if(arr[0] % 2 === 1){
    return [arr[0]].concat(odds(arr.slice(1)));
  }

  return odds(arr.slice(1));
}
```
