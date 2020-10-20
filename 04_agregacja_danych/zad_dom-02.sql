-- 2.   Dla każdego pracownika wyświetl informację o tym, czy jego pensja jest mniejsza niż, równa lub większa niż 480
--    ___________________________________________
--     | name  | salary_base |     limit        | 
--    ------------------------------------------- 
--     | metei |    450      |   less than 480  |
--     | aimet |    480      |   equal 480      | 
--     | maya  |    500      |   more than 480  |
--    ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯

SELECT 
    firstname, 
    lastname, 
    salary_base, 
    CASE
        WHEN salary_base < 480 THEN 'less than 480'
        WHEN salary_base = 480 THEN 'equals 480'
        ELSE 'more than 480'
    END AS 'limit' 
FROM 
    users; 
