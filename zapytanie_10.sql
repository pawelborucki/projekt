SELECT klienci.imie, klienci.nazwisko
FROM klienci 
WHERE klienci.id IN (
SELECT klienci.id
FROM klienci INNER JOIN wypozyczenia ON wypozyczenia.id_klienta = klienci.id
GROUP BY klienci.id
HAVING COUNT(*) > 1);