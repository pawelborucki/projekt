CREATE VIEW view2 AS
SELECT tytul, autor
FROM zasoby 
WHERE ilosc > 5
ORDER BY tytul DESC;