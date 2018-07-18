--Problem Statement

/*
Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
 
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/

--Solution

SELECT CITY, LENGTH(CITY) AS CITY_LENGTH FROM STATION ORDER BY CITY_LENGTH DESC, CITY ASC LIMIT 1;

SELECT CITY, LENGTH(CITY) AS CITY_LENGTH FROM STATION ORDER BY CITY_LENGTH ASC, CITY ASC LIMIT 1;
