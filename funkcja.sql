CREATE FUNCTION funkcja1 (imie varchar(20), nazwisko varchar(40))
RETURNS varchar(60) DETERMINISTIC
RETURN CONCAT(imie, ' ', nazwisko);