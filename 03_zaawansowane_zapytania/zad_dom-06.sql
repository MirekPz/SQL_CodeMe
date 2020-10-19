-- 6.   Wyświetl nazwisko oraz datę zatrudnienia pracownika zespołu 20 w zmienionym formacie: 
--      zamiast rok - miesiąc - dzień wyświetl: miesiąc słownie | dzień / rok

SELECT 
	lastname AS Nazwisko,
    date_format(hired_at, '%M | %d / %Y') AS 'Data zatrudnienia'
FROM 
	users
WHERE 
	ID_TEAM = 20;
