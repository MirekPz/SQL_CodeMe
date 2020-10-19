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

