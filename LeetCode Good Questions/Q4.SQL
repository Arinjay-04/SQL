1280 STUDENTS AND EXAMINATIONS


-- Points Before Start

-- 1) To join two table fully that is complete two circle or you can say union in MYSQL we use cross join
--     "SELECT column_name(s)
--     FROM table1
--     CROSS JOIN table2;"\
-- 2) Note: The CROSS JOIN keyword returns all matching records from both tables whether the other table matches or not. So, if there are rows in "Customers" that do not have matches in "Orders", or if there are rows in "Orders" that do not have matches in "Customers", those rows will be listed as well.
--    If you add a WHERE clause (if table1 and table2 has a relationship), the CROSS JOIN will produce the same result as the INNER JOIN clause:

-- 3) We use here cross join on Students and SUbjects table because we have to take all the rows from both the table 
--    without leaving a single column as mention in the question 
--    "Each student from the Students table takes every course from the Subjects table."

-- 4) Now once we get the full join of the Students and examinations table we will performs its left join with the 
--    Examinations table to know which student has giving each subject exam how many times
-- 5) When you perform left join be sure you perform it on stduent_id as well as subject_name , that means whatever is common in
--   both the table you have to put it in ON;
-- 6) When you perform a LEFT JOIN between the Students table and the Examinations table on the columns student_id and subject_name, 
-- the result will include all the rows from the Students table and only the matching rows from the Examinations table. If there is no
--  match, the result will include NULL for the columns from the Examinations table.           
-- 7) Then find the count of the subjects from examination table (dont find from student table because we only want count of subjects from
--   the examinations given);
-- 8) group it on the basis of student_id , student_name , subject_name;
-- 9) finally order the table based on student_id and subject_name (this was given in the question);



""select Students.student_id, Students.student_name, Subjects.subject_name, count(Examinations.subject_name)  as attended_exams from Students cross join Subjects
left join Examinations
on  Subjects.subject_name = Examinations.subject_name and Students.student_id = Examinations.student_id 
group by Students.student_id, Students.student_name, Subjects.subject_name
order by Students.student_id, Students.student_name, Subjects.subject_name""

-- In SQL, the use of commas (,) versus AND in a GROUP BY clause or ORDER BY clause has different contexts and purposes:


-- 1) Using commas in GROUP BY and ORDER BY clauses is the standard way to specify multiple columns for grouping or ordering
     "This means that the rows will be grouped by student_id, and
     within each student_id, they will be grouped by student_name, 
     and within each student_name, they will be grouped by subject_name."

--    SO basically AND is not used with GROUP BY, ORDER BY it is used with WHERE