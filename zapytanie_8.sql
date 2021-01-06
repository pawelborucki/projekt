SELECT gatunki.nazwa, zasoby.autor
FROM gatunki LEFT JOIN zasoby ON gatunki.id = zasoby.gatunek