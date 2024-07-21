-- 1211. Queries Quality and Percentage
-- Solved
-- Easy
-- Topics
-- Companies
-- SQL Schema
-- Pandas Schema
-- Table: Queries

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | query_name  | varchar |
-- | result      | varchar |
-- | position    | int     |
-- | rating      | int     |
-- +-------------+---------+
-- This table may have duplicate rows.
-- This table contains information collected from some queries on a database.
-- The position column has a value from 1 to 500.
-- The rating column has a value from 1 to 5. Query with rating less than 3 is a poor query.
 

-- We define query quality as:

-- The average of the ratio between query rating and its position.

-- We also define poor query percentage as:

-- The percentage of all queries with rating less than 3.

-- Write a solution to find each query_name, the quality and poor_query_percentage.

-- Both quality and poor_query_percentage should be rounded to 2 decimal places.

-- Return the result table in any order.

-- The result format is in the following example.


with query1 as(select query_name , rating as poor_count from Queries 
where rating < 3
)

-- with query2(select  query_name , rating as poor_count from Queries )

SELECT query_name, 
       Round(AVG((rating/ position)),2) AS quality, round((select count(poor_count) from query1 where Queries.query_name = query1.query_name)*100/(select count(rating)), 2) as poor_query_percentage 
FROM Queries 
where query_name is not NULL
GROUP BY query_name;


