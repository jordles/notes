# Architecture

## Hardware
├── [CPU](#cpu-central-processing-unit)  
├── [Operating System](#operating-system)  
├── [pgAdmin](#pgadmin)  
└── [pg library](#pg-library)

### CPU: Central Processing Unit
Executes instructions and performs calculations on data with programs.

![](https://miro.medium.com/v2/resize:fit:1400/1*sh8hDjO4x0S0Q_JGxGTKcQ.png)  
![](https://media.licdn.com/dms/image/v2/D5612AQHlPQcwFYRWyA/article-cover_image-shrink_600_2000/article-cover_image-shrink_600_2000/0/1710573972131?e=2147483647&v=beta&t=ZqRVSgvKS7NF9h-ClUWQcJKcXUZqWAdJ2P7aqi904zk)  
![](https://softwareg.com.au/cdn/shop/articles/481px-ABasicComputer_svg_f87b43cb-213c-4678-9860-897a1cbb5ce3.png?v=1707784055)

__Subcomponents:__
- ALU (Arithmetic Logic Unit) – performs calculations and logic.
- CU (Control Unit) – directs the operation of the processor.
- Registers – small, fast storage used during instruction execution.
- Memory Unit – storage for data and instructions.
- Bus System – connects components in the CPU and memory unit.
- Input/Output Unit (I/O) – connects the CPU to the outside world.

__Relevance to programming:__
- CPU architecture (e.g., x86, ARM) affects instruction sets, binary compatibility.
- Clock speed, cores, and threading impact performance.
- Programmers sometimes optimize for CPU-intensive operations.

__Data Retrieval Hierarchy:__  
Registers ➡ L1 Cache ➡ L2 Cache ➡ L3 Cache ➡ Main Memory (RAM) 

Using a Library Analogy:

Main Memory ➡ Library building and the shelves full of books (data)  
Buses ➡ The roads leading to and from the library   
Memory Controller ➡ The librarian who coordinates the flow of data between the library and the buses   
CPU ➡ The library manager who coordinates the flow of data between the library and the buses

---

#### ALU (Arithmetic Logic Unit)

The ALU is the horsepower of the CPU. It performs arithmetic and logic operations on data. 
- Arithmetic Operations: Addition, subtraction, multiplication, division etc.
- Logical Operations: AND, OR, NOT, XOR, etc.

ALU is a circuit made up of:
- Adders, Subtractors, Multipliers, Dividers; these are dedicated circuits optimized for each operation.
- Logic Gates (AND, OR, NOT, XOR, etc.) are used to perform logical operations.
- Shifters and Rotators are used for shifting and rotating data.
- Registers (Internal) are used to store temporary or intermediate results of operations / calculations to be used in the next instruction.

#### CU (Control Unit)

The Control Unit is the "manager" of the CPU. It doesn't execute instructions itself, but it directs all the other parts of the CPU to do so. 

Key Responsibilities:
- Instruction Fetching: Retrieves the next instruction to be executed from main memory. It uses the Program Counter (PC) to keep track of the memory address of the next instruction.   
- Instruction Decoding: Analyzes the fetched instruction to determine the operation to be performed, the operands involved, and the addressing mode. This involves breaking down the instruction's binary code into its constituent parts.   
- Control Signal Generation: Based on the decoded instruction, the CU generates a sequence of electrical signals that control the other components of the CPU. These signals tell the ALU what operation to perform, which registers to use, and when to write results back to registers or memory.   
- Managing Instruction Flow: Controls the sequence of instruction execution, including handling jumps, loops, and conditional branches. It updates the Program Counter (PC) accordingly.

#### Registers

Registers are small, high-speed storage locations within the CPU. They hold data that the CPU is actively working on. Accessing data in registers is significantly faster than accessing data in main memory.

Types of Registers:
- General-Purpose Registers (GPRs): Used to store operands for ALU operations, intermediate results, memory addresses, and other data. Modern CPUs have a set of these (e.g., eax, ebx, ecx, edx in x86).
- Special-Purpose Registers: These have specific roles:
    - __Program Counter (PC) / Instruction Pointer (IP)__: Holds the memory address of the next instruction to be fetched.
    - __Instruction Register (IR)__: Holds the currently fetched instruction that is being decoded.
    - Stack Pointer (SP): Points to the current top of the stack in memory (used for function calls and local variables).   
    - __Status Register / Flag Register__: Contains bits that reflect the status of the last ALU operation (e.g., zero flag, carry flag, overflow flag). These flags are used for conditional branching.   
    - __Memory Address Register (MAR)__: Holds the memory address that the CPU wants to access (for reading or writing data).   
    - __Memory Data Register (MDR) / Memory Buffer Register (MBR)__: Holds the data being transferred to or from memory.

#### Memory Unit

Memory Unit is the storage device that holds data and instructions. It is a key component of a computer system and is responsible for storing and retrieving data from the CPU. 

Memory Unit is a circuit made up of: (ex: RAM chip)
- __Random Access Memory (RAM)__: Non-volatile memory that can be read and written to at any time. It is used to store temporary data during program execution.
- __Read-Only Memory (ROM)__: Non-volatile memory that can only be read. It is used to store instructions and data that cannot be modified during program execution.
- __Cache Memory__: Temporary storage for frequently accessed data and instructions. It is used to reduce the time the CPU spends waiting for data from RAM.

__Memory Controller:__ A circuit that controls the memory unit and coordinates the communication between the CPU and the memory unit.

#### Cache Memory

Difference between registers and cache: One is actively storing data temporarily, the other is long-term storage.
Cache is a smaller, faster memory that stores frequently accessed data and instructions. It acts as a buffer between the CPU and the slower main memory (RAM). The goal is to reduce the time the CPU spends waiting for data from RAM.

Levels of Cache: CPUs typically have multiple levels of cache:
- __L1 Cache (Level 1):__ The smallest and fastest cache, located closest to the CPU core. It's often split into L1 instruction cache (for instructions) and L1 data cache (for data).   
- __L2 Cache (Level 2):__ Larger and slightly slower than L1, but still significantly faster than RAM. It serves as a secondary buffer for data that wasn't found in L1.
- __L3 Cache (Level 3):__ Even larger and slower than L2, and is often shared by all the cores in a multi-core processor. It acts as a last resort before accessing main memory.

__Cache Hit__: When the CPU needs data or an instruction, it first checks the cache. When the CPU fetches data from a cache, it's called a cache hit and its access is very fast. 
__Cache Miss__: When the CPU needs to access data that's not in the cache.The CPU then has to retrieve the data from main memory, which is much slower. The fetched data is usually also stored in the cache for future use (following caching algorithms)

#### RAM

__Non-volatile__ means that the data is not lost when the computer is turned off.

Random Access Memory (RAM) is a non-volatile memory that can be read and written to at any time. It is used to store temporary data during program execution. This is the slowest part of the memory hierarchy in terms of access time, and a "cache miss" that requires a trip to RAM can significantly impact performance.

Types of RAM:

- __Static RAM (SRAM):__ Uses latches (flip-flops) to store each bit of data. SRAM is faster and more expensive than DRAM and is typically used for CPU caches. It requires constant power to maintain its state but doesn't need to be refreshed.
- __Dynamic RAM (DRAM):__ Stores each bit of data in a capacitor within an integrated circuit. Capacitors tend to leak charge, so DRAM needs to be periodically refreshed (re-written) to maintain the data. DRAM is slower and less expensive than SRAM and is the main type of RAM used in computers.

#### ROM

Read-Only Memory (ROM) is a non-volatile memory that can only be read. It is used to store instructions and data that cannot be modified during program execution. ROM is also known as Flash Memory. 

A __crucial role of ROM__ (specifically the BIOS/UEFI stored in it) is to __initiate the boot process__ when the computer is turned on. It performs tasks like:

- Power-On Self-Test (POST): Checks if the hardware components are functioning correctly.
- Locating and initializing the boot device (e.g., hard drive, SSD).
- Loading the operating system from the boot device into RAM.

Types of ROM (Evolution):

- __Mask ROM:__ Data is physically encoded into the circuit during manufacturing. It's the oldest type and is cost-effective for large production runs where the data is fixed.   
- __PROM (Programmable ROM):__ Can be written to once by the user using a special device called a PROM programmer. Once programmed, the data is permanent.   
- __EPROM (Erasable Programmable ROM):__ Can be erased by exposing it to strong ultraviolet (UV) light for a specific period and then reprogrammed.   
- __EEPROM (Electrically Erasable Programmable ROM):__ Can be erased and reprogrammed electrically, without the need for UV light. This is more flexible and is commonly used for storing BIOS/UEFI settings.   
- __Flash Memory:__ A type of EEPROM that is optimized for high density and speed. It's widely used for BIOS/UEFI storage, solid-state drives (SSDs), USB drives, and memory cards. While technically a form of EEPROM, its characteristics and widespread use warrant separate mention.

#### Buses: The Communication Pathways
Buses are sets of electrical conductors that transmit data, addresses, and control signals between different components of the CPU and between the CPU and the rest of the computer system (memory, peripherals).

__Internal Buses (within the CPU):__ Connect the various internal components like the ALU, CU, registers, and cache. These are high-speed and optimized for internal communication.

__System Bus (External to the CPU):__ Connects the CPU to the main memory, chipset, and other peripherals. This bus typically has different sub-buses:
- __Address Bus:__ Carries memory addresses from the CPU to memory (specifies which memory location to access). The width of the address bus determines the maximum amount of memory the CPU can address.
- __Data Bus:__ Carries the actual data being transferred between the CPU and memory or peripherals. The width of the data bus determines how much data can be transferred at once.
- __Control Bus:__ Carries control signals from the CPU (and sometimes other components) to manage and synchronize the activities of the system (e.g., read/write signals, clock signals, interrupt requests).

![](https://www.learncomputerscienceonline.com/wp-content/uploads/2019/05/System-Bus-Architecture.jpg)  
![](https://www.gatevidyalay.com/wp-content/uploads/2022/02/Data-Bus-Address-Bus-Control-Bus-300x146.png?ezimgfmt=rs:354x172/rscb1/ngcb1/notWebP)  
__How the CPU interacts with memory:__

- The CPU uses the address bus to specify the memory location it wants to access (read or write).
- For a read operation, the memory controller retrieves the data from the specified address and sends it back to the CPU over the data bus.
- For a write operation, the CPU places the data on the data bus and signals the memory controller (via the control bus) to write that data to the address specified on the address bus.

__In essence, buses are the roads that the CPU and memory controller use to communicate with the memory unit, not part of the storage itself.__

