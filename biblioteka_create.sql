

CREATE TABLE IF NOT EXISTS `biblioteka`.`klienci` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `imie` VARCHAR(20) NULL,
  `nazwisko` VARCHAR(40) NULL,
  `data_urodzenia` DATE NULL,
  `miejscowosc` VARCHAR(30) NULL,
  `adres` VARCHAR(20) NULL,
  PRIMARY KEY (`id`))



CREATE TABLE IF NOT EXISTS `biblioteka`.`wydawnictwa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nazwa` VARCHAR(30) NULL,
  PRIMARY KEY (`id`))



CREATE TABLE IF NOT EXISTS `biblioteka`.`gatunki` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nazwa` VARCHAR(20) NULL,
  `wymagany_wiek` INT NULL,
  PRIMARY KEY (`id`))


CREATE TABLE IF NOT EXISTS `biblioteka`.`zasoby` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tytul` VARCHAR(45) NULL,
  `autor` VARCHAR(45) NULL,
  `wydawnictwo` INT NULL,
  `ilosc` INT NULL,
  `gatunek` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_wydawnictwa_idx` (`wydawnictwo` ASC) VISIBLE,
  INDEX `fk_gatunki_idx` (`gatunek` ASC) VISIBLE,
  CONSTRAINT `fk_wydawnictwa`
    FOREIGN KEY (`wydawnictwo`)
    REFERENCES `biblioteka`.`wydawnictwa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_gatunki`
    FOREIGN KEY (`gatunek`)
    REFERENCES `biblioteka`.`gatunki` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



CREATE TABLE IF NOT EXISTS `biblioteka`.`wypozyczenia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_klienta` INT NULL,
  `id_zasobu` INT NULL,
  `data_wypozyczenia` DATE NULL,
  `data_oddania` DATE NULL,
  `status` TINYINT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_klienci_idx` (`id_klienta` ASC) VISIBLE,
  INDEX `fk_zasoby_idx` (`id_zasobu` ASC) VISIBLE,
  CONSTRAINT `fk_klienci`
    FOREIGN KEY (`id_klienta`)
    REFERENCES `biblioteka`.`klienci` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zasoby`
    FOREIGN KEY (`id_zasobu`)
    REFERENCES `biblioteka`.`zasoby` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    
    
CREATE TABLE IF NOT EXISTS `biblioteka`.`zwroty` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_klienta` INT(4) NULL,
  `id_zasobu` INT(4) NULL,
  `data_zwrotu` DATE NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_klienci_zw`
    FOREIGN KEY (`id_klienta`)
    REFERENCES `biblioteka`.`klienci` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zasoby_zw`
    FOREIGN KEY (`id_zasobu`)
    REFERENCES `biblioteka`.`zasoby` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


