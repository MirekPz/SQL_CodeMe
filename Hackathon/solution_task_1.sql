use dog_baby_name_db;
select * from baby_name_data;
select * from dog_name_data;

-- zwiększenie limitu wyświetlanej tabeli z 1000 do 50000 wierszy

select * from baby_name_data where baby_name in ('Max', 'Jess');
-- wynik: żadne dziecko nie ma na imię dokładnie Jess, natomiast Max -> 77

select * from dog_name_data where dog_name in ('Max', 'Jess');
-- Jess -> 91, Max -> 507

-- Liczba wszytkich próbek:
select sum(frequency) AS dzieci_wszystkie from baby_name_data;
-- 8321 imion dziecięcych
select sum(frequency) AS psy_wszystkie from dog_name_data;
-- 57592 psich imion

-- wyszukiwanie imion podobnych:
select * from baby_name_data where baby_name like "Jess%";
-- żadne dziecko nie ma na imienia zaczynającego sie na Jess,
select * from baby_name_data where baby_name like "Max%";
-- doszło 20 przypadków imio zaczynających się na "Max", tzn. tyle razy wystąpiło imię Maxwell 
-- występują tylko 2 rodaje imion: Max, Maxwell
select * from dog_name_data where dog_name like "Jess%";
-- występuje 13 różnych wariantów psich imion zaczynających się na "Jess"
select * from dog_name_data where dog_name like "Max%";
-- występuje 29 różnych wariantów psich imion zaczynających się na "Max" (dla dzieci były tylko 2)


select * from baby_name_data where baby_name like "%Jess%";
select * from baby_name_data where baby_name like "%Max%";
select * from dog_name_data where dog_name like "%Jess%";
select * from dog_name_data where dog_name like "%Max%";
-- uwzględnienie tego, że imię może być wewnątrz dłuższej nazwy dało rozszerzenie liczby wariantów tylko dla psiego imienia Max, 
-- do 35 różnych nazw, pozostałe 3 przypadki bez zmian

-- Częstotliwość występowania imion:

-- dzieci: 
select sum(frequency) AS dzieci_Jess from baby_name_data where baby_name like "%Jess%";
-- wynik:   0
select sum(frequency) AS dzieci_Max from baby_name_data where baby_name like "%Max%";
-- wynik:  97

-- psy:
select sum(frequency) AS psy_Jess from dog_name_data where dog_name like "%Jess%";
-- wynik: 302
select sum(frequency) AS psy_Max from dog_name_data where dog_name like "%Max%";
-- wynik: 638

-- Udziały procentowe: 
### select 100*dzieci_Jess/dzieci_wszytkie, 100*dzieci_Max/dzieci_wszytkie, 100*psy_Jess/psy_wszytkie, 100*psy_Max/psy_wszytkie;
### select 100*dzieci_Max/dzieci_wszytkie, 100*dzieci_Max/dzieci_wszytkie, 100*psy_Jess/psy_wszytkie, 100*psy_Max/psy_wszytkie;
###  ??????????? select  dzieci_Max/dzieci_wszystkie;

-- Wnioski: 
-- imię JESS niepopularne wśród dzieci (0)
-- imię MAX mało popularne wśród psów (638/57592), bardziej wśród dzieci (97/8321)