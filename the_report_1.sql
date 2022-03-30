-- https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
SELECT CASE WHEN G.GRADE < 8 THEN NULL ELSE S.NAME END, G.GRADE, S.MARKS
FROM STUDENTS AS S
LEFT JOIN GRADES AS G ON S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
ORDER BY G.GRADE DESC, S.NAME;
