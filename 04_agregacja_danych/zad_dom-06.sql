-- 6. Wyświetl liczbę zatrudnionych na stanowisku SENIOR

SELECT 
    position, 
    count(*) AS number_of_employees
FROM 
    users
GROUP BY 
    position
HAVING 
    position = 'SENIOR';

SELECT 
    position, 
    count(*)  AS number_of_employees
FROM 
    users
WHERE 
    position='SENIOR';
