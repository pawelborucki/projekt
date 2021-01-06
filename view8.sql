CREATE VIEW zapytanie_8 AS
SELECT gatunki.nazwa, zasoby.autor
FROM gatunki LEFT JOIN zasoby ON gatunki.id = zasoby.gatunek