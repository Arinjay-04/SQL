-- SQL Aggregate Functions

"An aggregate function is a function that performs a calculation on a set of values, and returns a single value."

"The most commonly used SQL aggregate functions are:

MIN() - returns the smallest value within the selected column
MAX() - returns the largest value within the selected column
COUNT() - returns the number of rows in a set
SUM() - returns the total sum of a numerical column
AVG() - returns the average value of a numerical column

Aggregate functions ignore null values (except for COUNT())."

-- SQL MIN() and MAX() Functions

"Find the lowest price in the Price column:"

""SELECT MIN(Price)
FROM Products;""

"Find the highest price in the Price column:
"
""SELECT MAX(Price)
FROM Products;""

-- The SQL COUNT() Function

"The COUNT() function returns the number of rows that matches a specified criterion."

"find the total number of rows in the Products table:"

""SELECT COUNT(*)
FROM Products;
""

-- Use COUNT() with GROUP BY

""SELECT COUNT(*) AS [Number of records], CategoryID
FROM Products
GROUP BY CategoryID;""

-- SQL SUM() Function

"Return the sum of all Quantity fields in the OrderDetails table:"

""SELECT SUM(Quantity)
FROM OrderDetails;""


-- SUM() With an Expression

"Use an expression inside the SUM() function:"

""SELECT SUM(Quantity * 10)
FROM OrderDetails;""

"Join OrderDetails with Products, and use SUM() to find the total amount:"

""SELECT SUM(Price * Quantity)
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;""

-- SQL AVG() Function

""SELECT AVG(Price)
FROM Products;""

-- Higher Than Average

""SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products);""

"SELECT * FROM Products
WHERE price >  AVG(price) ;
but this is wrong because you Cannot have aggregate function in WHERE clause (price>AVG(price))."

-- SQL LIKE Operator

"Select all customers that starts with the letter "a":"

""SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';""

-- The _ Wildcard

"The _ wildcard represents a single character.

It can be any character or number, but each _ represents one, and only one, character.

Example
Return all customers from a city that starts with 'L' followed by one wildcard character,
 then 'nd' and then two wildcard characters:"

""SELECT * FROM Customers
WHERE city LIKE 'L_nd__';""



"Return all customers from a city that contains the letter 'L':"

""SELECT * FROM Customers
WHERE city LIKE '%L%';""



"Return all customers that ends with 'a':"

""SELECT * FROM Customers
WHERE CustomerName LIKE '%a';""


"Return all customers that starts with "b" and ends with "s":"

""SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s';""

"Return all customers that starts with "a" and are at least 3 characters in length:"

""SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';
""

-- Using the [] Wildcard

"Return all customers starting with either "b", "s", or "p":"

""SELECT * FROM Customers
WHERE CustomerName LIKE '[bsp]%';""

"Return all customers starting with "a", "b", "c", "d", "e" or "f":"

""SELECT * FROM Customers
WHERE CustomerName LIKE '[a-f]%';""


-- SQL IN Operator

"Return all customers from 'Germany', 'France', or 'UK'"

""SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');""

"Return all customers that are NOT from 'Germany', 'France', or 'UK':"

""SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');""

"Return all customers that have an order in the Orders table:
"
""SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);""

-- SQL BETWEEN Operator

"Selects all products with a price between 10 and 20:"

""SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;""

"The following SQL statement selects all products with a price between 10 and 20.
 In addition, the CategoryID must be either 1,2, or 3:
"
"Example"
""SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);""


-- BETWEEN Dates

""SELECT * FROM Orders
WHERE OrderDate BETWEEN '07/01/1996' AND '07/31/1996';""

-- Concatenate Columns


"The following SQL statement creates an alias named "Address" that combine four columns
 (Address, PostalCode, City and Country):"


""SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;""

""SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;""



-- LENGTH OF A string in SQL

"For calculating Length we use char_length"

""select tweet_id from Tweets 
where char_length(content) > 15""

