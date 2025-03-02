# Postgres (PostgreSQL)

Postgres is one of the most popular open source relational databases. It is a SQL database that supports ACID transactions and is written in C. It is also known as PostgreSQL.

Important questions to ask?
1. What kind of thing are we storing?
2. What properties does it have?
3. Type of data for each of those properties?

Postgres uses tables to store data.

**Keywords** - tell the database what we want to do. Its always written in CAPITAL LETTERS.  
**Identifiers** - tell the database what this is called. Its always written in lowercase.

| Column Data Types | Description |
| --- | --- |
| SERIAL | A number that is automatically incremented. |
| PRIMARY KEY | A unique identifier for each row in a table. |
| VARCHAR(length of max string) | A variable-length string. |
| INTEGER | A number. Limits are 2 billion for positive and negative numbers. |
| BOOLEAN | A true or false value. |
| DATE | A date. |
| TIMESTAMP | A date and time. |

| SQL Queries | Description |
| --- | --- |
| CREATE | Create a database. |
| CREATE TABLE | Create a table in a database. |
| CREATE INDEX | Create an index in a database. |
| CREATE VIEW | Create a view in a database. |
| CREATE FUNCTION | Create a function in a database. |
| CREATE TRIGGER | Create a trigger in a database. |
| CREATE DOMAIN | Create a domain in a database. |
| CREATE ROLE | Create a role in a database. |
| CREATE SCHEMA | Create a schema in a database. |
| CREATE SEQUENCE | Create a sequence in a database. |
| UPDATE | Update data in a database. |
| DELETE | Delete data from a database. |
| ALTER | Alter a database. |
| DROP | Delete a database. |
| INSERT | Insert data into a database. |
| SELECT | Retrieve data from a database. |


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
```
