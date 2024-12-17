# Palindrome

```js
// using array methods
function isPalindrome(str){
  const lowerStr = str.toLowerCase();
  return lowerStr === lowerStr.split('').reverse().join('');
}
```

```js
// concat strings
function isPalindrome(str){
  const lowerStr = str.toLowerCase();
  let reversed = '';
  for(let i = lowerStr.length - 1; i > 0; i-- ){
    reversed += lowerStr[i];
  }
  return lowerStr === reversed;
}
```