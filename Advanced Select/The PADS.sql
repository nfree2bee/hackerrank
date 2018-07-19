--Problem Statement

/*
Given a table OCCUPATIONS that holds data for three fields namely Column, Type.
+-------------+-----------+
| Column      |   Type    |
+-------------+-----------+
| Name        | STRING    |
| Occupation  | STRING    |
+-------------+-----------+
 
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format: 

There are a total of [occupation_count] [occupation]s.

where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
*/

--Solution

SELECT CONCAT(NAME,"(",SUBSTR(OCCUPATION,1,1),")") 
FROM OCCUPATIONS 
ORDER BY NAME;

SELECT CONCAT("There are a total of ",COUNT(OCCUPATION)," ",LOWER(OCCUPATION),"s.") 
FROM OCCUPATIONS 
GROUP BY OCCUPATION 
ORDER BY COUNT(OCCUPATION), OCCUPATION; 
