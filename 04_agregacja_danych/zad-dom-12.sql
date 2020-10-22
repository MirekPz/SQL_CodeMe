-- 12. Sprawdź, czy id pracowników są unikalne. Wyświetl zdublowane wartości identyfikatorów.

-- Pierwszy sposób, zapytanie z wyrażeniem warunkowym:
SELECT 
    count(*) AS liczba_pracowników,
    count(DISTINCT id_user) AS liczba_unikalnych_ID,
    CASE 
        WHEN count(*) = count(DISTINCT id_user) THEN 'ID pracowników są unikalne'
        ELSE 'Błąd - istnieją zdublowane ID'
    END AS 'Sprawdzenie niepowtarzalnoścu ID'
FROM 
    users;
    
-- Drugi sposób, grupowanie po ID pracowników (zapytanie wyświetli tylko liczby zdublowanych pracowników dla poszczególnych ID lub nic):    
SELECT 
    id_user, 
    count(*)
FROM 
    users
GROUP BY 
    id_user
HAVING 
    count(id_user) > 0;

