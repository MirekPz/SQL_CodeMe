-- 3. Oblicz średnią pensję na stanowiskach w tej firmie. Wyniki uporządkuj wg malejącej średniej pensji.

SELECT 
    position, 
    round(avg(salary_base),2)
FROM
    users
GROUP BY
    position
ORDER BY avg(salary_base) DESC;

