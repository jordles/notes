# Javascript

## Sharing Code Blocks: Exports & Imports

When using __ES Modules__, you can use the `export` and `import` keywords to export and import code blocks.
We need to add `"type":"module"` into our `package.json` file.

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

```js
const add = (x, y) => {
  return x + y;
}

module.exports = add; //default export; you can only export one function
module.exports = { add }; //named export; you can export multiple function, separated by commas
const add = require('./add'); // import
const { add : addAlias } = require('./add'); // import using aliases with objects
```

