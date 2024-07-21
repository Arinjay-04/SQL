-- Table: Triangle

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | x           | int  |
-- | y           | int  |
-- | z           | int  |
-- +-------------+------+
-- In SQL, (x, y, z) is the primary key column for this table.
-- Each row of this table contains the lengths of three line segments.
 

-- Report for every three line segments whether they can form a triangle.

-- Return the result table in any order.

-- The result format is in the following example.

""select * , CASE WHEN x+y>z and y+z>x and x+z>y THEN 'Yes'
ELSE 'No' END as triangle
FROM Triangle;""

"We have used there CASE WHEN THEN"