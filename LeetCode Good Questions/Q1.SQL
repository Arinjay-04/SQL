-- . Customer Who Visited but Did Not Make Any Transactions

-- SQL Schema
-- Pandas Schema
-- Table: Visits

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | visit_id    | int     |
-- | customer_id | int     |
-- +-------------+---------+
-- visit_id is the column with unique values for this table.
-- This table contains information about the customers who visited the mall.
 

-- Table: Transactions

-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | transaction_id | int     |
-- | visit_id       | int     |
-- | amount         | int     |
-- +----------------+---------+
-- transaction_id is column with unique values for this table.
-- This table contains information about the transactions made during the visit_id.
 

-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

-- Return the result table sorted in any order.

-- The result format is in the following example.


SELECT distinct Visits.customer_id , count(customer_id) as count_no_trans "to select a count of any particular value in sql we use count(coulmn name) group by table.column_name"
FROM Visits
LEFT JOIN Transactions ON Visits.visit_id = Transactions.visit_id
WHERE Transactions.visit_id IS NULL
group by Visits.customer_id;
