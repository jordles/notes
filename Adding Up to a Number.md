# Adding Up to a Number

```js
// O(n)
function addUpTo(num) {
  let total = 0;
  for (let i = 0; i <= num; i++) {
    total += i;
  }
  return total;
}
```

```js
// O(1)
function addUpTo(num) {
  return (num * (num + 1)) / 2;
}

/** Deriving the formula:
 * Pairing Terms:
 *   S = 1 + 2 + 3 + ... + (n-1) + n (forwards)
 * + S = n + n - 1 + n - 2 + ...2 + 1 (backwards)
 * ---------------------------------
 * (1+n), (2+n-1), (3+n-2), all equal to => (n+1)
 * 
 * Count the Pairs = n/2 because each pair is counted twice (forwards and backwards) so we divide by 2 to get the number of pairs in the series.
 * 
 * Result:
 * S = Number of pairs * Sum of each pair
 * S = n /2 * (n+1) or S = n * (n+1) /2
*/

```
