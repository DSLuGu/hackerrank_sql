-- https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true
SELECT C.COMPANY_CODE, 
    C.FOUNDER, 
    COUNT(DISTINCT E.LEAD_MANAGER_CODE), 
    COUNT(DISTINCT E.SENIOR_MANAGER_CODE), 
    COUNT(DISTINCT E.MANAGER_CODE), 
    COUNT(DISTINCT E.EMPLOYEE_CODE) 
FROM COMPANY AS C
INNER JOIN EMPLOYEE E ON C.COMPANY_CODE = E.COMPANY_CODE
GROUP BY C.COMPANY_CODE, C.FOUNDER
ORDER BY C.COMPANY_CODE ASC;
