SELECT wydawnictwa.nazwa, zasoby.tytul 
FROM wydawnictwa INNER JOIN zasoby ON wydawnictwa.id = zasoby.wydawnictwo
ORDER BY wydawnictwa.nazwa ASC