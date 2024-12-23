# Data Structures and Algorithms

## Table of Contents

- [Big O Notation](#big-o-notation)
- [Algorithms](#algorithms)
- [Data Structures](#data-structures)

## [Big O Notation](<Big O Notation.md>)

Big O notation is a way of expressing the time complexity / running time of an algorithm and tells us how fast an algorithm is. Big O notation lets you compare the number of operations. It tells you how fast the algorithm grows, because they grow at different rates. Space complexity is not included in Big O notation, but focuses on memory usage and efficiency. 

To calculate on a calculator using log<sub>10</sub> use log<sub>10</sub>number / log<sub>10</sub>base with our base being 2. 

## Algorithms
Algorithms sometimes involve time complexity which uses [Logarithms](Logarithms.md)

| Algorithm | Description | Time Complexity |
| --- | --- | --- |
| Simple Search | a search algorithm that finds the position of a target value within an array by comparing each element of the array with the target value until the target value is found. The running time is linear.| O(n) |
| [Binary Search](#binary-search) | a search algorithm that finds the position of a target value within a sorted array by dividing the search interval in half on each iteration and checking if the target value is less than or greater than the middle element. The running time is logarithmic. | O(log n) |
| [Selection Sort](#selection-sort) | a sorting algorithm that sorts an array by repeatedly finding the minimum element from unsorted part and putting it at the beginning. The running time is quadratic. | O(n<sup>2</sup>) |


## Interview Questions
[Reversing a String](<Reverse String.md>) - a string reversal algorithm that reverses a string by swapping each character with its corresponding character at the end of the string. The running time is linear.
[Reversing an Integer](<Reverse Integer.md>) - a string reversal algorithm that reverses an integer by swapping each digit with its corresponding digit at the end of the integer. The running time is linear.
[Sentence Capitalization](<Sentence Capitalization.md>) - an algorithm that capitalizes the first letter of each word in a sentence. The running time is linear. 
[Palindrome](Palindrome.md) - a string reversal algorithm that checks if a string is a palindrome by reversing the string and comparing it to the original string. The running time is linear. 
[Fizz Buzz](<Fizz Buzz.md>) - an algorithm that checks if a number is divisible by 3 and 5. The running time is linear. 
[Array Chunking](<Array Chunking.md>) - an algorithm that splits an array into smaller chunks. The running time is linear. 
[Max Profit](<Max Profit.md>) - an algorithm that finds the maximum profit by comparing the prices of consecutive days through buying low and selling high only once. The running time is linear. 
[Two Sum](<Two Sum.md>) - an algorithm that finds two numbers in an array that sum up to a target value. The running time is linear. 
[Reverse Linked List](<Linked Lists.md>) - an algorithm that reverses a linked list by swapping the next and previous pointers of each node. The running time is linear.

## Binary Search

1. Suppose you have a sorted list of 128 names, and you’re searching
through it using binary search. What’s the maximum number of
steps it would take? 64, 32, 16, 8, 4, 2, 1 = 7 steps or 2^7^ = 128

2. Suppose you double the size of the list. What’s the maximum
number of steps now? 128, 64, 32, 16, 8, 4, 2, 1 = 8 steps or 2^8^ = 256


```js
const binarySearch = (arr, target) => {
  arr.sort((a, b) => a - b);
  let left = 0;
  let right = arr.length - 1;
  while (left <= right) {
    const mid = Math.floor((left + right) / 2);
    if (arr[mid] === target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}
```

## Selection Sort 

Since the algorithm is linear time, but also runs an n number of times each time, its O(n<sup>2</sup>). It should be noted the actual runtime is O(n * 1/2 * n) because we reduce the number of elements in each iteration by one leaving about half of the comparisons made at the end. But constants are ignored on Big O notation. 

```js
const selectionSort = (arr) => {
  for (let i = 0; i < arr.length; i++) {
    let min = i;
    for (let j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[min]) {
        min = j;
      }
    }
    if (min !== i) {
      [arr[i], arr[min]] = [arr[min], arr[i]];
    }
  }
  return arr;
}
``` 

## Data Structures

[Arrays](Arrays.md) - allocate the appropriate space in memory and they hold a fixed number of items. When you add to an array, you have to shift all the elements over to make space for the new element and make sure all the elements are still in order and indexed next to each other in memory. 

[Linked Lists](<Linked Lists.md>) - a data structure that contains a series of nodes, each node contains a value and a reference to the next node. Each item stores the address of the next item in the list. If you want to read each node one at a time, linked lists are great for that because theyre all next to each other. Arrays are on the other hand are great if you want to read random elements, since they all have predetermined indexes and address.

Array of Linked Lists - when you search, its slower than arrays, but its faster than linked lists alone because you searched the array first and then the linked list, reducing the search time. When you insert, its faster than arrays, and the same amount of time for linked lists because you insert at the end. When you delete, its faster than arrays, and the same amount of time for linked lists because you delete at the end.

| | Arrays | Linked Lists |
| --- | --- | --- |
| Read | O(1) | O(n) |
| Insert | O(n) | O(1) |
| Delete | O(n) | O(1) |

With Arrays its easier to read because you can just access the element by its index allowing random access, rather than sequential access.

With Linked Lists its easier to insert and delete because you can just point the next node to the new node's address. With arrays its linear time because you have to shift all the elements over to make space for the new element.

Usually Arrays and Linked Lists are the building blocks for much more complex hybrid data structures. 

[Stacks](Stacks) - a linear data structure that allows you to push and pop elements from the top of the stack. It follows the LIFO (Last In First Out) principle.

[Queues](Queues.md) - a linear data structure that allows you to enqueue and dequeue elements from the front of the queue, and acts like a waiting line. It follows the FIFO (First In First Out) principle.

## Sources

[HuXn](https://www.youtube.com/watch?v=wBtPGnVnA9g)
Grokking Algorithms by Aditya Bhargava



