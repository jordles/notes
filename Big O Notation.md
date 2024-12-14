# Big O Notation

We always drop the constants on our O notation. If we have 2 loops for an algorithm, we would normally write O(2n) because there are n + n loops. But we can write O(n) because the number of loops is the same.

If you ever have 2 or more O notations in one algorithms, you can add them together. However note that Dominant terms take precedence and will determine the final run time of the algorithm. They can simplify something like O(n^2^ + n) to O(n^2^) because the n^2^ is the dominant term, while the n is the non-dominant term. Dominant terms are always the longest running time.

---
Our Five most common run time complexities ranging from fast to slow are:
O(1) => O(log n) => O(n) => O(n log n) => O(n^2^) => O(2n!)

---

O(1) is constant time, and will always be the standard for the best case run time of an algorithm because it performs the same regardless of the number of operations. Some examples include accessing a single element in an array through an index.

O(n) is linear time, and will always be the standard for the worst case run time of an algorithm. Remember that O(n) time means you touch every element in a list once. Some examples include searching a list for an element, or adding an element to a list.

O(log n) is logarithmic time, represented by binary search, divide and conquer, and recursion. As the input size increases, the time it takes to run the algorithm also increases slowly. Some examples include searching a sorted list for an element.

O(n^2^) is quadratic time, represented by nested loops. Some examples include a nested for loop, or a for loop within a for loop, comparing each item with every other item.

O(n!) is factorial time, best represented by the traveling salesman problem. Its algorithm has to calculate permutations to find the shortest path (distance). This is a very slow algorithm and its operations becomes exponential the more we add to it. The ! is represented by the factorial function.

If say we can do 10 operations per second. The to draw a 16 grid box, log n will be 4, drawing a grid in 0.4 seconds. 1024 boxes will be 10, drawing a grid in 1 second. 

Algorithm speed isn't measured in seconds, but the growth of the number of operations. Algorithm times are written in Big O notation. 