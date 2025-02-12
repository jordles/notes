# Radix Sort

a integer sorting algorithm that sorts an array by digit/numbers instead of using a comparison. The running time is linear.

Helper Functions:

**getDigit(num, place)** - returns the digit at a specific place in a number  (ones, tens, hundreds, etc)

```js
function getDigit(num, place) {
  let str = String(Math.abs(num));
  return str[str.length - 1 - place];
}

function getDigit(num, place) {
  return Math.floor(Math.abs(num) / Math.pow(10, place)) % 10;
}

function getDigit(num, place) {
  
}
```
**digitCount(num)** - returns the number of digits in a number

```js
function digitCount(num) {
  return Math.abs(num).toString().length;
}

function digitCount(num) { 
  if(num === 0) return 1;
  return Math.floor(Math.log10(Math.abs(num))) + 1;
}
```

mostDigit(arr) - returns the number of digits in the largest number in an array

```js
function mostDigits(arr) {
  let max = 0;
  for(let num of arr){
    max = Math.max(max, digitCount(num));
  }
  return max;
}
```
