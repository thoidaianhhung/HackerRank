SELECT W.id, P.age, W.coins_needed, W.power
FROM Wands W INNER JOIN Wands_Property P
ON W.code = P.code
WHERE P.IS_EVIL = 0 AND W.COINS_NEEDED = (SELECT MIN(COINS_NEEDED) 
                                          FROM WANDS AS X
                                          JOIN WANDS_PROPERTY AS Y 
                                          ON (X.CODE = Y.CODE) 
                                          WHERE X.POWER = W.POWER AND Y.AGE = P.AGE) 
order by w.power desc, p.age desc;