-- https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true
SELECT CONCAT(S.HACKER_ID, "  ", H.NAME)
FROM SUBMISSIONS AS S
LEFT JOIN HACKERS AS H ON H.HACKER_ID=S.HACKER_ID
LEFT JOIN CHALLENGES AS C ON C.CHALLENGE_ID=S.CHALLENGE_ID
LEFT JOIN DIFFICULTY AS D ON D.DIFFICULTY_LEVEL=C.DIFFICULTY_LEVEL
WHERE S.SCORE=D.SCORE
GROUP BY S.HACKER_ID, H.NAME
HAVING COUNT(S.HACKER_ID) > 1
ORDER BY COUNT(S.HACKER_ID) DESC, S.HACKER_ID;