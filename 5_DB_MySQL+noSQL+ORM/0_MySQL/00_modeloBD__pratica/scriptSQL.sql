-- MySQL Script generated by MySQL Workbench
-- ter 17 ago 2021 22:24:18
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema www2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema www2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `www2` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `www2` ;

-- -----------------------------------------------------
-- Table `www2`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `www2`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `e_rua` VARCHAR(45) NOT NULL,
  `e_cidade` VARCHAR(45) NOT NULL,
  `e_estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcliente`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC),
  UNIQUE INDEX `login_UNIQUE` (`login` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `www2`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `www2`.`categoria` (
  `idcategoria` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategoria`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `www2`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `www2`.`produto` (
  `idproduto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `valor` DECIMAL(12,2) NOT NULL,
  `descricao` VARCHAR(100) NOT NULL,
  `quantidade` INT NOT NULL,
  `categoria_idcategoria` INT NOT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC),
  INDEX `fk_produto_categoria1_idx` (`categoria_idcategoria` ASC),
  CONSTRAINT `fk_produto_categoria1`
    FOREIGN KEY (`categoria_idcategoria`)
    REFERENCES `www2`.`categoria` (`idcategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `www2`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `www2`.`admin` (
  `idadmin` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idadmin`),
  UNIQUE INDEX `login_UNIQUE` (`login` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `www2`.`entregador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `www2`.`entregador` (
  `identregador` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `placa` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`identregador`),
  UNIQUE INDEX `login_UNIQUE` (`login` ASC),
  UNIQUE INDEX `placa_UNIQUE` (`placa` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `www2`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `www2`.`status` (
  `idstatus` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idstatus`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `www2`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `www2`.`pedido` (
  `idpedido` INT NOT NULL AUTO_INCREMENT,
  `cliente_idcliente` INT NOT NULL,
  `valor_total` DECIMAL(12,2) NOT NULL,
  `data_hora_pedido` DATETIME NOT NULL,
  `data_hora_entrega` DATETIME NULL,
  `admin_idadmin` INT NOT NULL,
  `entregador_identregador` INT NOT NULL,
  `e_rua` VARCHAR(45) NOT NULL,
  `e_cidade` VARCHAR(45) NOT NULL,
  `e_estado` VARCHAR(45) NOT NULL,
  `status_idstatus` INT NOT NULL,
  PRIMARY KEY (`idpedido`),
  INDEX `fk_pedido_cliente_idx` (`cliente_idcliente` ASC),
  INDEX `fk_pedido_admin1_idx` (`admin_idadmin` ASC),
  INDEX `fk_pedido_entregador1_idx` (`entregador_identregador` ASC),
  INDEX `fk_pedido_status1_idx` (`status_idstatus` ASC),
  CONSTRAINT `fk_pedido_cliente`
    FOREIGN KEY (`cliente_idcliente`)
    REFERENCES `www2`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_admin1`
    FOREIGN KEY (`admin_idadmin`)
    REFERENCES `www2`.`admin` (`idadmin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_entregador1`
    FOREIGN KEY (`entregador_identregador`)
    REFERENCES `www2`.`entregador` (`identregador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_status1`
    FOREIGN KEY (`status_idstatus`)
    REFERENCES `www2`.`status` (`idstatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `www2`.`pedido_has_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `www2`.`pedido_has_produto` (
  `pedido_idpedido` INT NOT NULL,
  `produto_idproduto` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `desconto` DECIMAL(12,2) NULL,
  INDEX `fk_pedido_has_produto_produto1_idx` (`produto_idproduto` ASC),
  INDEX `fk_pedido_has_produto_pedido1_idx` (`pedido_idpedido` ASC),
  PRIMARY KEY (`pedido_idpedido`, `produto_idproduto`),
  CONSTRAINT `fk_pedido_has_produto_pedido1`
    FOREIGN KEY (`pedido_idpedido`)
    REFERENCES `www2`.`pedido` (`idpedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_has_produto_produto1`
    FOREIGN KEY (`produto_idproduto`)
    REFERENCES `www2`.`produto` (`idproduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;