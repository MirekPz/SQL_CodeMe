use dog_baby_name_db;
SELECT * FROM baby_name_data;
SELECT * FROM dog_name_data;

-- zwiększenie limitu wyświetlanej tabeli z 1000 do 50000 wierszy

SELECT * FROM baby_name_data WHERE baby_name in ('Max', 'Jess');
-- wynik: żadne dziecko nie ma na imię dokładnie Jess, natomiast Max -> 77

SELECT * FROM dog_name_data WHERE dog_name in ('Max', 'Jess');
-- Jess -> 91, Max -> 507

-- Liczba wszytkich próbek:
SELECT 
    sum(frequency) AS dzieci_wszystkie 
FROM 
    baby_name_data;
-- 8321 imion dziecięcych
SELECT 
    sum(frequency) AS psy_wszystkie 
FROM 
    dog_name_data;
-- 57592 psich imion

-- wyszukiwanie imion podobnych:
SELECT * FROM baby_name_data WHERE baby_name like "Jess%";
-- żadne dziecko nie ma na imienia zaczynającego sie na Jess,
SELECT * FROM baby_name_data WHERE baby_name like "Max%";
-- doszło 20 przypadków imio zaczynających się na "Max", tzn. tyle razy wystąpiło imię Maxwell 
-- występują tylko 2 rodaje imion: Max, Maxwell
SELECT * FROM dog_name_data WHERE dog_name like "Jess%";
-- występuje 13 różnych wariantów psich imion zaczynających się na "Jess"
SELECT * FROM dog_name_data WHERE dog_name like "Max%";
-- występuje 29 różnych wariantów psich imion zaczynających się na "Max" (dla dzieci były tylko 2)

SELECT * FROM baby_name_data WHERE baby_name like "%Jess%";
SELECT * FROM baby_name_data WHERE baby_name like "%Max%";
SELECT * FROM dog_name_data WHERE dog_name like "%Jess%";
SELECT * FROM dog_name_data WHERE dog_name like "%Max%";
-- uwzględnienie tego, że imię może być wewnątrz dłuższej nazwy dało rozszerzenie liczby wariantów tylko dla psiego imienia Max, 
-- do 35 różnych nazw, pozostałe 3 przypadki bez zmian

-- Częstotliwość występowania imion:

-- dzieci: 
SELECT 
    sum(frequency) AS dzieci_Jess 
FROM 
    baby_name_data 
WHERE 
    baby_name like "%Jess%";
-- wynik:   0
SELECT 
    sum(frequency) AS dzieci_Max 
FROM 
    baby_name_data 
WHERE 
    baby_name like "%Max%";
-- wynik:  97

-- psy:
SELECT sum(frequency) AS psy_Jess FROM dog_name_data WHERE dog_name like "%Jess%";
-- wynik: 302
SELECT sum(frequency) AS psy_Max FROM dog_name_data WHERE dog_name like "%Max%";
-- wynik: 638

-- Udziały procentowe: 
SELECT
    100*0/8321 AS "% dzieci Jess", 
    100*97/8321 AS "% dzieci Max", 
    100*302/57592 AS "% psy Jess", 
    100*638/57592 AS "% psy Max";
-- wniosek:  
-- imię Max jest bardziej popularne dla dzieci (1,1657%) niż dla psów (1,1078%)
-- odwrotnie z imieniem JESS: dla dzieci 0%, dla psów 0,5244%

-- Najbardziej popularne imiona: 
SELECT 
    baby_name, 
    frequency, 
    100*frequency/8321 AS procent FROM baby_name_data 
order by 
    frequency DESC;    -- OLIVER
    
SELECT dog_name, 
    frequency, 
    100*frequency/57592 AS procent FROM dog_name_data 
order by 
    frequency desc;    -- Bella
