-- 17. Zbuduj zapytanie, które policzy liczbę liter w nazwiskach pracowników i wyświetli liczbę nazwisk z daną liczbą liter. 
--    Wynik zapytania posortuj rosnąco wg liczby liter w nazwiskach.

-- np.
--    | ile liter | w ilu nazwiskach? |
--    |-------------------------------|
--    |    5      |        4          |
--    |    7      |        2          |
--    |    8      |        1          |
--    |    9      |        4          |


SELECT 
    length(lastname) AS liczba_liter_w_nazwisku, 
    count(*) AS w_ilu_nazwiskach
FROM 
    users
GROUP BY 
    length(lastname)
ORDER BY 
    liczba_liter_w_nazwisku;
 