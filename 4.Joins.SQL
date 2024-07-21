"A JOIN clause is used to combine rows from two or more tables, based on a related column between them."

"Here are the different types of the JOINs in SQL:

(INNER) JOIN: Returns records that have matching values in both tables
LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table"


-- 1) INNER JOIN
"Syntax"

""SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;""


""SELECT ProductID, ProductName, CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;""


"JOIN and INNER JOIN will return the same result."


-- 2) SQL LEFT JOIN Keyword


"The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match."


""SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;""

"Example"

""SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;""

"Note: The LEFT JOIN keyword returns all records from the left table (Customers), even if there are no matches in the right table (Orders)."


-- SQL RIGHT JOIN Keyword

"The right join returns all the record from table 2 and matching records from table 1"

""SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;""

"Look at the syntax it will return all the records from table 2 and matching record from table 1"


-- SQL FULL OUTER JOIN Keyword

"The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.
Tip: FULL OUTER JOIN and FULL JOIN are the same."

""SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;""


-- SQL Self Join

"A self join is a regular join, but the table is joined with itself."

""SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;""


"T1 and T2 are different table aliases for the same table."

"The following SQL statement matches customers that are from the same city:"

""SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID   "<> is used to check if A.CustomerId and B.CustomerId are not equal";
AND A.City = B.City
ORDER BY A.City;""


-- SQL UNION Operator

T"he UNION operator is used to combine the result-set of two or more SELECT statements.

Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order"


"Basically the union joins two column and return a single column from them"

""SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;""

"First it will return the values fro column 1 and then below it it will return the values from table 2"

-- UNION ALL Syntax
"The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:"

""SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;""


"The following SQL statement returns the German cities (duplicate values also) from both the "Customers" and the "Suppliers" table:"
"Example"
""SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;""

"The following SQL statement lists all customers and suppliers:

Example"
""SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;""





-- PRACTICE LEETCODE QUESTION NUMBER 1282 "Customer Who Visited but Did Not Make Any Transactions"