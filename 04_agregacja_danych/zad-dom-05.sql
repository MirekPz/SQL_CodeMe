-- 5. W ramach każdego zespołu dla każdego stanowiska występującego w zespole oblicz najwyższą wypłatę całkowitą.

SELECT 
    id_team,
    position, 
    max(salary_base + ifnull(salary_add,0))
FROM 
    users
GROUP BY id_team, position
ORDER BY id_team;
