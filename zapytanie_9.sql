SELECT zasoby.tytul, klienci.nazwisko, zwroty.data_zwrotu
FROM zwroty LEFT JOIN klienci ON zwroty.id_klienta = klienci.id INNER JOIN zasoby ON zwroty.id_zasobu = zasoby.id
WHERE zwroty.data_zwrotu BETWEEN '2019-12-10' AND '2020-08-10'
