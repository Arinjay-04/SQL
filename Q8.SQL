-- 619. Biggest Single Number
-- Solved
-- Easy
-- Topics
-- Companies
-- SQL Schema
-- Pandas Schema
-- Table: MyNumbers

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | num         | int  |
-- +-------------+------+
-- This table may contain duplicates (In other words, there is no primary key for this table in SQL).
-- Each row of this table contains an integer.
 

-- A single number is a number that appeared only once in the MyNumbers table.

-- Find the largest single number. If there is no single number, report null.

-- The result format is in the following example.




""with cte as
(select num from MyNumbers
group by num                 --SEE THIS PART WILL RETURN US VALUE WHEN THERE I ATLEAST 1 VALUE PRESENT
having count(*) = 1
order by num desc
limit 1)

select case when count(*) > 0 then num    -- We do this for NULL values;
else NULL end as num from cte;""


 