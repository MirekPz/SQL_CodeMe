-- 13. Wyświetl średnie pensje wypłacane w ramach poszczególnych stanowisk i liczbę zatrudnionych na danym stanowisku. 
--    Pomiń pracowników zatrudnionych w 2020 roku.

SELECT 
    position AS Stanowisko, 
    round(avg(salary_base),2) AS "Średnia pensja na stanowisku", 
    count(*) AS "Liczba zatrudnionych na stanowisku"
FROM
    users
WHERE 
    hired_at < date('2020-01-01')
GROUP BY 
    position;
