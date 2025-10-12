# Python

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

**Variables** - Variables are used to temporarily store changeable values in programming code.

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

## String Methods

__separator.join(words)__ - returns a string with the words separated by the separator

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

**.format() method**

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

**string.Template**

```python
from string import Template

name = "Alice"
age = 30

template = Template("Hello, my name is $name and I am $age years old.")
print(template.substitute(name=name, age=age))

# Output: Hello, my name is Alice and I am 30 years old.
```
