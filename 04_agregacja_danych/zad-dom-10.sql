-- 10. Wyświetl numery zespołów wraz z liczbą pracowników w każdym zespole. 
--     Wyniki uporządkuj wg malejącej liczby pracowników.

SELECT 
    ID_team AS Numer_zespolu, 
    count(*) AS Liczba_pracownikow 
FROM 
    users 
GROUP BY 
    ID_team 
ORDER BY 
    Liczba_pracownikow DESC;
 