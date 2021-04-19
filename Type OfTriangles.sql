SELECT 
CASE
	WHEN A + B > C AND B + C > A AND A + C > B THEN
		CASE
			WHEN A = B AND A = C AND B = C THEN N'Equilateral'
			WHEN A = B OR A = C OR B = C THEN N'Isosceles'
			ELSE N'Scalene'
		END
	ELSE N'Not A Triangle'
END AS RESULT
FROM TRIANGLES;