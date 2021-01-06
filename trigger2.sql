delimiter $$ 
create trigger bf_ins_wyp
before insert on wypozyczenia
for each row
begin
	update zasoby set ilosc = ilosc - 1 where id=new.id_zasobu;
end$$
delimiter ;