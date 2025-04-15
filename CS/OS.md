# Operating System

- An __operating system (OS)__ is a software application that manages hardware resources, provides access to other software, and coordinates the execution of the processes in a computer system.
- The OS is responsible for allocating memory, scheduling processes, and ensuring that they are executed in the correct order.
- The OS also provides a user interface for interacting with the system, such as the graphical user interface (GUI) or command line interface (CLI).
- The OS is also responsible for handling hardware interrupts, such as keyboard input or mouse movement.
- The OS is also responsible for handling software interrupts, such as system calls or exceptions.

__What is an OS?__
- Interface between hardware and users/programs.
- Resource manager (CPU, memory, I/O).

__Types of OS:__
- Batch, Time-sharing, Real-time, Distributed, Embedded, Mobile OS.

__OS Services:__
- Program execution, I/O, file system manipulation, communication, error detection, resource allocation, accounting, security.


## Processes and Threads
Process vs Thread – Units of execution; thread is part of a process

A __process__ is:
- An independent instance of a running program.
- Has its own memory space (code, data, stack, heap).
- Contains everything needed to execute: registers, stack pointer, program counter, etc.

Examples include: `node index.js` which __runs a node.js process__. It has its own memory space, so it can execute code and store data.

A __thread__ is:
- A part of a process.
- Runs on a single CPU core.
- Has its own stack and register space.
- Runs concurrently with other threads in the same process.
- All threads in a process share the same memory space, which makes communication between threads fast. 

Node.js is single-threaded for Javascript code. __It runs on a single thread, so it can only execute one piece of code at a time__. We use async await to execute multiple pieces of code at the same time through a non-blocking event loop.



## Event Loop – How OS handles multiple running processes

### Browser Event Loop 

Event Loop: One the first run, run all synchronous code and queue up asynchronous events to be executed later. The code keeps going and when the asynchronous event is done, it is callbacked to the event loop. If it is a macro task like set timeout or set interval, it will be executed at the next event loop tick. If it is a micro task like a fulfilled promise, it will be executed as soon as it can, before the start of the next event loop.

__Stacks__ run in a LIFO order (last in, first out)  
__Queue__ runs in a FIFO order (first in, first out)

__Macrotasks / Task Queue / Callback Queue__ - block the main thread until theyre finished. Web API tasks are macrotasks. For callback-based apis.

__Microtasks__ - run as soon as it can and do not block the main thread. It means all async operations are microtasks. For promise-based apis.  
Microtasks includes the promise callbacks like: then catch finally resolve reject, queueMicrotask, new MutationObserver, await  

The __Web API__ helps us run scripts in the background without blocking our code from running by offloading it to another thread. this will not be available when we start running js from node, since we dont have the window object (wep api)

__Event Loop Process:__

__Event Loop Priority: Call Stack ➡ Microtask Queue ➡ Task Queue__
1. All code is executed on the main thread through the call stack. Call stack is executed and removed per line of code, however if a function full of tasks gets added to the call stack, everything inside it will execute like a nested call stack. 
2. Web API tasks are added to the call stack, which then registers those callbacks on the Wep API thread where its handled by the browser, which is a separate thread from the main thread.
3. The main thread does not wait for the web api thread to finish, it just moves on to the next line of code.
4. When the web api thread finishes, the callback based apis are placed in the task queue, until the call stack is empty, then it will be executed.
5. Remember that promises use fetch or async await, which both use the Web API thread. Any promises that resolves will be pushed into the microtask queue. The event loop __will prioritize the microtask queue__ before the task queue. 


```js

new Promise((resolve) => {
  setTimeout(() => {
    resolve('Done!')
  }, 100)
})
.then( result => console.log(result) );

```

An Example with a Promise:
1. Promise constructor is added to the call stack. This creates an empty promise object. PromiseState is set to pending.
2. Our callback function is called on the call stack. setTimeout() is added to the call stack. 
3. This places the setTimeout's callback in the Web API thread.
4. The call stack is now empty again, and moves on to `then()` which fills the PromiseFulfillReaction field within our empty promise object.
5. Call stack is empty again, and by now the web api task is done, and moves the task to the task queue. 
6. Nothing is on the call stack, so the task inside task queue is bumped by the event loop to the call stack to execute. 
7. `() => resolve('Done!')` is added to the call stack and executes to change the PromiseState to fulfilled. This causes the promise object to move the fulfilled content to the microtask queue.
8. Nothing is on the call stack, so the microtask is bumped by the event loop to the call stack to execute.
9. The call stack calls `console.log(result)` which logs Done! to the console.

```js
new Promise((resolve) => {
  console.log(1)
  resolve(2)
}).then(result => console.log(result))

console.log(3);
```

1. new promise creates an empty promise object
2. inside the function, we log 1, then resolve the promise with the result of 2
3. We tell the promise we want to console.log the result, and place it in the microtask queue
4. We log 3
5. call stack is empty, so we move the microtask to the call stack and finish logging 2


### Node.js Event Loop 

```js

app.get('/users/:id', async (req, res) => {
  const user = await db.query('SELECT * FROM users WHERE id = $1', [req.params.id]);
  res.json(user.rows[0]);
});

```

This code will run in the main thread, but PostgreSQL query is async, and runs in the libuv thread pool or through a non-blocking driver / event loop. The event loop will pick up the callback and run it.

__Libuv__ is a C/C++ library that Node.js uses under the hood. Its thread pool is for offloading slow/blocking operations so that the main JavaScript thread can stay non-blocking.

Scheduling – How CPU time is divided among processes (FCFS, Round Robin, etc.)

Memory Management – Virtual memory, paging, segmentation.

File Systems – FAT, NTFS, ext4 — how data is stored and organized.

System Calls – How user programs interact with the OS.

Multitasking / Context Switching – How OS handles multiple running processes.

