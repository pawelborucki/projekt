CREATE VIEW view1 AS
SELECT wymagany_wiek
FROM gatunki 
ORDER BY wymagany_wiek DESC
LIMIT 1;