-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
SELECT S.NAME
FROM STUDENTS AS S
JOIN FRIENDS AS F ON F.ID=S.ID
JOIN PACKAGES AS P ON P.ID=F.ID
JOIN PACKAGES AS P2 ON P2.ID=F.FRIEND_ID
WHERE P.SALARY < P2.SALARY
ORDER BY P2.SALARY;
