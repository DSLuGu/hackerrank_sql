-- https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000
    AND MONTHS < 10
ORDER BY EMPLOYEE_ID;
