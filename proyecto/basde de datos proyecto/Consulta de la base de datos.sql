-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema libreria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema libreria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `libreria` DEFAULT CHARACTER SET latin1 ;
USE `libreria` ;

-- -----------------------------------------------------
-- Table `libreria`.`Libreria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`Libreria` (
  `idLibreria` INT NOT NULL,
  `Sucursal` VARCHAR(45) NOT NULL,
  `Ubicacion` VARCHAR(45) NOT NULL,
  `Telefono` VARCHAR(45) NOT NULL,
  `Correo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idLibreria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `libreria`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`clientes` (
  `ClienteID` INT(11) NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  `Apellido` VARCHAR(100) NOT NULL,
  `Direccion` VARCHAR(200) NOT NULL,
  `Telefono` VARCHAR(20) NOT NULL,
  `CorreoElectronico` VARCHAR(100) NOT NULL,
  `HistorialCompras` TEXT NOT NULL,
  `Libreria_idLibreria` INT NOT NULL,
  PRIMARY KEY (`ClienteID`),
  INDEX `fk_clientes_Libreria1_idx` (`Libreria_idLibreria` ASC) VISIBLE,
  CONSTRAINT `fk_clientes_Libreria1`
    FOREIGN KEY (`Libreria_idLibreria`)
    REFERENCES `libreria`.`Libreria` (`idLibreria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `libreria`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`empleados` (
  `EmpleadoID` INT(11) NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  `Rol` VARCHAR(50) NOT NULL,
  `Horario` VARCHAR(100) NOT NULL,
  `Libreria_idLibreria` INT NOT NULL,
  PRIMARY KEY (`EmpleadoID`),
  INDEX `fk_empleados_Libreria1_idx` (`Libreria_idLibreria` ASC) VISIBLE,
  CONSTRAINT `fk_empleados_Libreria1`
    FOREIGN KEY (`Libreria_idLibreria`)
    REFERENCES `libreria`.`Libreria` (`idLibreria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `libreria`.`eventos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`eventos` (
  `EventoID` INT(11) NOT NULL,
  `FechaEvento` DATE NOT NULL,
  `Tema` VARCHAR(200) NOT NULL,
  `Participantes` TEXT NOT NULL,
  PRIMARY KEY (`EventoID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `libreria`.`libros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`libros` (
  `LibroID` INT(11) NOT NULL,
  `Titulo` VARCHAR(200) NOT NULL,
  `Autor` VARCHAR(100) NOT NULL,
  `Genero` VARCHAR(50) NOT NULL,
  `ISBN` VARCHAR(20) NOT NULL,
  `Precio` DECIMAL(10,2) NOT NULL,
  `Disponibilidad` TINYINT(1) NOT NULL,
  PRIMARY KEY (`LibroID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `libreria`.`inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`inventario` (
  `InventarioID` INT(11) NOT NULL,
  `LibroID` INT(11) NOT NULL,
  `Cantidad` INT(11) NOT NULL,
  `Ubicacion` VARCHAR(100) NOT NULL,
  `Estado` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`InventarioID`),
  INDEX `LibroID` (`LibroID` ASC) VISIBLE,
  CONSTRAINT `inventario_ibfk_1`
    FOREIGN KEY (`LibroID`)
    REFERENCES `libreria`.`libros` (`LibroID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `libreria`.`ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`ventas` (
  `VentaID` INT(11) NOT NULL,
  `FechaVenta` DATE NOT NULL,
  `ClienteID` INT(11) NOT NULL,
  `LibroID` INT(11) NOT NULL,
  `MontoTotal` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`VentaID`),
  INDEX `ClienteID` (`ClienteID` ASC) VISIBLE,
  INDEX `LibroID` (`LibroID` ASC) VISIBLE,
  CONSTRAINT `ventas_ibfk_1`
    FOREIGN KEY (`ClienteID`)
    REFERENCES `libreria`.`clientes` (`ClienteID`),
  CONSTRAINT `ventas_ibfk_2`
    FOREIGN KEY (`LibroID`)
    REFERENCES `libreria`.`libros` (`LibroID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `libreria`.`eventos_has_clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`eventos_has_clientes` (
  `eventos_EventoID` INT(11) NOT NULL,
  `clientes_ClienteID` INT(11) NOT NULL,
  PRIMARY KEY (`eventos_EventoID`, `clientes_ClienteID`),
  INDEX `fk_eventos_has_clientes_clientes1_idx` (`clientes_ClienteID` ASC) VISIBLE,
  INDEX `fk_eventos_has_clientes_eventos1_idx` (`eventos_EventoID` ASC) VISIBLE,
  CONSTRAINT `fk_eventos_has_clientes_eventos1`
    FOREIGN KEY (`eventos_EventoID`)
    REFERENCES `libreria`.`eventos` (`EventoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_eventos_has_clientes_clientes1`
    FOREIGN KEY (`clientes_ClienteID`)
    REFERENCES `libreria`.`clientes` (`ClienteID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `libreria`.`empleados_has_eventos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`empleados_has_eventos` (
  `empleados_EmpleadoID` INT(11) NOT NULL,
  `eventos_EventoID` INT(11) NOT NULL,
  PRIMARY KEY (`empleados_EmpleadoID`, `eventos_EventoID`),
  INDEX `fk_empleados_has_eventos_eventos1_idx` (`eventos_EventoID` ASC) VISIBLE,
  INDEX `fk_empleados_has_eventos_empleados1_idx` (`empleados_EmpleadoID` ASC) VISIBLE,
  CONSTRAINT `fk_empleados_has_eventos_empleados1`
    FOREIGN KEY (`empleados_EmpleadoID`)
    REFERENCES `libreria`.`empleados` (`EmpleadoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleados_has_eventos_eventos1`
    FOREIGN KEY (`eventos_EventoID`)
    REFERENCES `libreria`.`eventos` (`EventoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
