Terminology

├── [Programming](#programming)  
├── [Operating System](#operating-system)  
├── [pgAdmin](#pgadmin)  
└── [pg library](#pg-library)


## Programming

| Term                                    | What It Means                                                                               |
| --------------------------------------- | ------------------------------------------------------------------------------------------- |
| Function                                | A reusable block of code that performs a task                                               |
| Parameter vs Argument                   | Parameter = placeholder in a function; Argument = actual value passed                       |
| Variable Scope                          | Where a variable is accessible (global, local/block)                                        |
| Return Value                            | What a function gives back after execution                                                  |
| Data Types                              | Number, string, boolean, null, undefined, object                                            |
| Mutable/Immutable                       | Whether a value can be changed (objects = mutable, strings = immutable)                     |
| API (Application Programming Interface) | A set of functions or rules for interacting with a system or program                        |
| Runtime vs Compile Time                 | When code runs vs when it is translated (JS is interpreted, not compiled)                   |
| Syntax vs Semantics                     | Syntax = code structure, Semantics = meaning/logic                                          |
| Error Types                             | Syntax error, runtime error, logic error                                                    |
| Control Structures                      | if, switch, loops (for, while), try/catch                                                   |
| Program                                 | a set of instructions that a computer follows to perform a task; also known as software.    |
| Algorithm                               | A step-by-step method for solving a problem or performing a computation.                    |
| Data structure                          | A format for organizing and storing data (e.g., array, stack, queue, tree, hash table).     |
| Abstraction                             | Hiding implementation details and showing only the necessary features.                      |
| Encapsulation                           | Binding data and methods that manipulate that data within a single unit (class/object).     |
| Compiler                                | Translates source code into machine code.                                                   |
| Interpreter                             | Executes code line-by-line without compiling.                                               |
| Runtime                                 | The time period when a program is running. Includes memory management, execution flow, etc. |
| Operating System (OS)                   | Software that manages computer hardware and software resources.                             |
| Concurrency                             | Multiple processes/threads running simultaneously (often in parallel).                      |
| Networking                              | The exchange of data between devices (e.g., using TCP/IP).                                  |
| Process                                 | An instance of a program in execution.                                                      |
| Thread                                  | The smallest unit of execution within a process.                                            |
| Protocol                                | A set of rules for transmitting data (e.g., HTTP, FTP, TCP).                                |
| Latency                                 | The delay between a request and a response.                                                 |
| Throughput                              | The amount of work a system can process in a given time.                                    |
| Scalability                             | A system’s ability to handle growth (e.g., users, data, traffic).                           |
| Fault tolerance                         | The ability of a system to continue operating when components fail.                         |


### 3 Basic Logic Structures that describe how to write code in Programming:
1. Sequence; An action or event leads to another action or event in a predetermined order. The sequence can contain any number of actions, but cannot be skipped. 
2. Selection; Referring to if-then-else statements and logic. Depending on the answer, the program takes one of two courses of action, after which the program moves on to the next event.
3. Iteration; describes the logic of loops. A set of instructions that the program repeats until a condition is met or count is reached. Each pass in a loop is called an iteration. 

## Operating Systems

Operating Systems:
Process vs Thread – Units of execution; thread is part of a process.  
Scheduling – How CPU time is divided among processes (FCFS, Round Robin, etc.)  
Memory Management – Virtual memory, paging, segmentation.  
File Systems – FAT, NTFS, ext4 — how data is stored and organized.  
System Calls – How user programs interact with the OS.  
Multitasking / Context Switching – How OS handles multiple running processes.  


## Hardware


### CPU: Central Processing Unit
Executes instructions and performs calculations on data with programs.

Subcomponents: 
- ALU (Arithmetic Logic Unit) – performs calculations and logic.
- CU (Control Unit) – directs the operation of the processor.
- Registers – small, fast storage used during instruction execution.


Relevance to programming:
- CPU architecture (e.g., x86, ARM) affects instruction sets, binary compatibility.
- Clock speed, cores, and threading impact performance.
- Programmers sometimes optimize for CPU-intensive operations.


RAM: Random Access Memory
ROM: Read Only Memory
GPU: Graphics Processing Unit
USB: Universal Serial Bus
HDMI: High-Definition Multimedia Interface
SSD: Solid State Drive
HDD: Hard Disk Drive
SSD vs HDD: SSD is faster, HDD is more reliable
RAM vs ROM: RAM is volatile, ROM is non-volatile