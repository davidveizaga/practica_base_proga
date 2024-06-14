-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para libreria
CREATE DATABASE IF NOT EXISTS `libreria` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `libreria`;

-- Volcando estructura para tabla libreria.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `ClienteID` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `CorreoElectronico` varchar(100) NOT NULL,
  `HistorialCompras` text NOT NULL,
  `Libreria_idLibreria` int NOT NULL,
  PRIMARY KEY (`ClienteID`),
  KEY `fk_clientes_Libreria1_idx` (`Libreria_idLibreria`),
  CONSTRAINT `fk_clientes_Libreria1` FOREIGN KEY (`Libreria_idLibreria`) REFERENCES `libreria` (`idLibreria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para procedimiento libreria.CreateCliente
DELIMITER //
CREATE PROCEDURE `CreateCliente`(
    IN p_Nombre VARCHAR(100),
    IN p_Apellido VARCHAR(100),
    IN p_Direccion VARCHAR(200),
    IN p_Telefono VARCHAR(20),
    IN p_CorreoElectronico VARCHAR(100),
    IN p_HistorialCompras TEXT,
    IN p_Libreria_idLibreria INT
)
BEGIN
    INSERT INTO clientes (Nombre, Apellido, Direccion, Telefono, CorreoElectronico, HistorialCompras, Libreria_idLibreria)
    VALUES (p_Nombre, p_Apellido, p_Direccion, p_Telefono, p_CorreoElectronico, p_HistorialCompras, p_Libreria_idLibreria);
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.CreateEmpleado
DELIMITER //
CREATE PROCEDURE `CreateEmpleado`(
    IN p_Nombre VARCHAR(100),
    IN p_Rol VARCHAR(50),
    IN p_Horario VARCHAR(100),
    IN p_Libreria_idLibreria INT
)
BEGIN
    INSERT INTO empleados (Nombre, Rol, Horario, Libreria_idLibreria)
    VALUES (p_Nombre, p_Rol, p_Horario, p_Libreria_idLibreria);
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.CreateEvento
DELIMITER //
CREATE PROCEDURE `CreateEvento`(
    IN p_FechaEvento DATE,
    IN p_Tema VARCHAR(200),
    IN p_Participantes TEXT
)
BEGIN
    INSERT INTO eventos (FechaEvento, Tema, Participantes)
    VALUES (p_FechaEvento, p_Tema, p_Participantes);
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.CreateInventario
DELIMITER //
CREATE PROCEDURE `CreateInventario`(
    IN p_LibroID INT,
    IN p_Cantidad INT,
    IN p_Ubicacion VARCHAR(100),
    IN p_Estado VARCHAR(20)
)
BEGIN
    INSERT INTO inventario (LibroID, Cantidad, Ubicacion, Estado)
    VALUES (p_LibroID, p_Cantidad, p_Ubicacion, p_Estado);
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.CreateLibro
DELIMITER //
CREATE PROCEDURE `CreateLibro`(
    IN p_Titulo VARCHAR(200),
    IN p_Autor VARCHAR(100),
    IN p_Genero VARCHAR(50),
    IN p_ISBN VARCHAR(20),
    IN p_Precio DECIMAL(10,2),
    IN p_Disponibilidad TINYINT(1)
)
BEGIN
    INSERT INTO libros (Titulo, Autor, Genero, ISBN, Precio, Disponibilidad)
    VALUES (p_Titulo, p_Autor, p_Genero, p_ISBN, p_Precio, p_Disponibilidad);
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.CreateVenta
DELIMITER //
CREATE PROCEDURE `CreateVenta`(
    IN p_FechaVenta DATE,
    IN p_ClienteID INT,
    IN p_LibroID INT,
    IN p_MontoTotal DECIMAL(10,2)
)
BEGIN
    INSERT INTO ventas (FechaVenta, ClienteID, LibroID, MontoTotal)
    VALUES (p_FechaVenta, p_ClienteID, p_LibroID, p_MontoTotal);
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.DeleteCliente
DELIMITER //
CREATE PROCEDURE `DeleteCliente`(
    IN p_ClienteID INT
)
BEGIN
    DELETE FROM clientes WHERE ClienteID = p_ClienteID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.DeleteEmpleado
DELIMITER //
CREATE PROCEDURE `DeleteEmpleado`(
    IN p_EmpleadoID INT
)
BEGIN
    DELETE FROM empleados WHERE EmpleadoID = p_EmpleadoID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.DeleteEvento
DELIMITER //
CREATE PROCEDURE `DeleteEvento`(
    IN p_EventoID INT
)
BEGIN
    DELETE FROM eventos WHERE EventoID = p_EventoID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.DeleteInventario
DELIMITER //
CREATE PROCEDURE `DeleteInventario`(
    IN p_InventarioID INT
)
BEGIN
    DELETE FROM inventario WHERE InventarioID = p_InventarioID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.DeleteLibro
DELIMITER //
CREATE PROCEDURE `DeleteLibro`(
    IN p_LibroID INT
)
BEGIN
    DELETE FROM libros WHERE LibroID = p_LibroID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.DeleteVenta
DELIMITER //
CREATE PROCEDURE `DeleteVenta`(
    IN p_VentaID INT
)
BEGIN
    DELETE FROM ventas WHERE VentaID = p_VentaID;
END//
DELIMITER ;

-- Volcando estructura para tabla libreria.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `EmpleadoID` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Rol` varchar(50) NOT NULL,
  `Horario` varchar(100) NOT NULL,
  `Libreria_idLibreria` int NOT NULL,
  PRIMARY KEY (`EmpleadoID`),
  KEY `fk_empleados_Libreria1_idx` (`Libreria_idLibreria`),
  CONSTRAINT `fk_empleados_Libreria1` FOREIGN KEY (`Libreria_idLibreria`) REFERENCES `libreria` (`idLibreria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla libreria.empleados_has_eventos
CREATE TABLE IF NOT EXISTS `empleados_has_eventos` (
  `empleados_EmpleadoID` int NOT NULL,
  `eventos_EventoID` int NOT NULL,
  PRIMARY KEY (`empleados_EmpleadoID`,`eventos_EventoID`),
  KEY `fk_empleados_has_eventos_eventos1_idx` (`eventos_EventoID`),
  KEY `fk_empleados_has_eventos_empleados1_idx` (`empleados_EmpleadoID`),
  CONSTRAINT `fk_empleados_has_eventos_empleados1` FOREIGN KEY (`empleados_EmpleadoID`) REFERENCES `empleados` (`EmpleadoID`),
  CONSTRAINT `fk_empleados_has_eventos_eventos1` FOREIGN KEY (`eventos_EventoID`) REFERENCES `eventos` (`EventoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla libreria.eventos
CREATE TABLE IF NOT EXISTS `eventos` (
  `EventoID` int NOT NULL,
  `FechaEvento` date NOT NULL,
  `Tema` varchar(200) NOT NULL,
  `Participantes` text NOT NULL,
  PRIMARY KEY (`EventoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla libreria.eventos_has_clientes
CREATE TABLE IF NOT EXISTS `eventos_has_clientes` (
  `eventos_EventoID` int NOT NULL,
  `clientes_ClienteID` int NOT NULL,
  PRIMARY KEY (`eventos_EventoID`,`clientes_ClienteID`),
  KEY `fk_eventos_has_clientes_clientes1_idx` (`clientes_ClienteID`),
  KEY `fk_eventos_has_clientes_eventos1_idx` (`eventos_EventoID`),
  CONSTRAINT `fk_eventos_has_clientes_clientes1` FOREIGN KEY (`clientes_ClienteID`) REFERENCES `clientes` (`ClienteID`),
  CONSTRAINT `fk_eventos_has_clientes_eventos1` FOREIGN KEY (`eventos_EventoID`) REFERENCES `eventos` (`EventoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla libreria.inventario
CREATE TABLE IF NOT EXISTS `inventario` (
  `InventarioID` int NOT NULL,
  `LibroID` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Ubicacion` varchar(100) NOT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`InventarioID`),
  KEY `LibroID` (`LibroID`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`LibroID`) REFERENCES `libros` (`LibroID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla libreria.libreria
CREATE TABLE IF NOT EXISTS `libreria` (
  `idLibreria` int NOT NULL,
  `Sucursal` varchar(45) NOT NULL,
  `Ubicacion` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  PRIMARY KEY (`idLibreria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla libreria.libros
CREATE TABLE IF NOT EXISTS `libros` (
  `LibroID` int NOT NULL,
  `Titulo` varchar(200) NOT NULL,
  `Autor` varchar(100) NOT NULL,
  `Genero` varchar(50) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Disponibilidad` tinyint(1) NOT NULL,
  PRIMARY KEY (`LibroID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para procedimiento libreria.ListClientes
DELIMITER //
CREATE PROCEDURE `ListClientes`()
BEGIN
    SELECT * FROM clientes;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.ListEmpleados
DELIMITER //
CREATE PROCEDURE `ListEmpleados`()
BEGIN
    SELECT * FROM empleados;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.ListEventos
DELIMITER //
CREATE PROCEDURE `ListEventos`()
BEGIN
    SELECT * FROM eventos;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.ListInventarios
DELIMITER //
CREATE PROCEDURE `ListInventarios`()
BEGIN
    SELECT * FROM inventario;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.ListLibros
DELIMITER //
CREATE PROCEDURE `ListLibros`()
BEGIN
    SELECT * FROM libros;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.ListVentas
DELIMITER //
CREATE PROCEDURE `ListVentas`()
BEGIN
    SELECT * FROM ventas;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.UpdateCliente
DELIMITER //
CREATE PROCEDURE `UpdateCliente`(
    IN p_ClienteID INT,
    IN p_Nombre VARCHAR(100),
    IN p_Apellido VARCHAR(100),
    IN p_Direccion VARCHAR(200),
    IN p_Telefono VARCHAR(20),
    IN p_CorreoElectronico VARCHAR(100),
    IN p_HistorialCompras TEXT,
    IN p_Libreria_idLibreria INT
)
BEGIN
    UPDATE clientes
    SET Nombre = p_Nombre, Apellido = p_Apellido, Direccion = p_Direccion, Telefono = p_Telefono, CorreoElectronico = p_CorreoElectronico, HistorialCompras = p_HistorialCompras, Libreria_idLibreria = p_Libreria_idLibreria
    WHERE ClienteID = p_ClienteID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.UpdateEmpleado
DELIMITER //
CREATE PROCEDURE `UpdateEmpleado`(
    IN p_EmpleadoID INT,
    IN p_Nombre VARCHAR(100),
    IN p_Rol VARCHAR(50),
    IN p_Horario VARCHAR(100),
    IN p_Libreria_idLibreria INT
)
BEGIN
    UPDATE empleados
    SET Nombre = p_Nombre, Rol = p_Rol, Horario = p_Horario, Libreria_idLibreria = p_Libreria_idLibreria
    WHERE EmpleadoID = p_EmpleadoID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.UpdateEvento
DELIMITER //
CREATE PROCEDURE `UpdateEvento`(
    IN p_EventoID INT,
    IN p_FechaEvento DATE,
    IN p_Tema VARCHAR(200),
    IN p_Participantes TEXT
)
BEGIN
    UPDATE eventos
    SET FechaEvento = p_FechaEvento, Tema = p_Tema, Participantes = p_Participantes
    WHERE EventoID = p_EventoID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.UpdateInventario
DELIMITER //
CREATE PROCEDURE `UpdateInventario`(
    IN p_InventarioID INT,
    IN p_LibroID INT,
    IN p_Cantidad INT,
    IN p_Ubicacion VARCHAR(100),
    IN p_Estado VARCHAR(20)
)
BEGIN
    UPDATE inventario
    SET LibroID = p_LibroID, Cantidad = p_Cantidad, Ubicacion = p_Ubicacion, Estado = p_Estado
    WHERE InventarioID = p_InventarioID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.UpdateLibro
DELIMITER //
CREATE PROCEDURE `UpdateLibro`(
    IN p_LibroID INT,
    IN p_Titulo VARCHAR(200),
    IN p_Autor VARCHAR(100),
    IN p_Genero VARCHAR(50),
    IN p_ISBN VARCHAR(20),
    IN p_Precio DECIMAL(10,2),
    IN p_Disponibilidad TINYINT(1)
)
BEGIN
    UPDATE libros
    SET Titulo = p_Titulo, Autor = p_Autor, Genero = p_Genero, ISBN = p_ISBN, Precio = p_Precio, Disponibilidad = p_Disponibilidad
    WHERE LibroID = p_LibroID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento libreria.UpdateVenta
DELIMITER //
CREATE PROCEDURE `UpdateVenta`(
    IN p_VentaID INT,
    IN p_FechaVenta DATE,
    IN p_ClienteID INT,
    IN p_LibroID INT,
    IN p_MontoTotal DECIMAL(10,2)
)
BEGIN
    UPDATE ventas
    SET FechaVenta = p_FechaVenta, ClienteID = p_ClienteID, LibroID = p_LibroID, MontoTotal = p_MontoTotal
    WHERE VentaID = p_VentaID;
END//
DELIMITER ;

-- Volcando estructura para tabla libreria.ventas
CREATE TABLE IF NOT EXISTS `ventas` (
  `VentaID` int NOT NULL,
  `FechaVenta` date NOT NULL,
  `ClienteID` int NOT NULL,
  `LibroID` int NOT NULL,
  `MontoTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`VentaID`),
  KEY `ClienteID` (`ClienteID`),
  KEY `LibroID` (`LibroID`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ClienteID`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`LibroID`) REFERENCES `libros` (`LibroID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
