-- 3.   Wyświetl tylko tych pracowników, którzy mają literę L w drugiej połowie nazwiska. 
--      Uwaga: przyjęte założenie - jeżeli nazwisko ma nieprzystą liczbę liter, to środkową zaliczmy do drugiej połowy. 

SELECT 
	lastname, 
    substr(lastname,floor(length(lastname)/2) + 1) AS 'Druga połowa nazwiska'  
FROM 
	USERS 
WHERE 
	instr(substr(lastname,floor(length(lastname)/2) + 1),'L') > 0; 
