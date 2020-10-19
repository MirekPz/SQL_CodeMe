-- 5. Policz jaki staż będzie miał każdy pracownik 1 stycznia 2021, wyświetl w dniach oraz w latach.

SELECT 
	firstname, 
    lastname, 
    datediff('2021-01-01', hired_at) AS 'Staż pracy w dniach', 
    abs(timestampdiff(year, '2021-01-01', hired_at)) AS 'Staż pracy w latach'
FROM 
	users;
