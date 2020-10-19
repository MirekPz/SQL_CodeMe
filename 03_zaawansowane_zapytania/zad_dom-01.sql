--  1. Dla każdego pracownika wygeneruj kod składający się z dwóch pierwszych liter jego etatu i jego numeru id. 
--     Wyświetl imię i nazwisko oraz kod pracownika.

SELECT FIRSTNAME, LASTNAME, concat(substr(POSITION, 1, 2),ID_USER) AS Kod FROM users;
