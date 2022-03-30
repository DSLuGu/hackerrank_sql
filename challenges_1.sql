-- https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
WITH counter AS (SELECT h.hacker_id, h.name, COUNT(*) AS challenges_created
                FROM challenges AS c
                JOIN hackers AS h ON h.hacker_id=c.hacker_id
                GROUP BY h.hacker_id, h.name);

SELECT c.hacker_id, c.name, c.challenges_created
FROM counter AS c
WHERE c.challenges_created = (SELECT MAX(challenges_created) FROM counter)
    OR c.challenges_created IN (SELECT challenges_created
                               FROM counter
                               GROUP BY challenges_created
                               HAVING COUNT(*) = 1)
ORDER BY c.challenges_created DESC, c.hacker_id;


SELECT c.hacker_id, c.name, c.challenges_created
FROM (SELECT h.hacker_id, h.name, COUNT(*) AS challenges_created
      FROM challenges AS c
      INNER JOIN hackers h ON c.hacker_id = h.hacker_id
      GROUP BY h.hacker_id, h.name
) AS c
WHERE c.challenges_created = (SELECT MAX(challenges_created) 
                            FROM (SELECT h.hacker_id, h.name, COUNT(*) AS challenges_created
                                  FROM challenges AS c
                                  INNER JOIN hackers h ON c.hacker_id = h.hacker_id
                                  GROUP BY h.hacker_id, h.name
                            ) AS counter)
OR c.challenges_created IN (SELECT challenges_created
                          FROM (SELECT h.hacker_id, h.name, COUNT(*) AS challenges_created
                                FROM challenges AS c
                                INNER JOIN hackers h ON c.hacker_id = h.hacker_id
                                GROUP BY h.hacker_id, h.name
                          ) AS counter
                          GROUP BY challenges_created
                          HAVING COUNT(*) = 1)
ORDER BY c.challenges_created DESC, c.hacker_id;
