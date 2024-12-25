# Valid Parentheses
Utilizing stack

```js 
// O(n)
function isValidParentheses(str){
  let stack = [];

  const brackets = {
    '(': ')',
    '[': ']',
    '{': '}'
  };

  for(let char of str){
    if(brackets[char]){
      stack.push(brackets[char]); //push the closing bracket
    } else if(stack.pop() !== char){ // when we pop the closing bracket, it should be the same as the current char
      return false;   
    }

  }

  return !stack.length; //if length = 0, 
}
```

```js
//allow content between brackets O(n)
function isValidParentheses(str){
  let stack = [];

  const brackets = {
    '(': ')',
    '[': ']',
    '{': '}'
  };

  for(let char of str){
    if(brackets[char]){
      stack.push(brackets[char]);
      console.log(stack)
    } 
    else if(char === stack[stack.length-1]){
      stack.pop();
    }
  }
    console.log(stack.length)
  return !stack.length;
}
//console.log(isValidParentheses('([lkd;lfk](slkadjlk)){}'))
```


