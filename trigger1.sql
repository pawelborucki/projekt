DELIMITER $$   
CREATE TRIGGER bf_ins_klienci 
BEFORE INSERT ON klienci 
FOR EACH ROW  
BEGIN  
SET NEW.imie = UPPER(NEW.imie);
SET NEW.nazwisko = UPPER(NEW.nazwisko);
END$$  
DELIMITER ;  