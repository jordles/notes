# Big O Notation

Our Five most common run time complexities ranging from fast to slow are:
O(1) => O(log n) => O(n) => O(n log n) => O(n^2^) => O(2n!)

O(1) is constant time, and will always be the standard for the best case run time of an algorithm because it performs the same regardless of the number of operations. 

O(n) is linear time, and will always be the standard for the worst case run time of an algorithm. Remember that O(n) time means you touch every element in a list once.

O(n!) is factorial time, best represented by the traveling salesman problem. Its algorithm has to calculate permutations to find the shortest path (distance). This is a very slow algorithm and its operations becomes exponential the more we add to it. The ! is represented by the factorial function.

If say we can do 10 operations per second. The to draw a 16 grid box, log n will be 4, drawing a grid in 0.4 seconds. 1024 boxes will be 10, drawing a grid in 1 second. 

Algorithm speed isn't measured in seconds, but the growth of the number of operations. Algorithm times are written in Big O notation. 