-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
SELECT CITY.NAME
FROM CITY
JOIN COUNTRY ON COUNTRY.CODE=CITY.COUNTRYCODE AND COUNTRY.CONTINENT = "Africa"
