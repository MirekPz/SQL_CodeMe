-- 1. Wybierz dane o pracownikach zespołów 30 i 40 w kolejności malejących zarobków.

SELECT * 
FROM USERS 
WHERE ID_TEAM IN (30,40) 
ORDER BY SALARY_BASE DESC;



-- 3. Wyświetl dane (nazwisko, id szefa i podstawową wypłatę) o tych pracownikach, którzy zarabiają powyżej 1000 i posiadają szefa.

SELECT lastname, id_boss, salary_base 
FROM USERS 
WHERE SALARY_BASE > 1000 AND id_boss IS NOT NULL;



-- 5. Wyświetl nazwisko, stanowisko i stawkę godz. tych pracowników, którzy nie są ani regularami, ani juniorami ani stażystami i którzy nie zarabiają w przedziale od 400 do 800. Wyniki uszereguj według stawek godzinowych pracowników (przyjmij 20-dniowy miesiąc pracy i 8- godzinny dzień pracy).

-- Oczekiwany wynik:
-- LASTNAME	POSITION	HOURLY
-- MEVANS	SENIOR		5.187500
-- BROWN	SENIOR		6.000000
-- SMOOTH	SENIOR		6.687500
-- WILLIAMS	SENIOR		8.437500
-- THOMAS	LEADER		10.812500

SELECT 
    lastname, position, (salary_base/20)/8 AS 'Stawka godzinowa' 
FROM 
    USERS
WHERE 
    position NOT IN ("REGULAR", "JUNIOR", "INTERN") AND salary_base NOT BETWEEN 400 AND 800
ORDER BY
    (salary_base/20)/8;



-- 7. Wyświetl poniższe informacje o seniorach, wyniki uporządkuj według malejących płac:

SENIORS
WILLIAMS WORKS FROM 2003-05-01 AND EARNS 1560.00
SMOOTH WORKS FROM 2007-09-01 AND EARNS 1070.00
BROWN WORKS FROM 2008-07-01 AND EARNS 960.00
MEVANS WORKS FROM 2005-09-15 AND EARNS 935.00


SELECT 
    CONCAT(lastname, ' WORKS FROM ', DATE(HIRED_AT), ' AND EARNS ', salary_base + IFNULL(salary_add,0)) 
FROM 
    USERS 
WHERE 
    position = 'SENIOR';
