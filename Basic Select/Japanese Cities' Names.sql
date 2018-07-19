--Problem Statement
/*
Given a table CITY that holds data for five fields namely ID, NAME, COUNTRY CODE, DISTRICT and POPULATION.
+-------------+-------------+
| Field       |   Type      |
+-------------+-------------+
| ID          | NUMBER      |
| NAME        | VARCHAR2(17)|
| COUNTRY CODE| VARCHAR2(3) |
| DISTRICT    | VARCHAR2(20)|
| POPULATION  | NUMBER      |
+-------------+-------------+
 
Write the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN. 
*/

--Solution

SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN'
