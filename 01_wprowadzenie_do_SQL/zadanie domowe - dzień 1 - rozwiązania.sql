-- 1. Wyświetl całość informacji z relacji TEAMS.

SELECT * FROM TEAMS;
 

-- 2. Wyświetl całość informacji z relacji użytkownicy. 

SELECT * FROM USERS;
 

-- 3. Wyświetl nazwiska i roczne dochody pracowników. 

SELECT 
    LASTNAME AS Nazwisko, 
    SALARY_BASE * 12 AS 'Dochód roczny' 
FROM 
    USERS;


-- 4. Wyświetl nazwy etatów i sumaryczne miesięczne dochody pracowników.

SELECT 
    LASTNAME AS Nazwisko, 
    POSITION AS 'Nazwa etatu', 
    SALARY_BASE AS 'Podstawa', 
    SALARY_ADD AS 'Premia', 
    SALARY_BASE + IFNULL(SALARY_ADD,0) AS 'Dochód miesięczny' 
FROM 
    USERS;


-- 5. Wyświetl całość informacji o zespołach sortując wynik według nazw zespołów

SELECT * FROM TEAMS ORDER BY NAME;


-- 6. Wyświetl listę stanowisk (bez duplikatów) na których zatrudnieni są pracownicy. 

SELECT DISTINCT NAME FROM POSITIONS;


-- 7. Wyświetl wszystkie informacje o juniorach pracujących w firmie.

SELECT * FROM USERS WHERE POSITION = 'JUNIOR';


-- 8. Posortuj dane pracowników po dwóch kolumnach, najpierw alfabetycznie wg nazwisk i malejąco wg pensji.

SELECT * FROM USERS ORDER BY LASTNAME, SALARY_BASE DESC;


-- 9. Sprawdź jak działają metody UPPER/LOWER/REPLACE dla MySQL. Wyświetl nazwy stanowisk małymi literami w kolejności alfabetycznej. 

SELECT 
    REPLACE(NAME, 'E', '***') 
FROM 
    POSITIONS;

SELECT 
    LOWER(NAME) 
FROM 
    POSITIONS ORDER BY NAME ASC;


-- 10. Znajdź wszystkich pracowników, których bonus roczny będzie większy niż dwukrotność pensji miesięcznej.

SELECT 
    LASTNAME, 
    12 * IFNULL(SALARY_ADD,0) AS 'Bonus roczny', 
    2 * SALARY_BASE AS 'Dwukrotność pensji'
FROM 
    USERS
WHERE 
    12 * IFNULL(SALARY_ADD,0) > 2 * SALARY_BASE;


-- 11. Wyszukaj wszystkich pracowników, których id jest większe niż 150.

SELECT 
    LASTNAME, 
    ID_USER 
FROM 
    USERS
WHERE 
    ID_USER > 150;


-- 12. Sprawdź w jakich nazwiskach przedostatnia litera to litera E.

SELECT 
    LASTNAME 
FROM 
    USERS
WHERE 
    LASTNAME LIKE '%E_';


-- 13 Możemy policzyć wystąpienia rekordów za pomocą polecenia COUNT().  Liczbę wszystkich stanowisk oraz stanowiska bez powtórzeń policzymy za pomocą:
SELECT COUNT(position) FROM USERS;
SELECT COUNT(DISTINCT position) FROM USERS;
Sprawdź w ilu nazwiskach ostatnia litera to N.

SELECT 
    COUNT(LASTNAME) AS 'Liczba nazwisk' 
FROM 
    USERS
WHERE 
    LASTNAME LIKE '%N';


-- 14. Znajdź pracowników, których nazwisko zawiera w środku literę r (nie na końcu, nie na początku).

SELECT 
    LASTNAME
FROM 
    USERS
WHERE 
    LASTNAME LIKE '_%R%_';

-- 15. Znajdź pracowników o pensji wyższej lub równej 650 a niższej niż 1100.

SELECT 
    LASTNAME,
    SALARY_BASE
FROM 
    USERS
WHERE 
    SALARY_BASE >= 650 AND SALARY_BASE < 1100;
