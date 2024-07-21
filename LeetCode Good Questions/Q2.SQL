-- 197. Rising Temperature
-- Solved
-- Easy
-- Topics
-- Companies
-- SQL Schema
-- Pandas Schema
-- Table: Weather

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | recordDate    | date    |
-- | temperature   | int     |
-- +---------------+---------+
-- id is the column with unique values for this table.
-- There are no different rows with the same recordDate.
-- This table contains information about the temperature on a certain day.


# Write your MySQL query statement below
select A.id from Weather A Join Weather B
on  A.recordDate = B.recordDate + INTERVAL 1 DAY and   "INTERVAL 1 DAY  mean one day gap"
A.temperature > B.temperature;