# Javascript

## Sharing Code Blocks: Exports & Imports

Without modules:
  - Global namespace pollution 
    - all functions and variables are attached to the global object. Making nothing private or scope protected
    - Might overwrite each other, and using same function names causes confusion
  - No clear dependencies between files
    - Files must be loaded in the right order
  - Hard to scale or reuse
    - You can't import just part of a file — you load the entire script whether you use one function or ten. This increases page size and load time.


When using __ES Modules__, you can use the `export` and `import` keywords to export and import code blocks.
We need to add `"type":"module"` into our `package.json` file. This is the only way to add modules natively on js.

ES Modules are loaded asynchronously and statically (at compile time). 

ES Modules are async because loading and evaluating modules actually returns a promise. 
Statically, modules must be loaded before they can be used. So they have to be used in the beginning. This enables optimizations like tree shaking and preloading. 

Default exports mean we dont need to destructure it when we import, and we can give it any name we want.
```js
const add = (x, y) => {
  return x + y;
}

export { add }; //named export; you can export multiple function, separated by commas
export default add; //default export; you can only export one function
export default { add }; //named export default; you can export multiple function, separated by commas

import add from './add'; // import
import {add as addAlias} from './add'; // using aliases / renaming
import * as addAll from './add'; // import all as an object
import defaultExport, {add} from './add'; // import default and named export together
import defaultExport, * as addAll from './add'; // import default and all together
```

With __CommonJS__, you can use the `module.exports` keyword to export code blocks and `require` to import them.  

CommonJS is a Node.js environment specific module system. 

CommonJs is loaded synchronously and dynamically (at runtime). This can potentially block execution for larger modules and slow down performance.

Since its synchronous, modules must be loaded, parsed, and evaluated before they can be used and the code can move on to the next line.  

CommonJS is dynamic because you can call `require()` anywhere in the file, including inside functions, conditionals, and loops. It doesnt need to be at the top of the file, and `require()` is really just a function call. This can be useful if you want to reduce start up time or a module is expensive to load, but you still need to use it way later. 

```js
const add = (x, y) => {
  return x + y;
}

module.exports = add; //default export; you can only export one function
module.exports = { add }; //named export; you can export multiple function, separated by commas
const add = require('./add'); // import
const { add : addAlias } = require('./add'); // import using aliases with objects
```

## Variables 

Variables are always camelCase. 

![alt text](media/js-variables.png)

Variables with __var__ are global scoped, unless its placed inside a function, then it becomes function scoped. The variables themselves are hoisted to the top of the scope (not its value) and is `undefined` initially.  
Variables with __let__ and __const__ are block scoped (if, for, anything with brackets). They are not hoisted and throw a reference error.

## Functions

Functions are always camelCase.

__Function Declarations__ are always hoisted to the top of their scope. `function add(x, y) {...}`  
__Function Expressions / Arrow Functions__ are not hoisted, `var` keyword rules apply here as well, so only var is hoisted. `var add = function(x, y) {...}`

