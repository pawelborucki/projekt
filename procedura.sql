delimiter //
create procedure usun_zwr_wyp (IN klient integer, IN ksiazka integer)
                begin
                delete  from wypozyczenia where wypozyczenia.id_klienta = klient AND wypozyczenia.id_zasobu = ksiazka;
                end; //
delimiter ;