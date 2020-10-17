-- 1. Dla każdego pracownika wygeneruj kod składający się z dwóch pierwszych liter jego etatu i jego numeru id. 
--     Wyświetl imię i nazwisko oraz kod pracownika.

SELECT FIRSTNAME, LASTNAME, concat(substr(POSITION, 1, 2),ID_USER) AS Kod FROM users;



-- 2. Z nazwisk pracowników pozbądź się liter K i L - zamień je na X.

SELECT lastname, replace(replace(lastname, 'K', 'X'), 'L', 'X') AS modified_lastname FROM users;



-- 3.   Wyświetl tylko tych pracowników, którzy mają literę L w drugiej połowie nazwiska.

