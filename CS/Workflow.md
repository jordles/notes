# Workflow / Diagrams

├── [Data Flow Diagram](#data-flow-diagram)  
├── [Use Case Diagram](#2-requirements-analysis)  
├── [Flowchart](#flowchart)  
├── [Implementation](#4-implementation--coding--development)  
├── [Testing](#5-testing)   
├── [Deployment](#6-deployment)  
└── [Maintenance](#7-maintenance)

# Data Flow Diagram

[More here](https://www.rudderstack.com/blog/data-flow-diagram/)

Show how data moves through a system (no decision logic).

A DFD is a visual tool used to map how data moves through a system—where it comes from, how it's processed, where it’s stored, and where it ultimately goes. It outlines the flow of information between different components such as sources, processes, databases, and outputs. DFDs are valuable for analyzing existing systems, designing new ones, and aligning technical and non-technical stakeholders around how data is handled across an organization.

__Logical DFDs__: These diagrams focus on what data is being processed and moved in the system, without emphasizing the specific technology used. They represent the business processes and the data required and produced by those processes.

<details>
<summary>image</summary>

![alt text](../media/logicalDFD.png)
</details>

__Physical DFDs__: These diagrams illustrate how the data flow is implemented, including specific hardware, software, files, and personnel involved in the data processing and storage. They provide a more technical perspective on the system and are often used during the design and implementation phases.

<details>
<summary>image</summary>
![alt text](../media/physicalDFD.png)

</details>

| Symbol | Meaning | Notes | Examples | 
| --- | --- | --- | --- |
| 🔵 (circles or rounded rectangles) | Process | Show where data is transformed or interacted upon within the system; Transforms inputs to outputs | Transform Event Data, Sync to CRM |
| 🟧 (open-ended rectangles or parallel lines) | Data Store / Storage | Where data is held (e.g., DB table) | User Profiles, Sales Database |
| 🟩 (rectangles) | External Entity | Source/destination outside the system that provide input or consume output | Mobile App, Payment Gateway |
| ➡️ (directional arrows)| Data Flow | Arrows show movement of data. Each arrow is labeled to describe the type of data in transit. | Order Info, User Events |

<details>

<summary>
DFD Symbols and Notations
</summary>

![alt text](../media/DFDsymbols.png)

</details>

✅ Good for:
- Understanding logical flow
- Requirement validation
- Showing system boundaries

__Diagram Levels__:  
- Level 0 DFDs, are context diagrams, the most basic data flow diagrams. Easily digestable but providing little detail. Level 0 data flow diagrams show a single process node and its connections to external entities.  
- Level 1 DFDs are more detailed and can be used to show the logical flow of data within a system. Process nodes from the context diagram is broken down into sub-processes. As these processes are added, the diagram will need additional data flows and data stores to link them together.  
- Level 2 DFDs are more complex and provide a more in-depth view of the system's architecture. Simply break processes down into more detailed sub-processes. In theory, DFDs could go beyond level 3, but they rarely do. Level 3 data flow diagrams are detailed enough that it doesn’t usually make sense to break them down further. 

<details>
<summary>
Level 0: This example shows the hotel reservation process with the flow of information between admin and guests.
</summary>

![alt text](../media/lv0DFD.png)

</details>


<details>
<summary>
Level 1: Include adding the room selection and inquiry processes to the reservation system, as well as data stores. 
</summary>

![alt text](../media/lv1DFD.png)

</details>

<details>
<summary>
Level 2: The level 2 diagram below expands on the hotel reservation process to include more granular processes involved, such as the cancellation and confirmation processes and subsequent connected data flows. 
</summary>

![alt text](../media/lv2DFD.png)

</details>

# Flowchart

**Flowchart** is a diagrammatic representation of a process or workflow. It is a visual representation of a series of steps or actions that are executed in a specific order to achieve a specific outcome. In computer science, we use flowcharts for designing algorithms, data structures, and software applications.

A **flowchart** is a diagram used to illustrate the steps of an algorithm. Flowcharts are made up of symbols, each containing a single step of the algorithm. The shape of the symbol represents the type of process that the symbol contains.

A **process flow diagram (PFD)** is a visual representation of a process, showing the sequence of steps and decisions involved in completing a task or achieving a goal. It's a type of flowchart that uses symbols, shapes, and arrows to illustrate the flow of information or material through a system. PFDs are commonly used in engineering, business, and other fields to document, analyze, and improve processes.

🧱 Core Flowchart Symbols You Must Know:

| Symbol | Name                         | Purpose                            | Example Use                             |
| ------ | ---------------------------- | ---------------------------------- | --------------------------------------- |
| 🔷     | Terminator (Oval)            | Start / End                        | Start / End                             |
| 🔲     | Process (Rectangle)          | Task / Action Step                 | Calculate total, Sort array, Save to DB |
| 🔷     | Decision (Diamond)           | Yes/No or True/False               | Is user logged in?                      |
| 🗂️     | Input/Output (Parallelogram) | User Input / System Output         | Enter username, Display result          |
| 🗃️     | Storage (Cylinder)           | Database / File / Variable Storage | Customer DB, Write to File              |
| ➡️     | Arrow (Line)                 | Flowline                           | Connects all shapes                     |

| Symbol | Name                                            | Purpose / Description         | Example Use                           |
| ------ | ----------------------------------------------- | ----------------------------- | ------------------------------------- |
| 🔷     | Terminator (Oval)                               | Start / End                   | Start, End                            |
| 🔲     | Process (Rectangle)                             | Action / Task Step            | Calculate total, Store record         |
| 🔷     | Decision (Diamond)                              | Conditional Branch            | Is password valid?                    |
| 🗂️     | Input / Output (Parallelogram)                  | User/system interaction       | Enter username, Show dashboard        |
| 🗃️     | Storage / Data (Cylinder)                       | Database / File / Variable    | Read from DB, Write to file           |
| ➡️     | Flowline (Arrow)                                | Process Direction             | Connects steps                        |
| 🧱     | Predefined Process (Double Rectangle)           | Subroutine / Function         | validateInput(), sendEmail()          |
| 📄     | Document (Curved Rectangle)                     | Document output or processing | Generate PDF, Read invoice            |
| 🔗     | Connector (Small Circle)                        | Jump Point / Link             | A, B, C (used to avoid messy lines)   |
| 📦     | Data Block / Data Symbol (Open-ended Rectangle) | Data definition or structure  | Customer Record, Item[], Invoice Data |

| Symbol | Name (Shape)                                                    | Purpose / Description                                                     | Example Use                                                |
| ------ | --------------------------------------------------------------- | ------------------------------------------------------------------------- | ---------------------------------------------------------- |
| ➡️     | Flowline (Arrow)                                                | Process Direction                                                         | Connects steps                                             |
| 🔷     | Start / End (Terminator, Oval)                                  | Marks the beginning or end of a process                                   | Start of program; End of workflow                          |
| 🟦     | Process (Rectangle)                                             | Represents a step that performs an action or operation                    | "Calculate total price", "Send email"                      |
| 🔶     | Decision (Diamond)                                              | Indicates a branching point, with Yes/No or True/False conditions         | "Is payment successful?" → Yes: proceed; No: show error    |
| 🗃️     | Data Storage / Database (Vertical Cylinder)                     | Logical/centralized storage of structured data                            | "User Table", "Orders DB", SQL database, logical storage   |
| 🥁     | Direct Data (Horizontal Cylinder / Drum)                        | Physical or data that is accessed directly (e.g., flat files, disk, tape) | Hard drive, disk files, physical media                     |
| 🧾     | Input/Output (Parallelogram)                                    | Represents incoming or outgoing data from any source                      | "User inputs email", "Display total score"                 |
| 📄     | Document/Report (Rectangle w/ wavy bottom)                      | A printed or electronic document output                                   | "Generate invoice", "Export to PDF"                        |
| 📚     | Multiple Documents (Stacked wavy rectangles)                    | Multiple pages or grouped documents                                       | "Batch report", "Multi-page PDF export"                    |
| ⌨️     | Manual Input (Trapezoid)                                        | User manually inputs information (typically via keyboard)                 | "Type username", "Enter quantity"                          |
| 🤲     | Manual Operation (Trapezoid flipped)                            | A process done manually without software/hardware                         | "Sort papers", "Manually check inventory"                  |
| 🔁     | Loop Limit (Hexagon)                                            | Used to represent a loop boundary or limit                                | "Repeat until max = 10", "Retry 3 times"                   |
| 🧱     | Predefined Process (Double rectangle)                           | A reusable sub-process or function defined elsewhere                      | "Validate user()", "Encrypt password()"                    |
| 🔄     | Preparation / Initialization (Hexagon)                          | Prepares for a process, often setting values or states                    | "Set counter = 0", "Load config file"                      |
| 🔗     | Connector (Circle)                                              | Jump point to another section of the flowchart (on same page)             | Avoids cluttered lines; links across chart sections        |
| ⭕     | Off-page Connector (Pentagon)                                   | Directs to another page in a multi-page flowchart                         | "To Subsystem B", "Continued on next page"                 |
| 🗳️     | Stored Data (Rectangle with side notch)                         | A general type of storage, like hard drives or memory                     | "Cache storage", "Temporary buffer"                        |
| ⏺️     | Magnetic Tape (Circle on right side)                            | Sequential access storage media                                           | "Backup to tape", "Restore from archive"                   |
| ⏬     | Collate (Two intersecting rectangles)                           | Organizing items into a specific order or pattern                         | "Sort orders by date", "Collate survey results"            |
| 🖨️     | Display (Rectangle with a curved bottom edge)                   | Information shown to a user visually                                      | "Show dashboard", "Display confirmation message"           |
| 🌀     | Merge (Upside-down triangle)                                    | Combines multiple flow lines into one                                     | "Merge results from branches"                              |
| 🔼     | Extract (Triangle)                                              | Separates or pulls data from a data structure                             | "Extract last name from full name"                         |
| 📬     | Delay (Half oval / D-shape)                                     | Introduces a timed or intentional delay                                   | "Wait 10 seconds", "Pause for response"                    |
| 🛠️     | Manual File (Rectangle with upper right bent corner)            | Handling physical files manually                                          | "File completed forms", "Print and file receipt"           |
| 🧾     | Annotation (Bracket or callout)                                 | Adds comments, explanations, or notes to clarify parts of the diagram     | "User authentication handled by AuthService"               |
| 📚     | Internal Storage (Magnetic Core Memory; Square)                 | Information stored in memory, as opposed to a file                        | Data stored in the computer's memory (ex: RAM)             |
| 📚     | Sequential Access (Magnetic Tape; Circle)                       | Information stored on sequence / magnetic tape                            | Data stored on magnetic tape (ex: tape drive)              |
| 📚     | Manual Input (rectangle; top slope going up from left to right) | User/person manually inputs information (e.g., typing in a text box)      | Data entered by a user manually (e.g., through a keyboard) |
| 🧱     | Subroutine / Predefined Process (Double Rectangle)              | Subroutine / Function                                                     | validateInput(), sendEmail()                               |

| Category          | Examples                                              |
| ----------------- | ----------------------------------------------------- |
| Core Symbols      | Start/End, Process, Decision, Input/Output            |
| Storage Symbols   | Database, Direct Data, Magnetic Tape, Stored Data     |
| Document Symbols  | Document, Multiple Documents, Manual File             |
| Advanced Flow     | Predefined Process, Loop Limit, Merge, Extract, Delay |
| Connector Symbols | On-page Connector, Off-page Connector                 |
| Manual/User Ops   | Manual Input, Manual Operation, Collate               |
| Display/Output    | Display, Annotation                                   |

- Terminator Block - The oval block used for the start and end of a flowchart. You can use words like 'Start', 'Begin', 'End' inside the terminator shape to make things more obvious.
- Process Block - A block of code that performs a specific task or action. Part of a flowchart that tells the program what action to take. Use rectangles to capture process steps like basic tasks or actions in your process
- Decision Block - The diamond-shaped block used for YES/NO questions. These blocks have two outputs: 1 (for yes) and 2 (for no).
- Input/Output Block - The parallelogram block used for user input and system output. These blocks have two outputs: 1 (for input) and 2 (for output).

![](https://bam.files.bbci.co.uk/bam/live/content/zwbjq6f/medium)
![](https://i.ytimg.com/vi/6qp8AiEPMYk/hqdefault.jpg)
![](https://www.edrawsoft.com/flowchart/images/flowchart-algorithm.png)
![](https://www.edrawsoft.com/flowchart/images/algorithm-flowchart-example4.png)

**Data Blocks** are used to store data or information.
They are used to:

- Represent a data structure (e.g., an object or class)
- Show data that’s created, modified, or read
- Clarify where data is coming from or what it looks like
- Document data relationships for databases, file formats, APIs

Example: Login Logic Flowchart (Web App)

[Start]  
|  
[User enters credentials]  
|  
[Validate input fields]  
|  
[Are fields valid?] ─────No────→ [Show error] → [End]  
|  
Yes  
|  
[Check credentials in DB]  
|  
[Are credentials correct?] ──No──→ [Show login failed] → [End]  
|  
Yes  
|  
[Log in user → redirect to dashboard]  
|  
[End]
