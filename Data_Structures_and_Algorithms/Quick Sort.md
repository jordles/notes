# Quick Sort

QuickSort is fast because it places elements into position early, cutting down the number of comparisons. Its logic is similar to selection sort, but instead of finding the minimum element, it places the pivot element in the correct position early on.

When we partition the array in half with a pivot, we cut down the number of operations / comparisons needed to sort the array. We no longer need to compare with the rest of the array only the half of it.

Example Problem: arr = [7, 2, 1, 8, 6, 3, 5, 4]
| Algorithm | Passes | Comparisons per pass | Total Comparisons |
| --- | --- | --- | --- |
| Selection Sort | 7 | 7 + 6 + 5 + 4 + 3 + 2 + 1 | 28 |
| QuickSort | log(n) ≈ 3 | ~ n comparisons per partition | 15 |

Quick Sort Pseudocode:

- Call the pivot helper on the array
- Base case: If the length of the array is 1 or 0, return the array
- When the helper returns to you the updated pivot index, recursively call the pivot helper on the subarray to the left of that index, and the subarray to the right of that index.

![](https://media.geeksforgeeks.org/wp-content/uploads/20240926172924/Heap-Sort-Recursive-Illustration.webp)

![](https://wendalfspells.files.wordpress.com/2016/08/lomuto_2.jpg?w=840&h=630)
![](https://wendalfspells.files.wordpress.com/2016/08/lomuto_3.jpg?w=840&h=630)
```js
// in place sort, time: O(nlogn) space: O(logn)

function quickSort(arr, start = 0, end = arr.length - 1) {
	let index = pivot(arr, start, end);
	if (index - 1 > start) quickSort(arr, start, index - 1);
	if (index + 1 < end) quickSort(arr, index + 1, end);
	return arr;
}

function quickSort(arr, start = 0, end = arr.length - 1) {
	if (start < end) {
		//this check ensures we don't go out of bounds from left to right for each partition
		let index = pivot(arr, start, end);
		quickSort(arr, start, index - 1);
		quickSort(arr, index + 1, end);
	}
	return arr;
}
```

Partition / Pivot Pseudocode:

- Create three arguments: array, start, end
- Grab a pivot from the start of the array
- Store the current pivot index in a variable to keep track of where the pivot should end up
- Loop through the array from the start until the end
  - If the pivot is greater than the current element, increment the pivotIndex variable and then swap the current element with the element at the pivot index
- Swap the pivot with the pivot index
- Return the pivot index

**Lomuto's partition scheme** - the pivot is always the last element  
**Hoare's partition scheme** - the pivot is always somewhere in the middle, and uses two pointers

**For random pivot:**

| Feature             | Lomuto (Swap to End/Front)         | Hoare (Keep Pivot in Middle)             |
| ------------------- | ---------------------------------- | ---------------------------------------- |
| Pivot Handling      | Swaps random pivot to end or front | Leaves pivot in place                    |
| Partitioning Method | Uses a single i pointer            | Uses two pointers (i, j)                 |
| Efficiency          | Slightly slower (more swaps)       | More efficient (fewer swaps)             |
| Index Returned      | Final pivot position               | Not necessarily the final pivot position |

In Hoare’s partition, the pivot does not necessarily end up in its final sorted position after partitioning. Instead, it simply divides the array into two parts where:

- Left part: Elements are ≤ pivot
- Right part: Elements are ≥ pivot

Because of this:

- The returned index is not necessarily the pivot’s final position.
- It is safe to include it in the left partition because we haven't "locked in" the pivot's exact position. This is not the case for lomuto.
- Hoare's guarantees that the elements are split correctly around the pivot value
- Since Hoare doesnt guarantee the final position of the pivot, it is not safe to exclude it in the left partition, thats why the pivot is left in place. `quickSort(arr, start, pivotIndex);`


If you want simple, readable code → Lomuto (swap pivot to edge of array)  
If you want fewer swaps and better performance → Hoare (keep pivot in place)

```js
// Lomuto 
function pivot(arr, start = 0, end = arr.length - 1) {
	let pivotIndex = start;
	for (let i = start + 1; i <= end; i++) {
		if (arr[i] < arr[start]) {
			pivotIndex++;
			[arr[i], arr[pivotIndex]] = [arr[pivotIndex], arr[i]]; //remember we must swap to partition the numbers to be on the left of the pivot and the numbers to be on the right of the pivot. 
      //We are always swapping the last number that was bigger than the pivot with the most recent number that was smaller than the pivot
		}
	}
	[arr[start], arr[pivotIndex]] = [arr[pivotIndex], arr[start]];
	return pivotIndex;
}

function lomutoPartition(arr, left, right) {
    let pivot = arr[right];
    let i = left;
    for (let j = left; j < right; j++) {
        if (arr[j] <= pivot) { //accommodate same numbers
            [arr[i], arr[j]] = [arr[j], arr[i]];
            i++;
        }
    }
    [arr[i], arr[right]] = [arr[right], arr[i]];
    return i; // pivot is at index i now
}

function partition(arr, left, right){ // not lomuto, uses the beginning as a pivot. 
  let pivot = arr[left];
  let i = left + 1;

  for(let j = left + 1; j <= right; j++){
    if(arr[j] < pivot){
      [arr[i], arr[j]] = [arr[j], arr[i]];
      i++;
    }
  }

  [arr[left], arr[i - 1]] = [arr[i - 1], arr[left]];
  return i - 1;
}

// with a comparitor function
function pivot(
	arr,
	comparator = (a, b) => a - b,
	start = 0,
	end = arr.length - 1
) {
	// good luck!
	let pivotValue = arr[start];
	let pivotIndex = start;
	for (let i = start + 1; i <= end; i++) {
		if (comparator(arr[i], pivotValue) < 0) {
			//if it's negative then the current element is less than the pivotValue
			pivotIndex++;
			[arr[i], arr[pivotIndex]] = [arr[pivotIndex], arr[i]];
		}
	}
	[arr[start], arr[pivotIndex]] = [arr[pivotIndex], arr[start]];
	return pivotIndex;
}
```

```js
// Hoare
function quickSort(arr, start = 0, end = arr.length - 1) {
	if (start < end) {
		let pivotIndex = hoarePartition(arr, start, end);
		quickSort(arr, start, pivotIndex); //recall that hoare doesnt guarantee the pivot final position, so pivot is left inside the recursion.
		quickSort(arr, pivotIndex + 1, end);
	}
}

function hoarePartition(arr, start, end) {
	let pivot = arr[Math.floor(Math.random() * (end - start + 1)) + start]; //Math.floor((start + end) / 2)
	let i = start - 1;
	let j = end + 1;

	while (true) {
		do {
			i++;
		} while (arr[i] < pivot); // Move i forward until we find a value ≥ pivot
		do {
			j--;
		} while (arr[j] > pivot); // Move j backward until we find a value ≤ pivot

		if (i >= j) return j; // Return partition index

		[arr[i], arr[j]] = [arr[j], arr[i]]; // Swap values to keep partition correct (in this case less than pivot on left, greater than pivot on right)
	}
}

function hoarePartition(arr, low, high) {
	let pivotIndex = Math.floor(Math.random() * (high - low + 1)) + low; //adding the low offsets the random number by the low index
	let pivot = arr[pivotIndex];

	let i = low;
	let j = high;

	while (true) {
		while (arr[i] < pivot) i++; // Move i right
		while (arr[j] > pivot) j--; // Move j left

		if (i >= j) return j; // Return partition index when pointers cross

		[arr[i], arr[j]] = [arr[j], arr[i]]; // Swap misplaced elements
		i++; // Move `i` forward after swapping
		j--; // Move `j` backward after swapping
	}
}
```

Alternatives:

```js
//simple time complexity: O(nlogn) space complexity: O(n)
function quicksort(arr) {
	if (arr.length <= 1) {
		return arr; // Base case: already sorted
	}

	let pivot = arr[arr.length - 1]; // Choosing the last element as pivot

	// Math.floor(Math.random() * arr.length); // Pick a random pivot index
	let left = []; // Elements smaller than pivot
	let right = []; // Elements greater than pivot

	for (let i = 0; i < arr.length - 1; i++) {
		if (arr[i] < pivot) {
			left.push(arr[i]); // Elements smaller than pivot go here
		} else {
			right.push(arr[i]); // Elements greater than pivot go here
		}
	}

	// Recursively sort left and right arrays, and combine them with pivot
	return [...quicksort(left), pivot, ...quicksort(right)];
}
```
