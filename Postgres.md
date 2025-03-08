# Postgres (PostgreSQL)



Postgres is one of the most popular open source relational databases. It is a SQL database that supports ACID transactions and is written in C. It is also known as PostgreSQL.

## Overview Directory

├── [operators](#operators)           
└── [postgres snippets](#postgres-examples)

Important questions to ask?

1. What kind of thing are we storing?
2. What properties does it have?
3. Type of data for each of those properties?

Postgres uses tables to store data.

## Operators

| Math Operators | Description    |
| -------------- | -------------- |
| +              | Addition       |
| -              | Subtraction    |
| \*             | Multiplication |
| /              | Division       |
| ^              | exponent       |
| \|/            | square root    |
| @              | absolute       |
| %              | modulus        |

| Comparison Operators | Description                    |
| -------------------- | ------------------------------ |
| =                    | equality                       |
| !=                   | not equal                      |
| <>                   | not equal                      |
| >                    | greater than                   |
| <                    | less than                      |
| >=                   | greater than or equal to       |
| <=                   | less than or equal to          |
| BETWEEN              | value between two other values |
| IN ()                | value is in a list of values   |
| AND                  | logical AND                    |
| OR                   | logical OR                     |
| NOT                  | logical NOT                    |

| String Operators / Functions | Description                                          |
| ---------------------------- | ---------------------------------------------------- |
| \|\|                         | Concatenation                                        |
| CONCAT()                     | Concatenation                                        |
| LOWER()                      | Convert to lowercase string                          |
| UPPER()                      | Convert to uppercase string                          |
| SUBSTRING()                  | Extract a substring from a string                    |
| LENGTH()                     | Get the length of a string                           |
| REPLACE()                    | Replace a substring in a string                      |
| TRIM()                       | Remove leading and trailing whitespace from a string |
| LTRIM()                      | Remove leading whitespace from a string              |
| RTRIM()                      | Remove trailing whitespace from a string             |
| INSTR()                      | Find the position of a substring in a string         |
| LEFT()                       | Get the leftmost characters of a string              |
| RIGHT()                      | Get the rightmost characters of a string             |
| REPEAT()                     | Repeat a string a certain number of times            |

| Column Data Types             | Description                                                       |
| ----------------------------- | ----------------------------------------------------------------- |
| SERIAL                        | A number that is automatically incremented.                       |
| PRIMARY KEY                   | A unique identifier for each row in a table.                      |
| VARCHAR(length of max string) | A variable-length string.                                         |
| INTEGER                       | A number. Limits are 2 billion for positive and negative numbers. |
| BOOLEAN                       | A true or false value.                                            |
| DATE                          | A date.                                                           |
| TIMESTAMP                     | A date and time.                                                  |

| SQL Queries     | Description                              |
| --------------- | ---------------------------------------- |
| CREATE          | Create a database.                       |
| CREATE TABLE    | Create a table in a database.            |
| CREATE INDEX    | Create an index in a database.           |
| CREATE VIEW     | Create a view in a database.             |
| CREATE FUNCTION | Create a function in a database.         |
| CREATE TRIGGER  | Create a trigger in a database.          |
| CREATE DOMAIN   | Create a domain in a database.           |
| CREATE ROLE     | Create a role in a database.             |
| CREATE SCHEMA   | Create a schema in a database.           |
| CREATE SEQUENCE | Create a sequence in a database.         |
| ALTER           | Alter a database.                        |
| DROP            | Delete a database.                       |
| AS              | Alias/name a database, column, row, etc. |
| ─────────────── | ──────────────────────────────────────── |
| FROM            | Specify the table or tables to select.   |
| WHERE           | Filter data based on a condition.        |
| SELECT          | Retrieve data from a database.           |
| ─────────────── | ──────────────────────────────────────── |
| INSERT          | Insert data into a database.             |
| INTO            | Specify the table to insert data into.   |
| VALUES          | Specify the data to insert.              |
| ─────────────── | ──────────────────────────────────────── |
| UPDATE          | Update data in a database.               |
| SET             | Set a value in a database.               |
| ─────────────── | ──────────────────────────────────────── |
| DELETE          | Delete data from a database.             |

When interacting with a database, theres an order that SQL follows , **FROM => WHERE => SELECT** , so it checks the database source first, then the rows that fit the condition criteria, and finally the columns.

**Keywords** - tell the database what we want to do. Its always written in CAPITAL LETTERS.  
**Identifiers** - tell the database what this is called. Its always written in lowercase.


## Postgres Examples
```sql

-- keywords  identifiers
CREATE TABLE cities(
  -- column name data type
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);

-- inserting data to our table
INSERT INTO cities (name, country, population, area)
VALUES
  ('Tokyo', 'Japan', 38505000, 8223),
  ('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 21715000, 1628),
  ('Sao Paulo', 'Brazil', 21272000, 9449);

-- retrieving data from our table
SELECT * FROM cities;
SELECT area, name, name, country FROM cities;

-- do some calculation using math operations and use AS to name a new column for it
SELECT name, population/area AS density FROM cities;

-- using || for concatenation and labeling its new column as location.
SELECT name || ' is a city in ' || country AS location FROM cities;

-- using CONCAT() for concatenation and labeling its new column as location.
SELECT UPPER(CONCAT(name, ' is a city in ', country)) AS location FROM cities;

-- using WHERE to filter data
SELECT name, ara FROM cities WHERE area > 4000;

-- using comparison operators
SELECT name, area FROM cities WHERE area BETWEEN 2000 AND 4000;
SELECT name, area FROM cities WHERE name IN ('Delhi', 'Shanghai');
SELECT name, area FROM cities WHERE area NOT IN (3043, 8223) OR name = 'Delhi';
SELECT name, population / area AS population_density FROM cities WHERE population / area > 6000; -- we cannot use population_density for comparison because its not a column name.

--to use the alias column name:

-- 1. Use a Subquery:
-- SELECT name, population_density
-- FROM (
--     SELECT name, population / area AS population_density
--     FROM cities
-- ) subquery
-- WHERE population_density > 6000;

-- 2. Use a CTE (Common Table Expression):
-- WITH city_data AS (
--     SELECT name, population / area AS population_density
--     FROM cities
-- )
-- SELECT name, population_density
-- FROM city_data
-- WHERE population_density > 6000;
```

```sql
-- updating data in our table (update does not return the updated row or our data)
UPDATE cities SET population = 39505000 WHERE name = 'Tokyo';
```

```sql
-- deleting data in our table (delete does not return the deleted row or our data)
DELETE FROM cities WHERE name = 'Tokyo';
```
