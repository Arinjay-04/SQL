"CTE, or Common Table Expression, serves as a temporary table within SQL, providing a concise and 
efficient way to reference and manipulate data from the original table. With CTEs, developers can
streamline their code, focusing only on the necessary columns and operations, thus enhancing efficiency 
and readability. This comprehensive guide delves deep into the realm of CTEs, exploring their syntax, 
applications, and best practices."

"Basically its a temperory dummy table we create to acheive the result";


-- SYNTAX

with cte as (
    select customer_number, count(order_number) as order_count
    from Orders
    group by customer_number
)
select * from cte;


-- Original Table 

+--------------+-----------------+
| order_number | customer_number |
+--------------+-----------------+
| 1            | 1               |
| 2            | 2               |
| 3            | 3               |
| 4            | 3               |
+--------------+-----------------+


-- CTE table

| customer_number | order_count |
| --------------- | ----------- |
| 1               | 1           |
| 2               | 1           |
| 3               | 2           |