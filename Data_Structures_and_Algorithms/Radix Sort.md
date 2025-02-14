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
// time: O(n * d -> n numbers in arr * d digits) can also be O(n log n) if the data is unique and randomly distributed
// space: O(n + k -> arr + buckets)
function radixSort(arr) {
  for(let k = 0; k < mostDigits(arr); k++){ //represents the d digits of a number
    let digitBuckets = Array.from({length: 10}, () => []); //an array of 10 empty arrays (k bucket size)
    for(let num of arr){ //represents the n numbers in our array we have to compare 
      digitBuckets[getDigit(num, k)].push(num);
    }
    arr = [].concat(...digitBuckets); // array stores the original values (n)
  }
  return arr;
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

