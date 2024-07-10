-- What is SQL?
SQL stands for Structured Query Language
SQL lets you access and manipulate databases

-- SELECT STATEMENT

 Return data from the Customers table:

""SELECT CustomerName, City FROM Customers"";

-- The SQL SELECT DISTINCT Statement

""SELECT DISTINCT Country FROM Customers;""

-- Count Distinct

""SELECT count(DISTINCT Country) FROM Customers;""


-- SQL WHERE Clause

Syntax

""SELECT column1, column2, ...
FROM table_name
WHERE condition;""


"-- The following operators can be used in the WHERE clause:"

"=	Equal	
>	Greater than	
<	Less than	
>=	Greater than or equal	
<=	Less than or equal	
<>	Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN	Between a certain range	
LIKE	Search for a pattern	
IN	To specify multiple possible values for a column"


-- SQL ORDER BY Keyword

""SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;""   "By Default Ascending Order"


"example: "
""SELECT * FROM Products
ORDER BY Price DESC;
""

"We can even sort the name alphbatically"

-- Using Both ASC and DESC

""SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC""

"The following SQL statement selects all customers from the "Customers" table, 
sorted ascending by the "Country" and descending by the "CustomerName" column:"

"It will first sort table according to table and if the country is same then it will sort in descending order 
by customer name"


-- SQL AND Operator
"
The WHERE clause can contain one or many AND operators.

The AND operator is used to filter records based on more than one condition, like if you want to return 
all customers from Spain that starts with the letter 'G':"

""SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';""


-- SQL OR Operator

"The SQL OR Operator
The WHERE clause can contain one or more OR operators.

The OR operator is used to filter records based on more than one condition, like if you want to return all
 customers from Germany but also those from Spain:
"
""
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;""

-- Combining AND and OR

"Select all Spanish customers that starts with either "G" or "R":"

""SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');""

"Without parenthesis, the select statement will return all customers from Spain that starts with a 
"G", plus all customers that starts with an "R", regardless of the country value:"


-- SQL NOT Operator

"The NOT operator is used in combination with other operators to give the opposite result, 
also called the negative result.
In the select statement below we want to return all customers that are NOT from Spain:"

""Select only the customers that are NOT from Spain:

SELECT * FROM Customers
WHERE NOT Country = 'Spain';""

-- NOT LIKE
"Select customers that does not start with the letter 'A':"
""SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';""

-- NOT BETWEEN
"Select customers with a customerID not between 10 and 60:"

""SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;""

"Now the same you can do for NOT IN"

-- SQL INSERT INTO Statement
""INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);""


-- SQL NULL Values

"It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
We will have to use the IS NULL and IS NOT NULL operators instead."

""SELECT column_names
FROM table_name
WHERE column_name IS NULL;""


"NOT NULL"

""SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;""

