SELECT h.hacker_id, h.name, SUM(score) FROM (
    SELECT hacker_id, challenge_id, MAX(score) AS score FROM SUBMISSIONS
    GROUP BY hacker_id, challenge_id
)s
JOIN Hackers h on s.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(score) > 0
ORDER BY SUM(score) desc, h.hacker_id;
