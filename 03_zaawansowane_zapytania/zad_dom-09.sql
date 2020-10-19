-- 9.   Dla każdego pracownika wyświetl informację o tym, czy jego pensja jest mniejsza niż, równa lub większa niż 480
--      |  name | salary_base |     limit     | 
--      | smith |     450     | less than 480 | 

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
