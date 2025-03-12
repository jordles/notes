# Postgres (PostgreSQL)

Postgres is one of the most popular open source relational databases. It is a SQL database that supports ACID transactions and is written in C. It is also known as PostgreSQL.

## Overview Directory

├── [Keys](#keys)  
├── [Relationships](#relationships)  
├── [Operators](#operators)  
├── [Functions](#functions)  
├── [Data Types](#data-types)  
├── [Queries](#queries--actions)  
├── [Aggregate Functions](#aggregate-function)  
├── [Execution Order](#sql-query-execution-order)  
└── [Postgres Snippets](#postgres-examples)

Important questions to ask?

1. What kind of thing are we storing?
2. What properties does it have?
3. Type of data for each of those properties?

Postgres uses tables to store data.

## Keys

**Primary Keys** - Identifies unique rows in a table.  
**Foreign Keys** - Identifies/references unique rows in another table. It helps us connect the data between tables. Usually 'many' side gets the foreign key column of the other tables. Foreign keys are always checked for consistency, and will return an error if they are not consistent (foreign key constraints). Any action will be interrupted until the foreign key is consistent. If we dont have a foreign key ready yet, the null value can be used to indicate this relationship does not exist yet. You can specify delete behavior using

### When we try to delete a row that has a foreign key:

1. **DELETE RESTRICT** => Throws an error.
2. **DELETE NO ACTION** => Throw an error.
3. **DELETE CASCADE** => Delete the row that has a foreign key.
4. **DELETE SET NULL** => Set the foreign key column to null.
5. **DELETE SET DEFAULT** => Set the foreign key column to the default value, if one is provided.

Data Consistency - Data is consistent and line up with each other.

## Relationships

| Relationships | Description  |
| ------------- | ------------ |
| 1:1           | One-to-one   |
| 1:N           | One-to-many  |
| N:1           | Many-to-one  |
| N:N           | Many-to-many |

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

## Data Types

| Column Data Types                  | Description                                                                                     |
| ---------------------------------- | ----------------------------------------------------------------------------------------------- |
| SMALLSERIAL                        | A number that is automatically incremented. 1 to 32767                                          |
| SERIAL                             | A number that is automatically incremented. 1 to 2147483647                                     |
| BIGSERIAL                          | A number that is automatically incremented. 1 to 9223372036854775807                            |
| PRIMARY KEY                        | A unique identifier for each row in a table. (Also increases performance when looking up by PK) |
| REFERENCES                         | A foreign key, which is a reference to another table in the database.                           |
| VARCHAR(length of max string: opt) | A variable-length string.                                                                       |
| INTEGER                            | A number. Limits are ~ 2 billion for positive and negative numbers.                             |
| BIGINT                             | A number. -9223372036854775808 to +9223372036854775807                                          |
| BOOLEAN                            | A true or false value.                                                                          |
| DATE                               | A date.                                                                                         |
| TIMESTAMP                          | A date and time.                                                                                |
| REAL                               | 6 decimal digits of precision.                                                                  |
| DOUBLE PRECISION                   | 15 decimal digits of precision.                                                                 |
| DEFAULT <default value>            | Set a default value for your data type after setting a data type, null if not set.              |

## Queries / Actions

| SQL Queries                              | Description                                                                                    |
| ---------------------------------------- | ---------------------------------------------------------------------------------------------- |
| CREATE                                   | Create a database.                                                                             |
| CREATE TABLE                             | Create a table in a database.                                                                  |
| CREATE INDEX                             | Create an index in a database.                                                                 |
| CREATE VIEW                              | Create a view in a database.                                                                   |
| CREATE FUNCTION                          | Create a function in a database.                                                               |
| CREATE TRIGGER                           | Create a trigger in a database.                                                                |
| CREATE DOMAIN                            | Create a domain in a database.                                                                 |
| CREATE ROLE                              | Create a role in a database.                                                                   |
| CREATE SCHEMA                            | Create a schema in a database.                                                                 |
| CREATE SEQUENCE                          | Create a sequence in a database.                                                               |
| ALTER                                    | Alter a database.                                                                              |
| DROP TABLE                               | Delete a database.                                                                             |
| AS                                       | Temporarily Alias/name a database, table, column, row, etc. Keyword itself is optional         |
| TO                                       | Rename a table officially (used with ALTER)                                                    |
| ───────────────                          | ────────────────────────────────────────                                                       |
| SELECT                                   | Retrieve data from a database.                                                                 |
| FROM                                     | Specify the table or tables to select.                                                         |
| JOINS ... ON                             | Join data from multiple tables and used when needed to find data from multiple sources.        |
| WHERE                                    | Filter data based on a condition.                                                              |
| ───────────────                          | ────────────────────────────────────────                                                       |
| INSERT                                   | Insert data into a database.                                                                   |
| INTO                                     | Specify the table to insert data into.                                                         |
| VALUES                                   | Specify the data to insert.                                                                    |
| ───────────────                          | ────────────────────────────────────────                                                       |
| UPDATE                                   | Update data in a database.                                                                     |
| SET                                      | Set a value in a database.                                                                     |
| ───────────────                          | ────────────────────────────────────────                                                       |
| DELETE                                   | Delete data from a database.                                                                   |
| ───────────────                          | ────────────────────────────────────────                                                       |
| ON DELETE ... (CONSTRAINTS)              | Specify the action to take when deleting                                                       |
| ON DELETE RESTRICT                       | Prevent deletion of the referenced row with foreign key                                        |
| ON DELETE CASCADE                        | Delete the row if it has a foreign key                                                         |
| ON DELETE SET NULL                       | Set the foreign key to NULL                                                                    |
| ON DELETE SET DEFAULT                    | Set the foreign key to a custom DEFAULT value                                                  |
| ───────────────                          | ────────────────────────────────────────                                                       |
| [JOIN / INNER JOIN](#joins)              | Join data from multiple tables that share a common column. This is known as an inner join.     |
| LEFT JOIN / LEFT OUTER JOIN              | Join all the data from the left table and the matching data from the right table.              |
| RIGHT JOIN / RIGHT OUTER JOIN            | Join all the data from the right table and the matching data from the left table.              |
| FULL JOIN / FULL OUTER JOIN              | Join all the data from the left and right tables, regardless of matching data.                 |
| ON                                       | Specify the condition for joining tables / matching data                                       |
| ───────────────                          | ────────────────────────────────────────                                                       |
| [AGGREGATION](#grouping-and-aggregating) | Group data and perform operations on it through SELECT queries. (most, average, least, etc...) |
| [GROUP BY](#grouping-and-aggregating)    | Group data based on one or more columns. It merges multiple rows together                      |
| GROUP BY ... HAVING                      | Filter the grouped data                                                                        |
| ───────────────                          | ────────────────────────────────────────                                                       |
| SORT BY                                  | Sort data based on one or more columns.                                                        |

### [Aggregate Functions](#grouping-and-aggregating) <a id="aggregate-function"></a>

| Aggregate Functions                 | Description                                                  |
| ----------------------------------- | ------------------------------------------------------------ |
| COUNT()                             | Count the number of rows in a table. Does not work with NULL |
| SUM()                               | Sum the values in a column.                                  |
| AVG()                               | Calculate the average value in a column.                     |
| MIN()                               | Find the minimum value in a column.                          |
| MAX()                               | Find the maximum value in a column.                          |
| STDDEV()                            | Calculate the standard deviation of a column.                |
| VAR()                               | Calculate the variance of a column.                          |
| STRING_AGG (column name, delimiter) | Aggregate data into a single string.                         |
| ARRAY_AGG (column name)             | Aggregate data into an array.                                |

### SQL Query Execution Order

When interacting with a database, theres an order that SQL follows:  
1️⃣ FROM → Determine the source tables  
2️⃣ JOIN / ON → Apply joins between tables (ON condition comes before the JOIN keyword)  
3️⃣ WHERE → Filter rows after joins  
4️⃣ GROUP BY → Group rows together (Aggregate functions are applied here after grouping)  
5️⃣ HAVING → Filter groups  
6️⃣ SELECT → Choose columns to return  
7️⃣ DISTINCT → Remove duplicate rows  
8️⃣ ORDER BY → Sort the final result  
9️⃣ LIMIT / OFFSET → Limit the number of rows

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

### Keys

```sql
-- create table with primary keys
CREATE TABLE users(id SERIAL PRIMARY KEY, name VARCHAR(50));

-- create table with foreign keys and specify delete behavior
CREATE TABLE photos(
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

-- insert values with foreign keys
INSERT INTO
  photos (url, user_id)
VALUES
  ('https://one.jpg', 4);
  ('http://two.jpg', 1),
  ('http://25.jpg', 1),
  ('http://36.jpg', NULL),
  ('http://754.jpg', 2),
  ('http://35.jpg', 3),
  ('http://256.jpg', 4);

-- retrieve data with foreign keys
SELECT * FROM photos WHERE user_id = 4;

--depending on delete behavior actions this can produce different outcomes on relational databases
DELETE from users WHERE id = 1;
```

### Joins

All JOINS queries will match and fill up the combined corresponding number of rows in our combined tables with null values if there is no matching data. Order will matter for directional joins based on which table is on the left and which table is on the right of the JOIN keyword.

Although ON is similar to WHERE for filtering data, WHERE happens after the JOIN, which when dealing with outer joins will turn it into an inner join instead, when it detects NULL values for example. Placing the condition on ON will retain the unmatched rows with NULL values, due to ON being executed first before JOIN.

```sql
--select specifies the columns we want to retrieve from the 3rd imaginary table we created by joining tables. Select determines the order of these columns, if non are specified, then the order is based on the table order stated in the query. Select columns must be unique, and if they are the same name, you must specify the table name with dot notation (if certain libraries are still unable to recognize the difference use the AS keyword to rename a column or even rename a table itself).
SELECT contents, username FROM comments
-- the tables join physically side by side with all the same column names on a 3rd imaginary table.
JOIN users ON users.id = comments.user_id;


-- using a left join to specify the null values in our combined table.
INSERT INTO PHOTOS (url, user_id)
VALUES ('https://null.jpg', NULL),

SELECT url, username
FROM PHOTOS
LEFT JOIN users ON users.id = photos.user_id;

-- using a full join
INSERT INTO USERS (username)
VALUES ('Nicole');

SELECT url, username
FROM PHOTOS
FULL JOIN users ON users.id = photos.user_id;

-- using WHERE to filter data on our JOINed table, we are looking for the user that commented on its own photo
SELECT url, contents
FROM comments
JOIN photos ON photos.id = comments.photo_id
WHERE comments.user_id = photos.user_id;

-- using a three way join to combine 3 tables, we use a join condition so theres no need to use a WHERE for our use case
-- use case is were trying to find the user that commented on their own photo and find their username.
SELECT url, contents, username
FROM comments
JOIN photos ON photos.id = comments.photo_id
JOIN users ON users.id = comments.user_id AND users.id = photos.user_id;
```

### Grouping and Aggregating

**Grouping** is a way to combine data from multiple rows into a single row.

Grouping names unique values as its own rows (buckets), and reorders the data to be grouped under these buckets. We can only select the newly made GROUP BY column names in our SELECT statement, any other will give an error or we can select the column produced by an aggregate function.

**Aggregation** is a way to combine data from multiple rows into a single value.
We can use the following [aggregate functions](#aggregate-function).

```sql
-- using group by to get grouped data based on user_id and aggregate to find the total count of id within the grouped data.
-- Useful for finding a total number of something a user has done for example.
-- We use COUNT(*) to count the number of rows in our table more accurately, than relying on the column which might have null values.
SELECT user_id, COUNT(*) AS num_comments_created
FROM comments
GROUP BY user_id;

-- using aggregate functions on select which produces a column with the name of the aggregate function
SELECT MIN(user_id) FROM comments;

-- Find the number of comments for each photo (comments has a photo_id foreign key)
SELECT photo_id, COUNT(*)
FROM comments
GROUP BY photo_id;

-- We want to print the author's name and the number of books they have written.
-- Reminder that joining comes first, which creates the combined rows for our conjoined table, which is then grouped and later aggregated by count.
SELECT name, COUNT(*)
FROM books
JOIN authors ON authors.id = books.author_id
GROUP BY name;

-- Find the photos where its photo_id is less than 3 and its total count is greater than 2.
SELECT photo_id, COUNT(*)
FROM comments
WHERE photo_id < 3
GROUP BY photo_id HAVING COUNT(*) > 2;

-- find users where the user has commented on the first 2 photos and the user added more than 2 comments on those photos
SELECT user_id, COUNT(*)
FROM comments
WHERE photo_id = 1 OR photo_id = 2
GROUP BY user_id HAVING COUNT(*) > 2;

-- find users where the user has commented on the first 50 photos and the user has added more than 20 comments on those photos

SELECT user_id, COUNT(*)
FROM comments
WHERE photo_id <= 50 AND photo_id > 0
GROUP BY user_id HAVING COUNT(*) > 20;

-- Given a table of phones, print the names of manufacturers and total revenue (price * units_sold) for all phones.  Only print the manufacturers who have revenue greater than 2,000,000 for all the phones they sold.
SELECT manufacturer, SUM(price * units_sold)
FROM phones
GROUP BY manufacturer HAVING SUM(price * units_sold) > 2000000;
```
