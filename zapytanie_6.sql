SELECT DISTINCT wydawnictwa.nazwa, gatunki.nazwa
FROM wydawnictwa INNER JOIN zasoby ON wydawnictwa.id = zasoby.wydawnictwo INNER JOIN gatunki ON gatunki.id = zasoby.gatunek
ORDER BY wydawnictwa.nazwa DESC
