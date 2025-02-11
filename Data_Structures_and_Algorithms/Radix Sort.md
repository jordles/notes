# Radix Sort

a integer sorting algorithm that sorts an array by digit/numbers instead of using a comparison. The running time is linear.

Helper Functions:

getDigit(num, place) - returns the digit at a specific place in a number  (ones, tens, hundreds, etc)

```js
function getDigit(num, place) {
  return String(num)[String(num).length - 1 - place];
}

function getDigit(num, place) {
  return Math.floor(Math.abs(num) / Math.pow(10, place)) % 10;
}

function getDigit(num, place) {
  
}
