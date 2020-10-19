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
