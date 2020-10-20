-- 6. Wyświetl liczbę zatrudnionych na stanowisku SENIOR

-- Pierwszy sposób (użycie grupowania):
SELECT 
    position, 
    count(*) AS number_of_employees
FROM 
    users
GROUP BY 
    position
HAVING 
    position = 'SENIOR';

-- Drugi sposób (proste zapytanie z WHERE):
SELECT 
    position, 
    count(*)  AS number_of_employees
FROM 
    users
WHERE 
    position='SENIOR';
