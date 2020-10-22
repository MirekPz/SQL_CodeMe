-- 15. Zbuduj zapytanie, które wyświetli średnie i maksymalne pensje na stanowiskach REGULAR i SENIOR w poszczególnych zespołach
--     (weź pod uwagę zarówno płace podstawowe jak i dodatkowe). 
--     Dokonaj zaokrąglenia pensji do wartości całkowitych.
--     Wynik zapytania posortuj wg id zespołów i nazw stanowisk.

SELECT 
    id_team,
    position,
    round(avg(salary_base + ifnull(salary_add,0))) AS 'Średnia pensja', 
    round(max(salary_base + ifnull(salary_add,0))) AS 'Maksymalna'
FROM
    users
WHERE
    position IN ('REGULAR', 'SENIOR')
GROUP BY 
    id_team,position
ORDER BY 
    id_team, position;