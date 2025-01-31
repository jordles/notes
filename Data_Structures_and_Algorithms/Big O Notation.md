# Big O Notation
Big O notation is a way of expressing the time complexity / running time of an algorithm and tells us how fast an algorithm is. Big O notation lets you compare the number of operations. It tells you how fast the algorithm grows, because they grow at different rates. [Space complexity](#space-complexity) is not included in Big O notation, but focuses on memory usage and efficiency. 

We always drop the constants on our O notation. If we have 2 loops for an algorithm, we would normally write O(2n) because there are n + n loops. But we can write O(n) because the number of loops is the same. Even O(1) is simplified for examples like consistently have 3 operations every time. We only care to simplify the overall run time of the algorithm.

If you ever have 2 or more O notations in one algorithms, you can add them together. However note that Dominant terms take precedence and will determine the final run time of the algorithm. They can simplify something like O(n<sup>2</sup> + n) to O(n<sup>2</sup>) because the n<sup>2</sup> is the dominant term, while the n is the non-dominant term. Dominant terms are always the longest running time.

We usually look for:
* Fastest
* Less Memory Intensive
* Readability
* Number of Operations (number of loops)

![Big O Graph Comparison](https://miro.medium.com/v2/resize:fit:678/0*ouBkTMgA_yg_Etfz.png)
## Shortcuts
* Assignment, Arithmetic, Array/Object Access, Math.min (the trend will be a flat line the more we add to it) => O(1)
* 1 loop aka touching every element => O(n)
* 2 loops => O(n<sup>2</sup>)

---
Our five most common run time complexities ranging from fast to slow are:
O(1) => O(log n) => O(n) => O(n log n) => O(n<sup>2</sup>) => O(2n!)

---

O(1) is constant time, and will always be the standard for the best case run time of an algorithm because it performs the same regardless of the number of operations. Some examples include accessing a single element in an array through an index. The graph will be a straight flat line.

O(n) is linear time, and will always be the standard for the worst case run time of an algorithm. Remember that O(n) time means you touch every element in a list once. Some examples include searching a list for an element, or adding an element to a list. The graph will be a straight line with a slope of 1.

O(n + m) represents two different sized arrays. The time and space complexity will be determined by adding the complexity of each array. We iterate over each array once. 

O(log n) is logarithmic time, represented by binary search, divide and conquer, and recursion. As the input size increases, the time it takes to run the algorithm also increases slowly. Some examples include searching a sorted list for an element, or dividing something in half. The graph will show a parabolic curve.

O(n<sup>2</sup>) is quadratic time, represented by nested loops. Some examples include a nested for loop, or a for loop within a for loop, comparing each item with every other item. The graph will show a quadratic, exponential, parabolic curve

O(n!) is factorial time, best represented by the traveling salesman problem. Its algorithm has to calculate permutations to find the shortest path (distance). This is a very slow algorithm and its operations becomes exponential the more we add to it. The ! is represented by the factorial function.

If say we can do 10 operations per second. The to draw a 16 grid box, log n will be 4, drawing a grid in 0.4 seconds. 1024 boxes will be 10, drawing a grid in 1 second. 

Algorithm speed isn't measured in seconds, but the growth of the number of operations. Algorithm times are written in Big O notation. 


# Space Complexity 

Auxiliary Space Complexity - how much space is used by the algorithm, not including the space taken and used by the input. 

O(1) is constant space. The space being taken is constant. Adding and manipulating a constant variable is constant space. Console logs are not stored in memory so they are constant space.

O(n) is linear space. The space being taken is linear. Adding to an array n times is linear space.


## Shortcuts
* Most primitives (booleans, numbers, undefined, null) are constant space => O(1)
* Strings, reference types are generally O(n), where n is the length for arrays or the number of keys for objects => O(n)
