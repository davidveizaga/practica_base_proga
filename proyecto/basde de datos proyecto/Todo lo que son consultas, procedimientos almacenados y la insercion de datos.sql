-- Datos de inserción para la tabla Libreria
INSERT INTO `libreria`.`Libreria` (idLibreria, Sucursal, Ubicacion, Telefono, Correo) VALUES
(1, 'Central', 'Av. Principal 123', '555-1234', 'central@libreria.com'),
(2, 'Norte', 'Calle Norte 456', '555-5678', 'norte@libreria.com'),
(3, 'Sur', 'Boulevard Sur 789', '555-9012', 'sur@libreria.com'),
(4, 'Este', 'Avenida Este 321', '555-3456', 'este@libreria.com'),
(5, 'Oeste', 'Calle Oeste 654', '555-7890', 'oeste@libreria.com'),
(6, 'Centro', 'Calle Centro 321', '555-2345', 'centro@libreria.com'),
(7, 'Rural', 'Camino Rural 98', '555-8765', 'rural@libreria.com'),
(8, 'Urbana', 'Avenida Urbana 456', '555-4321', 'urbana@libreria.com'),
(9, 'Metropolitana', 'Paseo Metropolitano 789', '555-0987', 'metropolitana@libreria.com'),
(10, 'Industrial', 'Zona Industrial 654', '555-5670', 'industrial@libreria.com');

-- Datos de inserción para la tabla clientes
INSERT INTO `libreria`.`clientes` (ClienteID, Nombre, Apellido, Direccion, Telefono, CorreoElectronico, HistorialCompras, Libreria_idLibreria) VALUES
(1, 'Juan', 'Perez', 'Calle Falsa 123', '555-1111', 'juan.perez@example.com', 'Historial 1', 1),
(2, 'Maria', 'Lopez', 'Avenida Siempre Viva 742', '555-2222', 'maria.lopez@example.com', 'Historial 2', 2),
(3, 'Carlos', 'Gomez', 'Boulevard de los Sueños Rotos 456', '555-3333', 'carlos.gomez@example.com', 'Historial 3', 3),
(4, 'Ana', 'Martinez', 'Calle de la Amargura 789', '555-4444', 'ana.martinez@example.com', 'Historial 4', 4),
(5, 'Luis', 'Garcia', 'Avenida del Sol 321', '555-5555', 'luis.garcia@example.com', 'Historial 5', 5),
(6, 'Elena', 'Torres', 'Calle del Mar 987', '555-6666', 'elena.torres@example.com', 'Historial 6', 6),
(7, 'Miguel', 'Hernandez', 'Camino Verde 654', '555-7777', 'miguel.hernandez@example.com', 'Historial 7', 7),
(8, 'Sofia', 'Romero', 'Avenida Azul 321', '555-8888', 'sofia.romero@example.com', 'Historial 8', 8),
(9, 'Diego', 'Vega', 'Calle Roja 123', '555-9999', 'diego.vega@example.com', 'Historial 9', 9),
(10, 'Laura', 'Fernandez', 'Avenida Blanca 456', '555-1010', 'laura.fernandez@example.com', 'Historial 10', 10);

-- Datos de inserción para la tabla empleados
INSERT INTO `libreria`.`empleados` (EmpleadoID, Nombre, Rol, Horario, Libreria_idLibreria) VALUES
(1, 'Pedro', 'Vendedor', '09:00-17:00', 1),
(2, 'Sofia', 'Cajera', '10:00-18:00', 2),
(3, 'Miguel', 'Gerente', '08:00-16:00', 3),
(4, 'Laura', 'Asistente', '11:00-19:00', 4),
(5, 'Diego', 'Vendedor', '12:00-20:00', 5),
(6, 'Lucia', 'Administrativo', '09:00-17:00', 6),
(7, 'Raul', 'Seguridad', '10:00-18:00', 7),
(8, 'Carmen', 'Limpieza', '08:00-16:00', 8),
(9, 'Jose', 'Supervisor', '11:00-19:00', 9),
(10, 'Andrea', 'Gerente', '12:00-20:00', 10);

-- Datos de inserción para la tabla eventos
INSERT INTO `libreria`.`eventos` (EventoID, FechaEvento, Tema, Participantes) VALUES
(1, '2024-07-01', 'Lanzamiento de Libro', 'Juan Perez, Maria Lopez'),
(2, '2024-07-15', 'Firma de Autógrafos', 'Carlos Gomez, Ana Martinez'),
(3, '2024-08-01', 'Lectura Pública', 'Luis Garcia, Pedro'),
(4, '2024-08-15', 'Taller de Escritura', 'Sofia, Miguel'),
(5, '2024-09-01', 'Feria del Libro', 'Laura, Diego'),
(6, '2024-09-15', 'Conferencia de Autor', 'Elena Torres, Miguel Hernandez'),
(7, '2024-10-01', 'Mesa Redonda', 'Sofia Romero, Diego Vega'),
(8, '2024-10-15', 'Club de Lectura', 'Laura Fernandez, Pedro'),
(9, '2024-11-01', 'Presentación de Novela', 'Juan Perez, Sofia'),
(10, '2024-11-15', 'Taller de Poesía', 'Ana Martinez, Luis Garcia');

-- Datos de inserción para la tabla libros
INSERT INTO `libreria`.`libros` (LibroID, Titulo, Autor, Genero, ISBN, Precio, Disponibilidad) VALUES
(1, 'Cien Años de Soledad', 'Gabriel Garcia Marquez', 'Novela', '978-3-16-148410-0', 19.99, 1),
(2, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Novela', '978-1-23-456789-7', 15.99, 1),
(3, 'El Principito', 'Antoine de Saint-Exupéry', 'Infantil', '978-0-12-345678-9', 10.99, 1),
(4, '1984', 'George Orwell', 'Ciencia Ficción', '978-4-56-789012-3', 14.99, 1),
(5, 'Orgullo y Prejuicio', 'Jane Austen', 'Romántica', '978-9-87-654321-0', 12.99, 1),
(6, 'El Hobbit', 'J.R.R. Tolkien', 'Fantasía', '978-1-84-149890-4', 18.99, 1),
(7, 'Matar a un Ruiseñor', 'Harper Lee', 'Novela', '978-0-06-112008-4', 14.49, 1),
(8, 'La Odisea', 'Homero', 'Épico', '978-0-14-026886-7', 13.99, 1),
(9, 'Crimen y Castigo', 'Fiódor Dostoyevski', 'Novela', '978-0-19-953636-8', 16.99, 1),
(10, 'El Gran Gatsby', 'F. Scott Fitzgerald', 'Novela', '978-0-7432-7356-5', 10.49, 1);

-- Datos de inserción para la tabla inventario
INSERT INTO `libreria`.`inventario` (InventarioID, LibroID, Cantidad, Ubicacion, Estado) VALUES
(1, 1, 10, 'Estantería A1', 'Nuevo'),
(2, 2, 5, 'Estantería B2', 'Usado'),
(3, 3, 20, 'Estantería C3', 'Nuevo'),
(4, 4, 15, 'Estantería D4', 'Usado'),
(5, 5, 8, 'Estantería E5', 'Nuevo'),
(6, 6, 12, 'Estantería F6', 'Nuevo'),
(7, 7, 7, 'Estantería G7', 'Usado'),
(8, 8, 9, 'Estantería H8', 'Nuevo'),
(9, 9, 11, 'Estantería I9', 'Usado'),
(10, 10, 14, 'Estantería J10', 'Nuevo');

-- Datos de inserción para la tabla ventas
INSERT INTO `libreria`.`ventas` (VentaID, FechaVenta, ClienteID, LibroID, MontoTotal) VALUES
(1, '2024-06-01', 1, 1, 19.99),
(2, '2024-06-02', 2, 2, 15.99),
(3, '2024-06-03', 3, 3, 10.99),
(4, '2024-06-04', 4, 4, 14.99),
(5, '2024-06-05', 5, 5, 12.99),
(6, '2024-06-06', 6, 6, 18.99),
(7, '2024-06-07', 7, 7, 14.49),
(8, '2024-06-08', 8, 8, 13.99),
(9, '2024-06-09', 9, 9, 16.99),
(10, '2024-06-10', 10, 10, 10.49);

-- Datos de inserción para la tabla eventos_has_clientes
INSERT INTO `libreria`.`eventos_has_clientes` (eventos_EventoID, clientes_ClienteID) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);

-- Datos de inserción para la tabla empleados_has_eventos
INSERT INTO `libreria`.`empleados_has_eventos` (empleados_EmpleadoID, eventos_EventoID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);




-- Procedimiento para crear un cliente
DELIMITER //
CREATE PROCEDURE CreateCliente(
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

-- Procedimiento para crear un empleado
DELIMITER //
CREATE PROCEDURE CreateEmpleado(
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

-- Procedimiento para crear un evento
DELIMITER //
CREATE PROCEDURE CreateEvento(
    IN p_FechaEvento DATE,
    IN p_Tema VARCHAR(200),
    IN p_Participantes TEXT
)
BEGIN
    INSERT INTO eventos (FechaEvento, Tema, Participantes)
    VALUES (p_FechaEvento, p_Tema, p_Participantes);
END//
DELIMITER ;

-- Procedimiento para crear un libro
DELIMITER //
CREATE PROCEDURE CreateLibro(
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

-- Procedimiento para crear un inventario
DELIMITER //
CREATE PROCEDURE CreateInventario(
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

-- Procedimiento para crear una venta
DELIMITER //
CREATE PROCEDURE CreateVenta(
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


-- AHORA DE EDITAR

-- Procedimiento para actualizar un cliente
DELIMITER //
CREATE PROCEDURE UpdateCliente(
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

-- Procedimiento para actualizar un empleado
DELIMITER //
CREATE PROCEDURE UpdateEmpleado(
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

-- Procedimiento para actualizar un evento
DELIMITER //
CREATE PROCEDURE UpdateEvento(
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

-- Procedimiento para actualizar un libro
DELIMITER //
CREATE PROCEDURE UpdateLibro(
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

-- Procedimiento para actualizar un inventario
DELIMITER //
CREATE PROCEDURE UpdateInventario(
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

-- Procedimiento para actualizar una venta
DELIMITER //
CREATE PROCEDURE UpdateVenta(
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


-- AHORA DE BORRAR

-- Procedimiento para borrar un cliente
DELIMITER //
CREATE PROCEDURE DeleteCliente(
    IN p_ClienteID INT
)
BEGIN
    DELETE FROM clientes WHERE ClienteID = p_ClienteID;
END//
DELIMITER ;

-- Procedimiento para borrar un empleado
DELIMITER //
CREATE PROCEDURE DeleteEmpleado(
    IN p_EmpleadoID INT
)
BEGIN
    DELETE FROM empleados WHERE EmpleadoID = p_EmpleadoID;
END//
DELIMITER ;

-- Procedimiento para borrar un evento
DELIMITER //
CREATE PROCEDURE DeleteEvento(
    IN p_EventoID INT
)
BEGIN
    DELETE FROM eventos WHERE EventoID = p_EventoID;
END//
DELIMITER ;

-- Procedimiento para borrar un libro
DELIMITER //
CREATE PROCEDURE DeleteLibro(
    IN p_LibroID INT
)
BEGIN
    DELETE FROM libros WHERE LibroID = p_LibroID;
END//
DELIMITER ;

-- Procedimiento para borrar un inventario
DELIMITER //
CREATE PROCEDURE DeleteInventario(
    IN p_InventarioID INT
)
BEGIN
    DELETE FROM inventario WHERE InventarioID = p_InventarioID;
END//
DELIMITER ;

-- Procedimiento para borrar una venta
DELIMITER //
CREATE PROCEDURE DeleteVenta(
    IN p_VentaID INT
)
BEGIN
    DELETE FROM ventas WHERE VentaID = p_VentaID;
END//
DELIMITER ;


-- AHORA DE LISTAR

-- Procedimiento para listar todos los clientes
DELIMITER //
CREATE PROCEDURE ListClientes()
BEGIN
    SELECT * FROM clientes;
END//
DELIMITER ;

-- Procedimiento para listar todos los empleados
DELIMITER //
CREATE PROCEDURE ListEmpleados()
BEGIN
    SELECT * FROM empleados;
END//
DELIMITER ;

-- Procedimiento para listar todos los eventos
DELIMITER //
CREATE PROCEDURE ListEventos()
BEGIN
    SELECT * FROM eventos;
END//
DELIMITER ;

-- Procedimiento para listar todos los libros
DELIMITER //
CREATE PROCEDURE ListLibros()
BEGIN
    SELECT * FROM libros;
END//
DELIMITER ;

-- Procedimiento para listar todos los inventarios
DELIMITER //
CREATE PROCEDURE ListInventarios()
BEGIN
    SELECT * FROM inventario;
END//
DELIMITER ;

-- Procedimiento para listar todas las ventas
DELIMITER //
CREATE PROCEDURE ListVentas()
BEGIN
    SELECT * FROM ventas;
END//
DELIMITER ;



 
-- EJECUCUCION

-- Llamada al procedimiento para actualizar el cliente con ClienteID = 1
CALL UpdateCliente(
    1,                     -- ClienteID
    'Juan',                -- Nuevo Nombre
    'Pérez',               -- Nuevo Apellido
    'Calle Nueva 123',     -- Nueva Dirección
    '555-1234',            -- Nuevo Teléfono
    'juan.perez@example.com', -- Nuevo Correo Electrónico
    'Compra de libros de ficción', -- Nuevo Historial de Compras
    1                      -- Libreria_idLibreria
);



-- CONSULTAS

-- todos los clientes por su ultima compra

SELECT c.ClienteID, c.Nombre, c.Apellido, c.CorreoElectronico, 
       (SELECT MAX(v.FechaVenta) 
        FROM ventas v 
        WHERE v.ClienteID = c.ClienteID) AS UltimaCompra
FROM clientes c;

-- Obtener la cantidad de libros vendidos de un género específico

SELECT l.Genero, 
       (SELECT COUNT(*) 
        FROM ventas v 
        WHERE v.LibroID = l.LibroID) AS TotalLibrosVendidos
FROM libros l
WHERE l.Genero = 'Ficción';


-- Listar los libros disponibles en inventario con su ubicación más frecuente

SELECT l.Titulo, l.Autor, l.Genero, 
       (SELECT i.Ubicacion 
        FROM inventario i 
        WHERE i.LibroID = l.LibroID 
        GROUP BY i.Ubicacion 
        ORDER BY COUNT(i.Ubicacion) DESC 
        LIMIT 1) AS UbicacionMasFrecuente
FROM libros l
WHERE l.Disponibilidad = 1;


-- Buscar eventos con más de 10 participantes

SELECT e.EventoID, e.FechaEvento, e.Tema, e.Participantes
FROM eventos e
WHERE (SELECT COUNT(*) 
       FROM eventos_has_clientes ehc 
       WHERE ehc.eventos_EventoID = e.EventoID) > 10;
       
-- Obtener todos los clientes
 
SELECT * FROM clientes;


