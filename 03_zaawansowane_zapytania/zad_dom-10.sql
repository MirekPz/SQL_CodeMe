-- 10.   Każdy pracownik odłożył 20% swoich miesięcznych zarobków na 10-letnią lokatę oprocentowaną 10% w skali roku i kapitalizowaną co roku. 
--      Wyświetl informację o tym, jaki zysk będzie miał każdy pracownik po zamknięciu lokaty.

SELECT
	firstname,
	lastname,
    round(0.2*salary_base, 2) AS 'Kwota lokaty', 
    round((0.2*salary_base) * power(1.1, 10), 2) AS 'Kwota po 10 latach', 
    round((0.2*salary_base) * power(1.1, 10), 2) - round(0.2*salary_base, 2) AS 'Zysk'
FROM 
	users;
