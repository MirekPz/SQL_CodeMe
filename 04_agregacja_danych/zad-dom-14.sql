-- 14. Zbuduj zapytanie, które wyliczy, ilu pracowników w swoim nazwisku posiada chociaż jedną literę „a” lub „A”.

SELECT count(lastname)
FROM users
WHERE lastname LIKE "%A%" OR "%a%";
