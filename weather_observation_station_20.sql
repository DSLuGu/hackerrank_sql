-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
SET @ROW_NUM = -1;

SELECT ROUND(AVG(LAT_N), 4)
FROM (
    SELECT @ROW_NUM := @ROW_NUM + 1 AS N, LAT_N
    FROM STATION
    ORDER BY LAT_N
) AS A
WHERE N IN (FLOOR(@ROW_NUM/2), CEIL(@ROW_NUM/2));
