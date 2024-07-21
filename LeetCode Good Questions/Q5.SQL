-- 1934. Confirmation Rate

""SELECT Signups.user_id, Round(avg(if(A.action='confirmed', 1, 0)), 2) as confirmation_rate
FROM Signups
LEFT JOIN Confirmations A ON Signups.user_id = A.user_id
group by Signups.user_id""


-- "IF(A.action='confirmed', 1, 0):"
"This is a conditional statement (IF function in SQL). It checks if A.action is equal to 'confirmed'.
If A.action is 'confirmed', it returns 1.
Otherwise, it returns 0."

-- AVG(...):

"AVG is the SQL aggregate function that calculates the average of a set of values.
In this case, it calculates the average of the values returned by the IF function. 
Specifically, it computes the average of 1s and 0s based on whether A.action is 'confirmed' or not."

"If there are 10 rows where A.action is 'confirmed' and 5 rows where it is not, the average computed would be (10 * 1 + 5 * 0) / 15 = 0.67."


So basically what is happening here is the actions which are confimred are marked 1 and which are not are returned 0
and the total count AVG group by user_id is calculating for zeros and ones