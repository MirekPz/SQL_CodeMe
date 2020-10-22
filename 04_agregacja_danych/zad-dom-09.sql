-- 9. Dla każdego pracownika, który jest szefem, wyświetl pensję najgorzej zarabiającego podwładnego. 
--    Wyniki uporządkuj wg malejącej pensji.

SELECT 
    id_boss AS ID_szefa, 
    GROUP_CONCAT(lastname SEPARATOR ', ') AS lista_podwladnych,
    min(salary_base) AS najgorsza_pensja 
FROM 
    users 
GROUP BY 
    id_boss 
ORDER BY 
    najgorsza_pensja  DESC;
