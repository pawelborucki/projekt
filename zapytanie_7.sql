SELECT COUNT(zasoby.id), wydawnictwa.nazwa
FROM wydawnictwa LEFT JOIN zasoby ON wydawnictwa.id = zasoby.wydawnictwo
WHERE  wydawnictwa.nazwa = "Rebis"