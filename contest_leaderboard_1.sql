-- https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true
SELECT h.hacker_id, h.name, SUM(max_score)
FROM hackers AS h
JOIN (
    SELECT hacker_id, challenge_id, MAX(score) AS max_score
    FROM submissions AS s
    GROUP BY hacker_id, challenge_id
) AS s ON s.hacker_id=h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(max_score) > 0
ORDER BY SUM(max_score) DESC, h.hacker_id;
