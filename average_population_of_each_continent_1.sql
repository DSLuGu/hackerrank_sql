-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
SELECT CONTINENT, FLOOR(AVG(CI.POPULATION))
FROM CITY AS CI
JOIN COUNTRY AS CO ON CO.CODE=CI.COUNTRYCODE
GROUP BY CONTINENT;
