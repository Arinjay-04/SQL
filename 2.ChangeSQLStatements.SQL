-- SQL UPDATE Statement

""UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;""

"Update Warning!
Be careful when updating records. If you omit the WHERE clause, ALL records will be updated!"

-- SQL DELETE Statement

""DELETE FROM table_name WHERE condition"";

-- Delete a Table

""DROP TABLE Customers;""

-- SQL TOP, LIMIT, FETCH FIRST or ROWNUM Clause

-- 1.The SQL SELECT TOP Clause
"The SELECT TOP clause is useful on large tables with thousands of records.
Returning a large number of records can impact performance."


""SELECT TOP 3 * FROM Customers;""

"SYntax"
""SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition""

"MySQL Syntax:"
""SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;""

"Oracle 12 Syntax:"

""SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;""

-- 2.LIMIT
"Select the first 3 records of the Customers table:"

""SELECT * FROM Customers
LIMIT 3;""

-- 3.FETCH FIRST
"The following SQL statement shows the equivalent example for Oracle:"

"Example
Select the first 3 records of the Customers table:"

""SELECT * FROM Customers
FETCH FIRST 3 ROWS ONLY;""



