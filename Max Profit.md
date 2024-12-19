# Max Profit

Imagine you're buying and selling stocks throughout the year. Your job is to find the biggest profit you could make by buying low and selling high only once. 

For example: A list of stock prices for each day `[7, 1, 5, 3, 6, 4]` would result in a profit of `5` (buy low, sell high).

Find the difference between the cheapest price you could have bought the stock and the most expensive price you could have sold it later on. 

```js
// loops and if statements 
function maxProfit(prices){
  let min = prices[0];
  let profit = 0;
  for(let i = 1; i < prices.length; i++){
    if(prices[i] < min){
      min = prices[i];
    } else if(prices[i] - min > profit){ 
      // we check if the difference between the current price and the min is greater than the current profit
      profit = prices[i] - min;
    }
  }
  return profit;
}
```

```js
// math methods
function maxProfit(prices){
  let min = prices[0];
  let profit = 0;
  for(let i = 1; i < prices.length; i++){
    let min = Math.min(min, prices[i]);
    let profit = Math.max(profit, prices[i] - min);
  }
  return profit;
}
```

```js
// array and math methods
function maxProfit(prices){
  let min = Math.min(...prices);
  let compare = prices.slice(prices.indexOf(min));
  let max = Math.max(...compare);
  return max - min;
}
```
