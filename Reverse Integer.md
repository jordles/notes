# Reverse Integer

**remember leading and trailing zeros are not preserved when converting to a number**

```js
// using array methods
function reverseInteger(num){
  return parseInt(num.toString().split("").reverse().join(""));
}
```

```js
// swapping pointers
function reverseInteger(num){
  const str = num.toString().split('');
  let left = 0;
  let right = str.length - 1;
  
  while (left < right) {
    [str[left], str[right]] = [str[right], str[left]];
    left++;
    right--;
  }
  return +(str.join(''));
}

function reverseInteger(str) {
  str = str.toString().split('');
  let left = 0;
  let right = str.length - 1;
  while (left < right) {
    let temp = str[left];
    str[left] = str[right];
    str[right] = temp;
    left++;
    right--;
  }
  return +(str.join(''));
}

function reverseInteger(str){
  str = str.toString().split('');
  for( let i = 0; i < Math.floor(str.length / 2); i++){
    let temp = str[i];
    str[i] = str[str.length - 1 - i];
    str[str.length - 1 - i] = temp;
  }
  return +(str.join(''));
}

```

```js
// concat strings
function reverseInteger(num){
  const str = num.toString();
  let newStr = '';
  for(let i = str.length - 1; i >= 0; i--){
      newStr += str[i];
  }
  return +newStr;
}
```
