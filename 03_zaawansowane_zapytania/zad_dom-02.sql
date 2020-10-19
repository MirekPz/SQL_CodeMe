-- 2. Z nazwisk pracowników pozbądź się liter K i L - zamień je na X.

SELECT lastname, replace(replace(lastname, 'K', 'X'), 'L', 'X') AS modified_lastname FROM users;
