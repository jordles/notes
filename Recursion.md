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


