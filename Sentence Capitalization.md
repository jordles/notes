# Sentence Capitalization

```js
// using array methods
function sentenceCapitalization(str){
  return str.split(' ').map(word => word[0].toUpperCase() + word.slice(1)).join(' ');
}
```

```js
//using regex
function sentenceCapitalization(str){
  return str.toLowerCase().replace(/\b\w/g, match => match.toUpperCase());
}
```
```js
//using loops
function sentenceCapitalization(str){
  let newStr = '';
  for(let i = 0; i < str.length; i++){
    newStr += (i === 0 || str[i-1] === ' ') ? str[i].toUpperCase() : str[i]; 
  }
  return newStr;
}
```
