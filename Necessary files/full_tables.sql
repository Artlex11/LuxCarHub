-- MySQL Script generated by MySQL Workbench
-- Sun Oct 22 19:22:13 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LuxCarHub
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LuxCarHub
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LuxCarHub` DEFAULT CHARACTER SET utf8 ;
USE `LuxCarHub` ;

-- -----------------------------------------------------
-- Table `LuxCarHub`.`Reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LuxCarHub`.`Reservation` (
  `ReservationID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `CarID` INT NOT NULL,
  `StartDate` DATETIME(6) NOT NULL,
  `EndDate` DATETIME(6) NOT NULL,
  PRIMARY KEY (`ReservationID`),
  UNIQUE INDEX `ReservationID_UNIQUE` (`ReservationID` ASC) VISIBLE,
  UNIQUE INDEX `UserID_UNIQUE` (`UserID` ASC) VISIBLE,
  UNIQUE INDEX `CarID_UNIQUE` (`CarID` ASC) VISIBLE,
  CONSTRAINT `User`
    FOREIGN KEY (`UserID`)
    REFERENCES `LuxCarHub`.`User` (`UserID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LuxCarHub`.`Car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LuxCarHub`.`Car` (
  `CarID` INT NOT NULL AUTO_INCREMENT,
  `Brand` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` INT NOT NULL,
  `SaleRate` INT NOT NULL,
  PRIMARY KEY (`CarID`),
  UNIQUE INDEX `CarID_UNIQUE` (`CarID` ASC) VISIBLE,
  CONSTRAINT `Reservation`
    FOREIGN KEY (`CarID`)
    REFERENCES `LuxCarHub`.`Reservation` (`CarID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LuxCarHub`.`Rating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LuxCarHub`.`Rating` (
  `RatingID` INT NOT NULL AUTO_INCREMENT,
  `UserID` INT NOT NULL,
  `CarID` INT NOT NULL,
  `RatingValue` INT NOT NULL,
  `Review` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`RatingID`),
  UNIQUE INDEX `RatingID_UNIQUE` (`RatingID` ASC) VISIBLE,
  UNIQUE INDEX `UserID_UNIQUE` (`UserID` ASC) VISIBLE,
  UNIQUE INDEX `CarID_UNIQUE` (`CarID` ASC) VISIBLE,
  CONSTRAINT `Car`
    FOREIGN KEY (`CarID`)
    REFERENCES `LuxCarHub`.`Car` (`CarID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LuxCarHub`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LuxCarHub`.`User` (
  `UserID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE INDEX `UserID_UNIQUE` (`UserID` ASC) VISIBLE,
  CONSTRAINT `Rating`
    FOREIGN KEY (`UserID`)
    REFERENCES `LuxCarHub`.`Rating` (`UserID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

INSERT INTO `user` (`UserId`, `FirstName`, `LastName`, `Email`, `Password`)
VALUES
(1, 'Artem', 'Cheloguzov', 'Chel@mail.ru', 'admin1'),
(2, 'Roman', 'Apykhtin', 'roma.apykhtin@mail.ru', 'admin2'),
(3, 'Alexey', 'Kozlov', 'lexa_boy@mail.ru', 'admin3');

INSERT INTO `rating` (`RatingID`, `UserID`, `CarID`, `RatingValue`, `Review`) 
VALUES
(1, 1, 5, 5, 'Тачка бомба, мчит дай боже'),
(2, 2, 26, 5, 'ауф че за аппарат');

INSERT INTO `car` (`CarID`, `Brand`, `Model`, `Year`, `SaleRate`) 
VALUES
(1, 'Lamborghini', ' Aventador S', 2021, 200000),
(2, 'Rolls Royce ', 'Dawn', 2022, 120000),
(3, 'Ferrari', ' F8 Tributo Spider', 2023, 140000),
(4, 'Lamborghini', 'Urus Pearl Capsule', 2023, 90000),
(5, 'Lamborghini ', 'Huracan EVO', 2022, 120000),
(6, 'Rolls- Royce ', 'Cullinan Black Badge', 2021, 120000),
(7, 'Rolls- Royce ', 'Wraith Nardo Grey', 2021, 90000),
(8, 'Mercedes ', 'G-class AMG 63', 2022, 70000),
(9, 'Ferrari ', 'Portofino', 2023, 85000),
(10, 'Lamborghini ', 'Urus', 2022, 80000),
(11, 'Audi ', 'R8', 2021, 55000),
(12, 'Porsche ', '911 (992) Turbo S', 2022, 80000),
(13, 'BMW', ' M5 CS', 2023, 90000),
(14, 'Lamborghini ', 'Huracan Spyder', 2022, 100000),
(15, 'Bentley ', 'Continental GT 3 First Edition', 2023, 59000),
(16, 'McLaren', '720s', 2021, 120000),
(17, 'Chevrolet ', 'Corvette C8', 2022, 70000),
(18, 'Aston ', 'Martin Vantage', 2022, 55000),
(19, 'Porsche ', 'Cayenne Coupe Turbo', 2023, 30000),
(20, 'Zeekr ', '001 Z-Sport', 2023, 35000),
(21, 'Lixiang ', 'Li Auto L9', 2023, 25000),
(22, 'Zeekr ', '001', 2023, 24000),
(23, 'Tesla ', 'Model X', 2022, 35000),
(24, 'Mercedes- Benz ', 'E63S AMG', 2022, 40000),
(25, 'Mercedes-Benz ', 'AMG GT 63s four door', 2023, 45000),
(26, 'BMW ', 'X5M Competition', 2022, 35000),
(27, 'Porsсhe ', '911 (992) Carrera Cabriolet 2021', 2021, 55000),
(28, 'Porsche ', 'Taycan Turbo', 2022, 52000),
(29, 'BMW ', 'X6M Competition', 2022, 39000),
(30, 'Mercedes ', 'GLE 63S AMG', 2021, 40000),
(31, 'BMW ', 'M850 i Cabrio', 2022, 55000),
(32, 'BMW ', 'X7 Lci xDrive 40d', 2023, 32000),
(33, 'Audi ', 'RS6', 2023, 40000),
(34, 'Porsche ', 'Panamera Turbo', 2022, 30000),
(35, 'Range Rover ', 'Autobiography Long', 2023, 28000),
(36, 'Cadillac ', 'Escalade', 2023, 39000),
(37, 'Mercedes Benz ', 'GLS', 2023, 25000),
(38, 'Nissan ', 'GT-R restyling 3', 2022, 39000),
(39, 'Chevrolet ', 'Camaro', 2022, 20000),
(40, 'Jaguar ', 'F-type Cabrio', 2022, 20000),
(41, 'Ford ', 'Mustang', 2021, 20000),
(42, 'Mercedes-Benz ', 'S600 W223', 2023, 35000);

INSERT INTO `reservation` (`ReservationID`, `UserId`, `CarID`, `StartDate`, `EndDate`)
VALUES
(1, 1, 29, '2023-11-16 22:21:46', '2023-11-17 22:21:46'),
(2, 2, 19, '2023-10-28 20:11:19', '2023-10-31 20:11:19');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;