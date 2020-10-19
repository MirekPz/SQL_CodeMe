-- 4.   Nadaj podwyżki pracownikom - powiększ ich pensje podstawową o 15% i zaokrąglij do liczb całkowitych. 
--      Wyświetl: 
--                imię, nazwisko, stara podstawa, nowa podstawa wynagrodzenia.

SELECT 
	firstname, 
	lastname, 
	salary_base, 
	round(salary_base*1.15) AS new_salary 
FROM 
	users;
