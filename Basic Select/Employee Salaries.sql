--Problem Statement

/*
Given a table STATION that holds data for five fields namely employee_id, name, months, salary.
+-------------+------------+
| Column      |   Type     |
+-------------+------------+
| employee_id | INTEGER    |
| name        | STRING     |
| months      | INTEGER    |
| salary      | INTEGER    |
+-------------+------------+
 
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been employees for less than  months. Sort your result by ascending employee_id.
*/

--Solution

SELECT name FROM Employee WHERE salary > 2000 AND months < 10 ORDER BY employee_id;
