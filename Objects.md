# Objects

| Methods | Time Complexity |
| --- | --- |
| Object.keys() | O(N) |
| Object.values() | O(N) |
| Object.entries() | O(N) |
| hasOwnProperty() | O(1) |


## Maps

| Feature	| Object | Map |
| --- | --- | --- |
| Key types |	Keys are always strings or symbols.	|Keys can be any data type: objects, functions, etc. |
| Order of keys |	Keys are unordered (insertion order not guaranteed, except for ES6+ for strings and symbols).	| Keys retain the order of insertion |
| Iteration	| Iteration requires manual methods like Object.keys(), Object.values(), or for...in. | Can iterate directly with Map methods like map.entries(), map.keys(), map.values(). |
| Performance	| Optimized for small collections and frequent operations like property access. |Optimized for frequent addition/removal of entries. |
| Prototype chain	| Has a prototype chain (Object.prototype), which may interfere with custom keys like "toString".	| No prototype chain interference; Map keys are isolated. |
| Default keys | Comes with default keys like "toString", "hasOwnProperty", etc. | No default keys; only what you explicitly set. |
| Size retrieval | Need to calculate manually with Object.keys(obj).length.	| Use the size property (constant time). |
| Serialization | Can easily convert to/from JSON. | Requires manual conversion for serialization. |
