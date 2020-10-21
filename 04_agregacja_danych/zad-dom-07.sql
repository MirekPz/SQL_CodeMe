-- 7. Znajdź sumaryczne miesięczne płace dla każdego zespołu. Nie zapomnij o płacach dodatkowych.

SELECT 
    id_team, 
    sum(salary_base + ifnull(salary_add,0))
FROM 
    users
GROUP BY 
    id_team;
 