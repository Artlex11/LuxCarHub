-- MySQL Script generated by MySQL Workbench
-- Sun Oct  1 23:03:26 2023
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
  `DailyRentalRate` INT NOT NULL,
  PRIMARY KEY (`CarID`),
  UNIQUE INDEX `CarID_UNIQUE` (`CarID` ASC) VISIBLE,
  CONSTRAINT `Reservation`
    FOREIGN KEY (`CarID`)
    REFERENCES `LuxCarHub`.`Reservation` (`CarID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
INSERT Car(CarId, Brand, Model, Year, DailyRentalRate)
VALUES (1, "Opel",  "Astra GT", 2005, 1000);
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


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
