-- Insertar datos en la tabla Cliente
INSERT INTO Cliente (Nombre_Cliente, Apellido_Cliente, Teléfono_Cliente, Email, País, Huespe)
VALUES 
('Juan', 'Pérez', '123456789', 'juan@example.com', 'México', 1),
('María', 'González', '987654321', 'maria@example.com', 'España', 2),
('Luis', 'Martínez', '456789123', 'luis@example.com', 'Argentina', 1),
('Ana', 'Sánchez', '789123456', 'ana@example.com', 'Colombia', 2),
('Pedro', 'López', '321654987', 'pedro@example.com', 'Chile', 1);

-- Insertar datos en la tabla Reserva
INSERT INTO Reserva (ID_Cliente, Checkin, Checkout, Numero_Habitaciones)
VALUES 
(1, '2024-04-15', '2024-04-20', 2),
(2, '2024-05-01', '2024-05-05', 1),
(3, '2024-06-10', '2024-06-15', 3),
(4, '2024-07-20', '2024-07-25', 1),
(5, '2024-08-05', '2024-08-10', 2);

INSERT INTO Empleado (Nombre, Apellido, Cargo, Dirección, RRHH) VALUES  
('Juan', 'López', 'Recepcionista', 'Calle Principal 123', FALSE), 
('María', 'González', 'Gerente de RRHH', 'Avenida Central 456', TRUE), 
('Carlos', 'Martínez', 'Limpieza', 'Carrera 789', FALSE), 
('Laura', 'Gómez', 'Seguridad', 'Avenida Norte 101', FALSE), 
('Pedro', 'Sánchez', 'Mantenimiento', 'Rue de la Paix', FALSE);

-- Insertar datos en la tabla Habitación
INSERT INTO Habitación (Tipo, Precio, Disponible) 
VALUES 
('Individual', 50.00, TRUE),
('Doble', 80.00, TRUE),
('Suite', 120.00, TRUE);

-- Insertar datos en la tabla Tipo de Habitación
INSERT INTO Tipo_Habitación (Tipo, Descripción)
VALUES 
('Individual', 'Habitación con una sola cama individual'),
('Doble', 'Habitación con una cama matrimonial'),
('Doble', 'Habitación con dos camas individuales'),
('Suite', 'Habitación de lujo con sala de estar'),
('Familiar', 'Habitación amplia para familias');

-- Insertar datos en la tabla Paquete
INSERT INTO Paquete (Nombre, Descripción, Precio)
VALUES 
('Paquete Estándar', 'Incluye habitación y desayuno continental', 100.00),
('Paquete Luna de Miel', 'Habitación decorada, cena romántica y masaje', 200.00),
('Paquete Familiar', 'Habitación amplia con actividades para niños', 150.00),
('Paquete Spa', 'Habitación con acceso ilimitado al spa', 180.00),
('Paquete Aventura', 'Habitación con excursiones guiadas', 220.00);

-- Insertar datos en la tabla Extras
INSERT INTO Extras (Nombre, Precio)
VALUES 
('Desayuno Buffet', 15.00),
('Minibar', 10.00),
('Servicio de lavandería', 20.00),
('WiFi Premium', 5.00),
('Estacionamiento', 10.00);

-- Insertar datos en la tabla Método de Pago
INSERT INTO Metodo_Pago (Nombre)
VALUES 
('Tarjeta de crédito'),
('Tarjeta de débito'),
('Transferencia bancaria'),
('Efectivo'),
('PayPal');

-- Insertar datos en la tabla Facturación
INSERT INTO Facturación (ID_Habitación, ID_Paquete, ID_Extra, ID_Metodo_Pago, Fecha, Precio)
VALUES
(1, 2, 1, 1, '2024-04-01', 125.00),
(2, 3, 4, 1, '2024-04-05', 200.00),
(3, 2, 5, 3, '2024-04-10', 180.00),
(4, 1, 2, 1, '2024-04-15', 100.00),
(5, 4, 3, 5, '2024-04-20', 250.00);


INSERT INTO Dirección (Pais, Estado, Ciudad, Dirección) VALUES  
('Afganistán', 'Estado_Afganistán', 'Ciudad_Afganistán', 'Dirección_Afganistán'),  
('Albania', 'Estado_Albania', 'Ciudad_Albania', 'Dirección_Albania'),  
('Alemania', 'Estado_Alemania', 'Ciudad_Alemania', 'Dirección_Alemania'), 
('Andorra', 'Estado_Andorra', 'Ciudad_Andorra', 'Dirección_Andorra'), 
('Angola', 'Estado_Angola', 'Ciudad_Angola', 'Dirección_Angola'), 
('Antigua y Barbuda', 'Estado_Antigua y Barbuda', 'Ciudad_Antigua y Barbuda', 'Dirección_Antigua y Barbuda');
-- Continuar con el resto de los países...