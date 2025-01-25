# Javascript Objects

| Methods | Time Complexity |
| --- | --- |
| Object.keys() | O(N) |
| Object.values() | O(N) |
| Object.entries() | O(N) |
| hasOwnProperty() | O(1) |

Arrays and null data types are considered objects in the background and will appear as so when checking its data type through `typeof`.

# JavaScript Maps
**When to Use Map Over Object?**
* When keys are not guaranteed to be strings or symbols.
* When insertion order of keys must be preserved.
* When frequent additions and deletions are required.
* When you need a more predictable structure with no prototype interference.


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

| Methods | Description |
| --- | --- |
| `map.get(key)` | returns the value associated with the key |
| `map.set(key, value)` | sets the value associated with the key | 
| `map.size()` | returns the number of entries in the map |
| `map.has(key)` | returns true if the key is in the map |
| `map.delete(key)` | deletes the entry with the given key |
| `map.clear()` | deletes all entries in the map |
| `map.keys()` | returns an iterator of keys in the map |
| `map.values()` | returns an iterator of values in the map |
| `map.entries()` | returns an iterator of key-value pairs in the map |
| `map.forEach(callback)` | applies a callback to each entry in the map |
