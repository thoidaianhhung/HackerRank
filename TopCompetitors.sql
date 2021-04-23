SELECT H.hacker_id, H.name FROM Hackers H
INNER JOIN Submissions S ON H.hacker_id = S.hacker_id
INNER JOIN Challenge C ON S.challenge_id = C.challenge_id
INNER JOIN Difficulty D ON C.difficulty_level = D.difficulty_level
WHERE S.score = D.score
GROUP BY H.hacker_id, H.name
HAVING COUNT(S.hacker_id) > 1
order by count(s.challenge_id) desc, H.hacker_id;