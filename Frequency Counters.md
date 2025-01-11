# Frequency Counters

This pattern uses objects or sets to collect values/frequencies of values. This is because accessing objects or sets is O(1) constant time. Using objects is much easier to place a counter as a value, compared to arrays.

This can often avoid the need for nested loops or O(n^2) operations with arrays/strings

Using multiple for loops instead of nested loops is much more efficient. 

## Challenges

* [Write a function to determine if the second string is an anagram of the first.](#valid-anagram)


## Valid Anagram
```js
// using objects (frequency counter) O(n)
function validAnagram(str1, str2){
  if(str1.length !== str2.length) return false;

  const lookup = {};

  for(let char of str1){
    lookup[char] = (lookup[char] || 0) + 1;
  }

  for(let char of str2){
    if(!lookup[char]) return false;
    lookup[char]--;
  }
  return true;
}

function isAnagramFrequency(str1, str2) {
  if (str1.length !== str2.length) return false;

  const frequency1 = {};
  const frequency2 = {};

  for (let char of str1) {
    frequency1[char] = (frequency1[char] || 0) + 1;
  }

  for (let char of str2) {
    frequency2[char] = (frequency2[char] || 0) + 1;
  }

  for (let key in frequency1) {
    if (frequency1[key] !== frequency2[key]) return false;
  }

  return true;
}
```
```js
// using arrays
function validAnagram(str1, str2){ //O(n)
  
  if(str1.length !== str2.length) return false;
  for(let i = 0; i < str1.length; i++){
    let char = str1[i];
    let index = str2.indexOf(char);
    if(index === -1) return false;
    str2 = str2.slice(0, index) + str2.slice(index + 1);
  }
  return true;
}
```
```js
// using sort O(nlogn)
function validAnagram(str1, str2){
  if(str1.length !== str2.length) return false;
  return str1.split("").sort().join("") === str2.split("").sort().join("");
}
```
```js
// Character Count with charCodes Time: O(n) Space: O(1)
function validAnagram(str1, str2){
  if(str1.length !== str2.length) return false;

  let counter = 0;
  for(let i = 0; i < str1.length; i++){
    counter += Math.abs(str1.charCodeAt(i) - str2.charCodeAt(i));
  }
  return counter === 0;
}

function isAnagramArray(str1, str2) {
  if (str1.length !== str2.length) return false;

  const count = new Array(26).fill(0);

  for (let char of str1) {
    count[char.charCodeAt(0) - 97]++;
  }

  for (let char of str2) {
    count[char.charCodeAt(0) - 97]--;
    if (count[char.charCodeAt(0) - 97] < 0) return false;
  }

  return true;
}
```
