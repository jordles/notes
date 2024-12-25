# Reverse String

```js
// using array methods
function reverseString(str){
  return s.split("").reverse().join("");
}
```

```js
// swapping pointers
function reverseString(str) {
  str = str.split('');
  let left = 0;
  let right = str.length - 1;
  while (left < right) {
    [str[left], str[right]] = [str[right], str[left]];
    left++;
    right--;
  }
  return str.join('');
}

function reverseString(str) {
  str = str.split('');
  let left = 0;
  let right = str.length - 1;
  while (left < right) {
    let temp = str[left];
    str[left] = str[right];
    str[right] = temp;
    left++;
    right--;
  }
  return str.join('');
}
```

```js
//concat strings
function reverseString(str) {
  let reversed = '';
  for(let i = str.length - 1; i >= 0; i--) {
    string += str[i]
  }
  return reversed;
}

function reverseString(str) {
    let reversed = '';
    let i = str.length - 1;
    while (i >= 0) {
        reversed += str[i];
        i--;
    }
    return reversed;
}
```

```js
//recursion
function reverseString(s) { 
  if (s.length <= 1) return s;
  return reverseString(s.slice(1)) + s[0];
}
```

```js
// using stack 

function reverseString(str) {
  let stack = [];
  for(let char of str){
    stack.push(char);
  }
  let reversed = '';
  while(stack.length){
    reversed += stack.pop();
  }
  return reversed;
}
```
