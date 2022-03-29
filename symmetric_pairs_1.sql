-- https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
SELECT F.X, F.Y
FROM FUNCTIONS AS F
JOIN FUNCTIONS AS F2 ON F2.X=F.Y AND F2.Y=F.X
GROUP BY F.X, F.Y
HAVING COUNT(F.X) > 1 OR F.X < F.Y
ORDER BY F.X;
