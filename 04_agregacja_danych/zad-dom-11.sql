-- 11. Zmodyfikuj zapytanie z zadania poprzedniego, aby wyświetlić numery tylko tych zespołów, które zatrudniają więcej niż 3 pracowników.

SELECT 
    ID_team AS Numer_zespolu, 
    count(*) AS Liczba_pracownikow 
FROM 
    users 
GROUP BY 
    ID_team
HAVING 
    count(*) > 3 
ORDER BY 
    Liczba_pracownikow DESC;
