-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
SELECT (SALARY * MONTHS),
    COUNT(*)
FROM EMPLOYEE
GROUP BY 1
ORDER BY 1 DESC
LIMIT 1;
