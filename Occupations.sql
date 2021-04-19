SELECT 
MIN (CASE WHEN OCCUPATION = 'Doctor' THEN NAME ELSE NULL END) AS Doctor,
MIN (CASE WHEN OCCUPATION = 'Professor' THEN NAME ELSE NULL END) AS Professor,
MIN (CASE WHEN OCCUPATION = 'Singer' THEN NAME ELSE NULL END) as Singer,
MIN (CASE WHEN OCCUPATION = 'Actor' THEN NAME ELSE NULL END) as Actor
FROM (
	SELECT A.NAME, A.OCCUPATION, (
		SELECT COUNT(*) FROM OCCUPATIONS AS B
		WHERE A.OCCUPATION = B.OCCUPATION AND A.NAME > B.NAME
	) AS RANK
	FROM OCCUPATIONS AS A
) AS C
GROUP BY C.RANK;