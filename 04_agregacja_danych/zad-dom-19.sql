-- 19. Dla każdego zespołu wyświetl jego id, sumę płac pracowników w nim zatrudnionych oraz listę pracowników w formie: 
--     nazwisko:podstawowa płaca pracownika. 
--     Dane pracowników na liście mają zostać oddzielone średnikami. 
--     Wynik posortuj wg identyfikatorów zespołów.

--    np.

--    ID_TEAM |   SUMA  |        PRACOWNICY
--    -------------- ------------- --------------------------------------
--      1     |  2140,0  |  Smith:410; Hans:1730
--      2     |  2469,0  |  Yose:960; Jerry:439; Kowalsky:480; Dart:590;
--      3     |  2008,0  |  White:250; Hapke:480; Smith1070; Zac:208
--      4     |  1350,0  |  Black:1350;


SELECT 
    id_team, 
    SUM(salary_base) AS 'Suma płac w zespole', 
    GROUP_CONCAT(CONCAT(lastname, ":", salary_base) SEPARATOR ";  ") AS 'Lista pracowników zespołu'
FROM 
    users
GROUP BY 
    id_team
ORDER BY 
    id_team;
 