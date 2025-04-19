# Architecture

## Hardware
├── [Motherboard](#cpu-central-processing-unit)  
├── [CPU](#cpu-central-processing-unit)  
├── [RAM](#operating-system)  
├── [Cache Memory](#pgadmin)  
├── [Secondary Storage](#secondary-storages)  
├── [Buses](#buses-the-communication-pathways)  
├── [Input Output Unit](#input-output-unit-io-the-interface-to-the-outside-world)  
├── [Power Supply Unit](#power-supply-unit-the-power-source)  
├── [Network Interface Card (NIC)](#network-interface-card-nic-the-network-connection)  
├── [Graphics Processing Unit (GPU)](#graphics-processing-unit-gpu-the-video-card)  
└── [BIOS / UEFI](#bios-uefi-the-bootloader)  

### Motherboard: The Physical Structure of a Computer

Motherboard is the physical structure of a computer that holds all the components together. 

Components include:
- Bus System (data highways between components)
- CPU (Central Processing Unit)
- RAM Slots (Random Access Memory) using memory chips / slots
- Chipsets (Video Card, Audio Card, etc.)
- Expansion Slots (USB, SATA, and PCIe)
- Power Supply Unit (PSU)
- Input Output Unit (I/O)
- Network Interface Card (NIC)
- Graphics Processing Unit (GPU)

__Chipsets__ are a set of integrated circuits that manage the communication between the CPU and the rest of the system components, such as memory, expansion slots, and storage devices. The chipset determines the motherboard's features, such as the number of USB ports, SATA ports, PCIe lanes, and the type and speed of RAM supported.

![](https://educatecomputer.com/wp-content/uploads/2024/06/Motherboard-diagram-1024x576.webp)
![](https://www.learncomputerscienceonline.com/wp-content/uploads/2020/05/Computer-Motherboard.jpg)

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
- Memory Controller – controls the flow of data between the CPU and memory unit.
- Bus System – connects components in the CPU and memory unit.

__Instruction Set Architecture (ISA)__ – specifies the format and operations of instructions . __Its a complete collection of all instructions the CPU can execute provided by the software running on the CPU.__

__Relevance to programming:__
- CPU architecture (e.g., x86, ARM) affects instruction sets, binary compatibility.
- Clock speed, cores, and threading impact performance.
- Programmers sometimes optimize for CPU-intensive operations.

Types of CPU Architecture:
- __x86__ - 32-bit and 64-bit (commonly used in desktops and servers)
- __ARM__ - 32-bit and 64-bit (commonly used in embedded systems and mobile devices)
- __RISC-V__ - 32-bit and 64-bit (commonly used in edge computing and IoT devices)
- __CISC__ - Complex Instruction Set Computer (e.g., Intel 8080, Z80)


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
    - __Instruction Register (IR):__ Holds the currently fetched instruction that is being decoded.
    - __Stack Pointer (SP):__ Points to the current top of the stack in memory (used for function calls and local variables).   
    - __Status Register / Flag Register__: Contains bits that reflect the status of the last ALU operation (e.g., zero flag, carry flag, overflow flag). These flags are used for conditional branching.   
    - __Memory Address Register (MAR)__: Holds the memory address that the CPU wants to access (for reading or writing data).   
    - __Memory Data Register (MDR) / Memory Buffer Register (MBR)__: Holds the data being transferred to or from memory.

#### Memory Unit: The Memory Storage Itself

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

Random Access Memory (RAM) is a volatile memory that can be read and written to at any time. It is used to store temporary data during program execution. This is the slowest part of the memory hierarchy in terms of access time, and a "cache miss" that requires a trip to RAM can significantly impact performance.

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

### Secondary Storages

Secondary storage, also known as secondary memory, is a form of non-volatile memory that is used to store persistent data that is not directly accessed by the CPU. This includes:

- __Hard Disk Drive (HDD):__ A rotating disk used for storing large amounts of data. It is typically used for storing files and applications. These are usually cheaper.
- __Solid State Drive (SSD):__ A newer non-rotating flash memory chip used for storing data. It is typically used for storing files and applications. SSDs are faster and more energy-efficient than HDDs. SSDs are much more reliable in durability as well. They are usually more expensive.
- __Flash Memory:__ A type of memory chip that is optimized for high density and speed. It is used for storing data and is commonly found in USB drives, memory cards, and solid-state drives (SSDs).
- __Optical Disc:__ A disk that uses optical media to store data. It is typically used for storing music, videos, and other digital media.
- __Memory Stick/Memory Card:__ A memory card that is used to store data on a portable device. It is typically used for storing music, videos, and other digital media.
- __Magnetic Tape:__ A tape that is used to store data on a portable device. Very high capacity and relatively low cost for archival storage, but very slow sequential access. Primarily used for backups and long-term data retention where speed isn't the primary concern. 
- __Cloud Storage:__ A storage solution that allows data to be stored and accessed over the internet. It is typically used for storing files and applications on a cloud-based platform.


CPUs typically will pick up instructions and data working on secondary storages and __bring it to RAM to process__, the user can then __save the data back into the secondary storage__. Saving copies the data from RAM to secondary storage. The data itself moves from RAM to secondary storage under the management of the operating system and the storage controller

#### Memory Controllers: The Heart of Memory Traffic Management

The Control Unit is concerned with the __what__ and __when__ of instruction execution and data manipulation within the CPU and system.   

The Memory Controller is concerned with the __how__ of getting data to and from the main memory efficiently and reliably.

Key Functions of the Memory Controller:

- __Address Decoding:__ When the CPU wants to access a specific memory location (a virtual address), the Memory Management Unit (MMU) translates this to a physical address. The memory controller then takes this physical address and generates the specific row and column signals needed to select the correct memory cell within the DRAM chips.
- __Read and Write Operations:__ The controller manages the timing and signaling required to read data from a specific memory location and send it back to the CPU, or to write data from the CPU to a specific memory location in RAM. This involves coordinating signals over the address, data, and control buses.
- __Memory Refresh:__ DRAM chips need to be periodically refreshed to retain the data stored in their capacitors. The memory controller handles these refresh cycles automatically, without constant intervention from the CPU. This is critical for preventing data loss.
- __Timing Control:__ DRAM chips have strict timing requirements for various operations (e.g., how long a row needs to be activated before a column can be accessed). The memory controller ensures that these timings are met to guarantee correct operation.
- __Bus Arbitration:__ In systems where multiple components can access memory (e.g., CPU and GPU), the memory controller helps manage these requests to avoid conflicts and ensure fair access.
- __Error Detection and Correction (ECC):__ Some memory controllers support Error Correcting Code (ECC) memory. In these systems, the controller can detect and sometimes correct memory errors to improve data integrity.
- __Memory Channel Management:__ Modern systems often use multi-channel memory architectures (e.g., dual-channel, quad-channel) to increase memory bandwidth. The memory controller manages these multiple channels to allow for parallel data transfers.
- __Power Management:__ Memory controllers can also be involved in power-saving features for the memory subsystem.

#### Memory Management Unit: The Address Translator and Security Guard

 Its primary role is to manage virtual memory and translate __virtual addresses__ (used by software) into __physical addresses__ (the actual addresses in RAM).   

Key Functions:
- __Virtual to Physical Address Translation:__ This is its core function, often using page tables.   
- __Memory Protection:__ Prevents processes from accessing memory that doesn't belong to them.
- __Cache Management (sometimes):__ Can be involved in managing the CPU caches.
- __Paging and Segmentation:__ Implements virtual memory techniques to allow programs to use more memory than physically available.

__Virtual Address:__ The address used by a program. Each program sees a contiguous block of memory, even if it's not physically contiguous.  
__Physical Address:__ The actual address in the physical RAM chips.  
__Page Tables:__ Data structures used by the MMU to map virtual pages to physical frames (blocks of memory).  
__Translation Lookaside Buffer (TLB):__ A small, fast cache within the MMU that stores recent virtual-to-physical address translations to speed up the translation process.

#### Buses: The Communication Pathways
Buses are sets of electrical conductors that transmit data, addresses, and control signals between different components of the CPU and between the CPU and the rest of the computer system (memory, peripherals).

We can think of them like __actual buses that travel__ from one part of the computer to another.

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

### Input Output Unit (I/O): The Interface to the Outside World

The I/O unit is responsible for handling input/output operations, such as reading and writing from/to the keyboard, mouse, hard disk, and other peripherals.

__Input Devices:__ Keyboard, mouse, touch screen, etc.

__Output Devices:__ Monitor, printer, speaker, headphones, etc.

I/O will involve buses, such as the system bus, to transfer data between the I/O unit and other components of the system.

### Power Supply Unit (PSU): The Power Source

The power supply unit is responsible for providing power to the computer system and its components.

__Power Sources:__ AC power, battery, etc.

__Power Distribution:__ The power supply unit distributes power to various components of the system, such as the CPU, memory, peripherals, and other components.

Common connectors include:
- __Power Supply:__ The power supply unit provides power to the system.
- __Power Distribution Board:__ The power distribution board connects the power supply to various components of the system.
- __Power Cords:__ The power cords connect the power distribution board to the system components.
- __24-pin ATX Connector:__ The main power connector for the motherboard.
- __4-pin or 8-pin EPS Connector:__ Provides additional power to the CPU

### Network Interface Card (NIC): The Network Connection

The network interface card (NIC) is responsible for connecting the computer to the internet or other networks.

__Network Interfaces:__ Ethernet, WiFi, Bluetooth, etc.

__Network Protocols:__ IP (Internet Protocol), TCP (Transmission Control Protocol), UDP (User Datagram Protocol), etc.

### Graphics Processing Unit (GPU): The Video Card

The graphics processing unit (GPU) is responsible for rendering and displaying graphics on the screen.

__Graphics Cards:__ NVIDIA, AMD, Intel, etc.

__Graphics Protocols:__ OpenGL, Direct3D, Vulkan, etc.

### Sound Processing Unit (SPU): The Audio Card

The sound processing unit (SPU) is responsible for processing and playing audio.

__Audio Cards:__ Sound Blaster, Creative Sound Blaster, etc.

__Audio Protocols:__ WAVE, MP3, AAC, etc.

### BIOS / UEFI: The Bootloader

The bootloader is responsible for initializing and booting the computer system. This chip stores the BIOS (Basic Input/Output System) or its modern successor, UEFI (Unified Extensible Firmware Interface). This firmware is the first software that runs when you turn on your computer. It initializes the hardware, performs the POST (Power-On Self-Test), and allows you to configure basic system settings before booting the operating system.

__Bootloaders:__ BIOS (Basic Input/Output System), UEFI (Unified Extensible Firmware Interface), etc.

__Boot Protocols:__ EFI (Extensible Firmware Interface), GRUB (GNU's replacement for the Linux kernel bootloader), etc.


