-- 4. Wyświetl najniższą i najwyższą pensję w firmie. 
--    Wyświetl informację o różnicy dzielącej najlepiej i najgorzej zarabiających pracowników.

SELECT 
    min(salary_base) AS lowest_salary,
    max(salary_base) AS highest_salary,
    max(salary_base) - min(salary_base) AS difference_between_extreme_earnings
FROM 
    users;
