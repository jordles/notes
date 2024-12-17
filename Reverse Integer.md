# Reverse Integer

```js
// using array methods
function reverseInteger(num){
  return parseInt(num.toString().split("").reverse().join(""));
}
```

```js
// swapping pointers
function reverseInteger(num){
  let reversed = 0;
  while(num > 0){
    reversed = reversed * 10 + num % 10;
    num = Math.floor(num / 10);
  }
  return reversed;
}
```

```js
// concat strings
function reverseInteger(num){
  let reversed = '';
  for(let i = num.toString().length - 1; i >= 0; i--){
    reversed += num.toString()[i];
  }
  return parseInt(reversed);
}
```
