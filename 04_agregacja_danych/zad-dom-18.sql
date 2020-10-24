-- 18. Zmień zapytanie z zadania 14 w taki sposób, aby oprócz kolumny, pokazującej ilu pracowników w swoim nazwisku posiada 
--    chociaż jedną literę „a” lub „A”, pojawiła się kolumna pokazująca liczbę pracowników z chociaż jedną literą „e” lub „E” w nazwisku.

--    | z litera A  | z litera E  |
--    -----------------------------
--    |      9      |    11       |

SELECT
    (
    SELECT 
        count(lastname)
    FROM 
        users
    WHERE 
        lastname LIKE "%A%" OR "%a%"
        )  AS 'Liczba pracowników literą A',
	(
    SELECT 
        count(lastname)
    FROM 
        users
    WHERE 
        lastname LIKE "%E%" OR "%e%"
    ) AS 'Liczba pracowników z literą E'
FROM users
GROUP BY ''
