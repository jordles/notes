# Word Counter

```js
// using javascript's built in objects
function wordCounter(str.toLowerCase()){
  return str.split(/\s+/g).reduce((acc, word) => {
    acc[word] = (acc[word] || 0) + 1;
    return acc;
  }, {});
}
```

[Hash Tables](<Hash Tables.md>)
```js
// using my own hash table
function wordCounter(str.toLowerCase()){
  const wordMap = new HashTable();
  const words = str.split(/\s+/g);

  for(let word of words){
    wordMap.set(word, (wordMap.get(word) || 0) + 1);
  }

  return wordMap;
}
```
