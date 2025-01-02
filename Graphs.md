# Graphs

A non-linear data structure that models relationships between objects. It consists of two main components: Vertices (nodes) and Edges. 

**Vertices (Nodes)** - are the objects that are represented in the graph. They are the entities of the graph.

**Edges** - are the connections between vertices. They are the links between the vertices and represent the relationships between them.

***

**How do we represent a graph?**

[**Adjacency Matrix**](#adjacency-matrix) - a matrix that shows the connections between the vertices. It is a 2D array where the rows and columns represent the vertices and the values represent the edges.

[**Adjacency List**](#adjacency-list) - a list that shows the connections between the vertices. It is a dictionary where the keys represent the vertices and the values represent the edges.

**Edge List** - a list that shows the connections between the vertices. It is a list of tuples where the first element is the source vertex and the second element is the destination vertex.

***

## Adjacency Matrix
![](https://mathworld.wolfram.com/images/eps-svg/AdjacencyMatrix_1002.svg)

## Adjacency List
![](https://dkq85ftleqhzg.cloudfront.net/algo_book/images/graphs/graph_10b.png)

```js
// using objects
class Graph{
  constructor(){
    this.adjacencyList = {};
  }
  addVertex(vertex){ //O(1)
    if(!this.adjacencyList[vertex]) this.adjacencyList[vertex] = [];
  }
  removeVertex(vertex){
    while(this.adjacencyList[vertex].length){
      const adjacentVertex = this.adjacencyList[vertex].pop();
      this.removeEdge(vertex, adjacentVertex);
    }
    delete this.adjacencyList[vertex]; //delete the actual vertex from the adjacency list
  }
  addEdge(vertex1, vertex2){ //O(1)
    this.adjacencyList[vertex1].push(vertex2);
    this.adjacencyList[vertex2].push(vertex1);
  }
  removeEdge(vertex1, vertex2){ 
    //O(n)
    this.adjacencyList[vertex1] = this.adjacencyList[vertex1].filter( v => v !== vertex2)
    this.adjacencyList[vertex2] = this.adjacencyList[vertex2].filter( v => v !== vertex1)

    //without using filter O(n^2)
    // this.adjacencyList[vertex1].splice(this.adjacencyList[vertex1].indexOf(vertex2), 1);
    // this.adjacencyList[vertex2].splice(this.adjacencyList[vertex2].indexOf(vertex1), 1);
  }
}

```