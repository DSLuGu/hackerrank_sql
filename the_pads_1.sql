-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
SELECT CONCAT(NAME, "(", LEFT(OCCUPATION, 1), ")")
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT("There are a total of ", CNT_NAME, " ", LOWER_OCCUP, "s.")
FROM (
    SELECT LOWER(OCCUPATION) AS LOWER_OCCUP, COUNT(NAME) AS CNT_NAME
    FROM OCCUPATIONS
    GROUP BY LOWER(OCCUPATION)
    ORDER BY 2, 1
) AS T;
