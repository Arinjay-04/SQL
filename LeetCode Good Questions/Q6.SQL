-- Table: Employee

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | salary      | int     |
-- | managerId   | int     |
-- +-------------+---------+
-- id is the primary key (column with unique values) for this table.
-- Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
 

-- Write a solution to find the employees who earn more than their managers.

-- Return the result table in any order.


-- COMPANIES ---> ABODE , GOOGLE ,APPLE , TCS



SOlution:

"1) Here is you observe managerId is a forign key"
 "2) perform a LEFT JOIN ON A.managerId = B.id"
    
   " now what it will do ? -> it will go to the manager table in A check the managerId and will find if there 
    is any id with that that managerId in B and will return that row;"

# Write your MySQL query statement below
select A.name as Employee
from Employee A
LEFT JOIN Employee B
on A.managerId = B.id
where A.salary > B.salary;


"See if we have used here inner join instead it would have only returned us the row which are there in both the table
 so even if some row is null in either of the table it will not return it"