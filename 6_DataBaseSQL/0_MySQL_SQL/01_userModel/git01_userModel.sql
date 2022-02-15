-- MySQL Script generated by MySQL Workbench
-- ter 15 fev 2022 10:52:33
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema git01_userModel
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `git01_userModel` ;

-- -----------------------------------------------------
-- Schema git01_userModel
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `git01_userModel` ;
USE `git01_userModel` ;

-- -----------------------------------------------------
-- Table `git01_userModel`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `git01_userModel`.`usuario` ;

CREATE TABLE IF NOT EXISTS `git01_userModel`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `NomeCompleto` VARCHAR(100) NOT NULL,
  `cpf` VARCHAR(20) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`login`),
  UNIQUE INDEX `idusuario_UNIQUE` (`idusuario` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
