# Radix Sort

a integer sorting algorithm that sorts an array by digit/numbers instead of using a comparison. The running time is linear.

Pseudocode:

* Define a function that accepts list of numbers
* Figure out ow many digits the largest number has
* Loop from k = 0 up to the largest number of digits
* For each iteration of the loop:
  * Create buckets for each digit 0 to 9
  * Place each number in the corresponding bucket based on the kth digit it is currently occupying
* Replace our existing array with values in our buckets, starting with 0 and going up to 9
* return the sorted array


```js
function radixSort(arr) {
  for(let k = 0; k < mostDigits(arr); k++){
    let digitBuckets = Array.from({length: 10}, () => []);
    for(let num of arr){
      digitBuckets[getDigit(num, k)].push(num);
    }
    arr = [].concat(...digitBuckets);
  }
  return num;
}

```
-----------------------------------------------------------------------------------------------------------
## Helper Functions:

**getDigit(num, place)** - returns the digit at a specific place in a number  (ones, tens, hundreds, etc)

```js
// linear O(d)
function getDigit(num, place) {
  let str = String(Math.abs(num));
  return str[str.length - 1 - place];
}

// O(1)
function getDigit(num, place) {
  return Math.floor(Math.abs(num) / Math.pow(10, place)) % 10;
}
```
**digitCount(num)** - returns the number of digits in a number

```js
// linear O(d) for d digits on toString()
function digitCount(num) {
  return Math.abs(num).toString().length;
}

// logarithmic O(1)
function digitCount(num) {
  return num === 0 ? 1 : Math.floor(Math.log10(Math.abs(num))) + 1;
}
```

**mostDigit(arr)** - returns the number of digits in the largest number in an array

```js
// O(n * d) for linear, O(n) for logarithmic
function mostDigits(arr) {
  let max = 0;
  for(let num of arr){
    max = Math.max(max, digitCount(num));
  }
  return max;
}
```
-----------------------------------------------------------------------------------------------------------

