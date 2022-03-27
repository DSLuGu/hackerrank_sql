-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
SELECT *
FROM (
    SELECT CITY, LENGTH(CITY)
    FROM STATION
    ORDER BY 2, 1
    LIMIT 1
) AS A
UNION
SELECT *
FROM (
    SELECT CITY, LENGTH(CITY)
    FROM STATION
    ORDER BY 2 DESC, 1
    LIMIT 1
) AS B;
