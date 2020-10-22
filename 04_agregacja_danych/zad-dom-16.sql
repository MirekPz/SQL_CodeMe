-- 16. Zbuduj zapytanie, które wyświetli, ilu pracowników zostało zatrudnionych w poszczególnych latach.
-- Wynik posortuj rosnąco ze względu na rok zatrudnienia.

SELECT 
    year(hired_at), count(*)
FROM 
    users
GROUP BY 
    year(hired_at)
ORDER BY 
    year(hired_at);
 