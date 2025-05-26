# Python

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
