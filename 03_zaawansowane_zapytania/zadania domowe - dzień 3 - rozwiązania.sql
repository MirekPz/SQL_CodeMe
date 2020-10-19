-- 1.   Dla każdego pracownika wygeneruj kod składający się z dwóch pierwszych liter jego etatu i jego numeru id. 
--      Wyświetl imię i nazwisko oraz kod pracownika.

SELECT FIRSTNAME, LASTNAME, concat(substr(POSITION, 1, 2),ID_USER) AS Kod FROM users;



-- 2.   Z nazwisk pracowników pozbądź się liter K i L - zamień je na X.

SELECT lastname, replace(replace(lastname, 'K', 'X'), 'L', 'X') AS modified_lastname FROM users;



-- 3.   Wyświetl tylko tych pracowników, którzy mają literę L w drugiej połowie nazwiska. 
--      Uwaga: przyjęte założenie - jeżeli nazwisko ma nieprzystą liczbę liter, to środkową zaliczmy do drugiej połowy. 

SELECT 
	lastname, 
    substr(lastname,floor(length(lastname)/2) + 1) AS 'Druga połowa nazwiska'  
FROM 
	USERS 
WHERE 
	instr(substr(lastname,floor(length(lastname)/2) + 1),'L') > 0; 



-- 4.   Nadaj podwyżki pracownikom - powiększ ich pensje podstawową o 15% i zaokrąglij do liczb całkowitych. 
--      Wyświetl: 
--                imię, nazwisko, stara podstawa, nowa podstawa wynagrodzenia.

SELECT 
	firstname, 
	lastname,
	salary_base,
	round(salary_base*1.15) AS new_salary 
FROM 
	users;



-- 5. Policz jaki staż będzie miał każdy pracownik 1 stycznia 2021, wyświetl w dniach oraz w latach.

SELECT 
	firstname, 
    lastname, 
    datediff('2021-01-01', hired_at) AS 'Staż pracy w dniach', 
    abs(timestampdiff(year, '2021-01-01', hired_at)) AS 'Staż pracy w latach'
FROM 
	users;
	


-- 6.   Wyświetl nazwisko oraz datę zatrudnienia pracownika zespołu 20 w zmienionym formacie: 
--      zamiast rok - miesiąc - dzień wyświetl: miesiąc słownie | dzień / rok

SELECT 
	lastname AS Nazwisko,
    date_format(hired_at, '%M | %d / %Y') AS 'Data zatrudnienia'
FROM 
	users
WHERE 
	ID_TEAM = 20;



-- 7.   Sprawdź, jaki mamy dziś dzień tygodnia. 
 --     Wyświetl nazwę dnia.
 
 SELECT date_format(current_date, '%W');
 


-- 8.   Korzystając z wyrażenia CASE zmień adresy zespołów tak by wyświetlać stan zamiast miasta.

SELECT 
	id_team, 
    name, 
    CASE
		WHEN address = 'NEW YORK CITY' THEN 'New York'
		WHEN address = 'HOUSTON' THEN 'Texas'
		WHEN address = 'SAN DIEGO' THEN 'California'
		WHEN address = 'LOS ANGELES' THEN 'California'
	END AS 'Stan'
FROM 
	teams;



-- 9.   Dla każdego pracownika wyświetl informację o tym, czy jego pensja jest mniejsza niż, równa lub większa niż 480
--      |  name | salary_base |     limit     | 
--      | smith |     450     | less than 480 | 

SELECT 
	firstname, 
	lastname, 
    salary_base, 
    CASE
		WHEN salary_base < 480 THEN 'less than 480'
        WHEN salary_base = 480 THEN 'equals 480'
        ELSE 'more than 480'
    END AS 'limit' 
FROM 
	users;



-- 10. 
