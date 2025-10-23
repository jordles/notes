# Python

## Writing Python with IDEs
**IDEs** have more features than code editors. IDEs often include a code editor, debugger, and build automation tools. Some IDEs also include a compiler or interpreter. Examples of popular IDEs include PyCharm, Visual Studio Code, and Eclipse. An IDE is a software application that provides comprehensive facilities for software development. 

**IDLE** is an IDE that comes bundled with Python. It includes a code editor, debugger, and Python shell. Python IDLE is included with Python installations on Windows and MacOS. You can download IDLE using your package manager on Linux. Python IDLE is an interactive interpreter or file editor that allows you to easily write Python scripts and programs. IDLE provides syntax highlighting, code completion, and automatic indentation. 

There are many different places and environments that you can use to write and run code.  In this video, you will learn more about JupyterLab and Jupyter Notebooks to write, run, and debug Python code. JupyterLab and Jupyter Notebooks are part of an open source project called 
Project Jupyter
 and are free to use. 

__JupyterLab__ is a web-based interface (IDE) that allows you to use Jupyter Notebooks to write, run, and debug Python code. JupyterLab is an online environment that allows you to run your code in the cloud. 

__Jupyter Notebook__ can be used and run in the web-based interface through JupyterLab
or on your local machine. Jupyter Notebook allows you to create documents that contain live code. You can write Python programs and scripts using Jupyter Notebooks and see how they execute all in one place. It is a great tool for creating and understanding the code you are writing because you can see your input and output all in one spot.

__Colab Notebooks__ are Jupyter Notebooks that are hosted by Google’s Colaboratory. In Colab, you can write and run Python code. In this reading, you will learn more about how to use Colab and its features.


Colab is a web-based platform that allows you to write and run Python code really quickly in Google Drive. It is free and  ready to use with zero configuration required. 

Colab provides all of the functionality that Python offers. The cells within Colab can include code, text, and images. The code cells include executable code and rich text which make it easy to write and run code. Colab also makes it easy to include markdown in your notebooks. This is a great feature for sharing notebooks because you can add headings, paragraphs, lists, mathematical formulas, and more. You can install Python packages using the pip command within the code cell. Colab Notebooks can easily be shared with other collaborators, too. When you create a Colab Notebook it is stored in your Google Drive. You can easily share using the share button in the upper right hand corner of the notebook. 

## Crash Course in Python w/ Automation
**Programming code** - Programming code is a set of written computer instructions, guided by rules, using a computer programming language. It might help to think of the computer instructions as a detailed, step-by-step recipe for performing tasks. The instructions tell computers and machines how to perform an action. Programming code may also be referred to as source code or scripts.

**Programming languages** - Programming languages are similar to human spoken languages in that they both use syntax and semantics. Programming languages are used to write computer programs.  Some common programming languages include Python, Java, C, C++, C#, and R.

**Syntax** - Syntax is a set of rules for how statements are constructed in both human and computer languages. Programming syntax includes rules for the order of elements in programming instructions, as well as the use of special characters and their placements in statements. This concept is similar to the syntax rules for grammar and punctuation in human language.

**Semantics** - Semantics refers to the intended meaning or effect of statements, or collections of words, in both human and computer languages. Semantic errors are also referred to as logical errors.

**Computer program** - A computer program is a step-by-step list of instructions that a computer follows to reach an intended goal. It is important to be clear and precise about the actions a computer program is supposed to perform because computers will do exactly what they are instructed to do. Computer programs can be long, complex, and accomplish a variety of tasks. They are often developed by computer programmers and software engineers, but anyone can learn to create them. Computer programs may involve a structured development cycle. They can be written in a wide variety of programming languages, such as Python, Java, C++,  R, and more. The completed format of a program is often a single executable file.

**Script** - Scripts are usually shorter and less complex than computer programs. Scripts are often used to automate specific tasks. However, they can be used for complex tasks if needed. Scripts are often written by IT professionals, but anyone can learn to write scripts. Scripts have a shorter, less structured development cycle as compared to the development of complex computer programs and software. Scripts can be written in a variety of programming languages, like Python, Javascript, Ruby, Bash, and more. Some scripting languages are interpreted languages and are only compatible with certain platforms.

**Automation** - Automation is used to replace a repetitive manual step with one that happens automatically. 

**Output** - Output is the end result of a task performed by a function or computer program. Output can include a single value, a report, entries into a database, and more. 

**Input** - Input is information that is provided to a program by the end user. Input can be text, voice, images, biometrics, and more.   

**Functions** - A function is a reusable block of code that performs a specific task.

```python
def greet(name):
    return f"Hello, {name}!"
```

**Variables** - Variables are used to temporarily store changeable values in programming code. Represent data stored as strings, tuples, dictionaries, lists, and objects (note: future readings explain these categories)

**Conditionals** - Conditionals are used to perform different actions based on whether a certain condition is true or false.

```python
number = -4

if number > 0:
   print('Number is positive.')
elif number == 0:
   print('Number is zero.')
else:
   print('Number is negative.')
```


[Uses for Automation](Uses%20for%20Automation.md)


## Key Terms
* **Platform-specific / OS specific scripting language** - Platform-specific scripting languages, like PowerShell (for Windows) and Bash (for Linux), are used by system administrators on those platforms.
* **Client-side scripting language** - Client-side scripting languages, like JavaScript, are used mostly for web programming. The scripts are transferred from a web server to the end-user’s internet browser, then executed in the browser.
* **Machine language** - Machine language is the lowest-level computer language. It communicates directly with computing machines in binary code (ones and zeros). In binary code, one equals a pulse of electricity and zero equals no electrical pulse. Machine language instructions are made from translating languages like Python into complex patterns of ones and zeros.
* **Cross-platform language** - Programming language that is compatible with one or more platforms / operating systems (e.g., Windows, Linux, Mac, iOS, Android).
* **Object-oriented programming language** - In object-oriented programming languages, most coding elements are considered to be objects with configurable properties. For example, a form field is an object that can be configured to accept only dates as input in the mm/dd/yy format, and can be configured to read from and write to a specific database.
* **Python interpreter** - An interpreter is the program that reads and executes Python code by translating Python code into computer instructions.

Interpreters are more interactive than codepads, but they are the same in that they both read and execute code one line at a time.

First version of Python was released in 1991 by ==Guido van Rossum==. 

## Python Keywords

Values: **True**, **False**, **None**  
Conditions: **if**, **elif**, **else**  
Logical operators: **and**, **or**, **not**  
Loops: **for**, **in**, **while**, **break**, **continue**  
Functions: **def**, **return**  

You don't need to learn this whole list now. We'll dive into each keyword as we encounter them. There are additional reserved keywords in Python. If you would like to read about them, please visit the linked “Python Keywords” article in the Resources section at the end of this study guide. 

## Naming Conventions

Naming rules and conventions
When assigning names to objects, programmers adhere to a set of rules and conventions which help to standardize code and make it more accessible to everyone. Here are some naming rules and conventions that you should know:

Python variables cannot have spaces, tabs, special characters, or keywords.

Names must be made up of only letters (a-z, A-Z), numbers (0-9), and underscores (_).

Names cannot contain spaces.

Names may be a mixture of upper and lower case characters.

Names can’t start with a number but may contain numbers after the first character.

Variable names and function names should be written in snake_case, which means that all letters are lowercase and words are separated using an underscore. 

Descriptive names are better than cryptic abbreviations because they help other programmers (and you) read and interpret your code. For example, student_name is better than sn. It may feel excessive when you write it, but when you return to your code you’ll find it much easier to understand.

## Arithmetic operators
Python can calculate numbers using common mathematical operators, along with some special operators, too:  

| Operator | Description |
| --- | --- |
| x + y | Addition + operator returns the sum of x plus y |
| x - y | Subtraction - operator returns the difference of x minus y |
| x * y | Multiplication * operator returns the product of x times y |
| x / y | Division / operator returns the quotient of x divided by y |
| x**y | Exponent ** operator returns the result of raising x to the power of y |
| x**2 | Square expression returns x squared |
| x**3 | Cube expression returns x cubed |
| x**(1/2) | Square root (½) or (0.5) fractional exponent operator returns the square root of x |
| x // y | Floor division operator returns the integer part of the integer division of x by y |
| x % y | Modulo operator returns the remainder part of the integer division of x by y |

## Other operators

| Operator | Description |
| --- | --- |
| x > y | Returns True if x is greater than y |
| x < y | Returns True if x is less than y |
| x >= y | Returns True if x is greater than or equal to y |
| x <= y | Returns True if x is less than or equal to y |
| x == y | Returns True if x is equal to y |
| x != y | Returns True if x is not equal to y | 


## Annotating Types by Type

How to annotate a variable   
Think of annotating a variable as if you were to put a label on a container—and anything in that container should hold what the label is describing. Let’s take a look at an example:

name: str = "Betty"

The variable name is declared using a colon `:` which is annotated with the type str, indicating that the name variable should hold a string value. 

==Annotating in general will add computational overhead at runtime, so it is best to use it only when necessary.==

  #### Dynamic Typing
  Type of variable can change at runtime

  ```python
  name = "Betty"  # name is a string
  print(type(name))  # Output: <class 'str'>
  name = 42  # name is now an integer
  print(type(name))  # Output: <class 'int'>
  ```

  #### Duck Typing
  This form of typing comes from the saying, “If it walks like a duck and quacks like a duck, it must be a duck.” Python will infer the variable type at runtime and decide which behaviors are available to the given object.

  ```python
  a = "Hello" #looks like a string
  ```

  #### Type Comments
  Type comments are used to annotate types for variables, functions, classes, and other entities. They are not used for type checking at runtime.

  ```python
  name = "Betty"  # type: str
  age = 30  # type: int
  ```

  #### Direct Type Annotations
  Direct type annotations are used to specify the type of a variable, function, class, or other entity. They are used for type checking at runtime. It is useful for linters for example to check types before runtime.

  ```python
  import typing
  # Define a variable of type str
  z: str = "Hello, world!"
  # Define a variable of type int
  x: int = 10
  # Define a variable of type float
  y: float = 1.23
  # Define a variable of type list
  list_of_numbers: typing.List[int] = [1, 2, 3]
  # Define a variable of type tuple
  tuple_of_numbers: typing.Tuple[int, int, int] = (1, 2, 3)
  # Define a variable of type dict
  dictionary: typing.Dict[str, int] = {"key1": 1, "key2": 2}
  # Define a variable of type set
  set_of_numbers: typing.Set[int] = {1, 2, 3}
  ```

## Implicit Conversion (type casting)

Implicit conversion is when Python automatically converts one data type to another data type.

```python
x = 5
y = 2.5
z = x + y # 5 is implicitly converted to 5.0
print(z)  # Output: 7.5
```

## Explicit Conversion (type casting)

Explicit conversion is when you convert one data type to another data type.

```python
x = 5
y = 2.5
z = int(y) # 2.5 is explicitly converted to 2
print(z)  # Output: 2
```

## String Methods

__separator.join(words)__ - returns a string with the words separated by the separator

`.format()` - returns a formatted string

```python
name = "John"
age = 30
print("Hello, {}. You are {} years old.".format(name, age))
# Output: Hello, John. You are 30 years old.
print("Hello, {0}. You are {1} years old.".format(name, age)) #indexed
# Output: Hello, John. You are 30 years old.
print("Hello, {name_}. You are {age_} years old.".format(name_=name, age_=age)) #keyword
# Output: Hello, John. You are 30 years old.
```

`.type()` - returns the data type of a value

```python
print(type("Hello, World!"))  # Output: <class 'str'>
print(type(42))                # Output: <class 'int'>
print(type(3.14))              # Output: <class 'float'>
print(type(True))              # Output: <class 'bool'>
print(type(None))              # Output: <class 'NoneType'>
```

`str()` - converts a value (often numeric) to a string data type

`int()` - converts a value (usually a float) to an integer data type

`float()` - converts a value (usually an integer) to a float data type

`print()` - outputs a value to the console, using commas to separate multiple values will add spaces between them. Commas can replace concatenation with `+` operator.

```python
name = "Alice"
age = 30
print("Hello, my name is", name, "and I am", age, "years old.")
# Output: Hello, my name is Alice and I am 30 years old.
```

`sorted()` - returns a sorted list from the items in an iterable

```python
numbers = [5, 2, 9, 1, 5, 6]
sorted_numbers = sorted(numbers)
print(sorted_numbers)  # Output: [1, 2, 5, 5
```

`min()` - returns the smallest item in an iterable

`max()` - returns the largest item in an iterable

`sum()` - returns the sum of all items in an iterable

`len()` - returns the length of an iterable

`abs()` - returns the absolute value of a number

`pow(number, power)` - returns the result of raising a number to a power

`round()` - returns the nearest integer to a number


## String Literals

**f-strings** are similar to template literals in javascript. They allow you to create multi-line strings and to use string interpolation features to create strings. f-strings are prepended with f and are enclosed in double quotes. **REMINDER YOU NEED AN EXTRA BACKSLASH FOR CLASSES BECAUSE \{CHAR} BY ITSELF IS CONVERTED TO JUST THE CHAR ON STRINGS**

```python
name = "Alice"
age = 30

print(f"Hello, my name is {name} and I am {age} years old.")

# Output: Hello, my name is Alice and I am 30 years old.
```

We also have other methods:

**%-formatting** similar to C's `printf` , prints formatted output

(old way of formatting)

The format argument is a string that specifies how the output should be formatted. It can contain:
Plain text: which is printed as is.
Format specifiers: which begin with a % character and indicate where and how to print the subsequent arguments.
Escape sequences: which represent special characters like newline (\n) or tab (\t).

| Format Type | Description                                                                                             |
| ----------- | ------------------------------------------------------------------------------------------------------- |
| :<          | Left aligns the result (within the available space)                                                     |
| :>          | Right aligns the result (within the available space)                                                    |
| :^          | Center aligns the result (within the available space)                                                   |
| :=          | Places the sign to the left most position                                                               |
| :+          | Use a plus sign to indicate if the result is positive or negative                                       |
| :-          | Use a minus sign for negative values only                                                               |
| :           | Use a space to insert an extra space before positive numbers (and a minus sign before negative numbers) |
| :,          | Use a comma as a thousand separator                                                                     |
| :\_         | Use a underscore as a thousand separator                                                                |
| :b          | Binary format                                                                                           |
| :c          | Converts the value into the corresponding unicode character                                             |
| :d          | Decimal format                                                                                          |
| :e          | Scientific format, with a lower case e                                                                  |
| :E          | Scientific format, with an upper case E                                                                 |
| :f          | Fix point number format                                                                                 |
| :F          | Fix point number format, in uppercase format (show inf and nan as INF and NAN)                          |
| :g          | General format                                                                                          |
| :G          | General format (using a upper case E for scientific notations)                                          |
| :o          | Octal format                                                                                            |
| :x          | Hex format, lower case                                                                                  |
| :X          | Hex format, upper case                                                                                  |
| :n          | Number format                                                                                           |
| :%          | Percentage format                                                                                       |

```python
name = "Alice"
age = 30

print("Hello, my name is %s and I am %d years old." % (name, age))

# Output: Hello, my name is Alice and I am 30 years old.
```

**string.Template**

```python
from string import Template

name = "Alice"
age = 30

template = Template("Hello, my name is $name and I am $age years old.")
print(template.substitute(name=name, age=age))

# Output: Hello, my name is Alice and I am 30 years old.
```
