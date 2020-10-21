-- 8. Zmodyfikuj zapytanie z zadania poprzedniego w taki sposób, 
-- aby jego wynikiem była sumaryczna miesięczna płaca w zespole, który wypłaca swoim pracownikom najwięcej pieniędzy.

SELECT 
    id_team, 
    sum(salary_base + ifnull(salary_add,0)) AS total_monthly_salary
FROM 
    users
GROUP BY 
    id_team
ORDER BY 
    total_monthly_salary DESC LIMIT 1;
