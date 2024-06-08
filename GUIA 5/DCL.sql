-- DCL base de datos del hotel
USE hotel;

-- CREACIÓN DE ROLES
CREATE ROLE IF NOT EXISTS Gerente,
CREATE ROLE IF NOT EXISTS Recepcionista,
CREATE ROLE IF NOT EXISTS Contador,
CREATE ROLE IF NOT EXISTS Vendedor,
CREATE ROLE IF NOT EXISTS RRHH,
CREATE ROLE IF NOT EXISTS Limpieza,
CREATE ROLE IF NOT EXISTS Mantenimiento,

-- ASIGNACIÓN DE PRIVILEGIOS A ROLES
-- Administrador del hotel
GRANT ALL ON hotel.* TO AdminHotel;

-- Recepcionista
GRANT SELECT, INSERT, UPDATE, DELETE ON hotel.reservas TO Recepcionista;
GRANT SELECT, INSERT, UPDATE, DELETE ON hotel.clientes TO Recepcionista;
GRANT SELECT, INSERT, UPDATE, DELETE ON hotel.habitaciones TO Recepcionista;
GRANT SELECT, INSERT, UPDATE ON hotel.check_ins TO Recepcionista;

-- Personal de limpieza
GRANT SELECT ON hotel.habitaciones TO Limpieza;

-- Personal de mantenimiento
GRANT SELECT, UPDATE ON hotel.habitaciones TO Mantenimiento;

-- CREACIÓN DE USUARIOS
CREATE USER IF NOT EXISTS 'admin_hotel_juanperez'@'localhost'
IDENTIFIED WITH sha256_password BY '1234'
PASSWORD EXPIRE INTERVAL 180 DAY;

CREATE USER IF NOT EXISTS 'rec_ceciliagomez'@'localhost'
IDENTIFIED WITH sha256_password BY '1234'
PASSWORD EXPIRE INTERVAL 180 DAY;


-- VINCULACIÓN DE USUARIOS A ROLES
GRANT Gerente TO 'nombre_usuario'@'localhost',
GRANT Recepcionista TO 'admin_hotel_juanperez'@'localhost',
GRANT Contador TO 'con_ceciliagomez'@'localhost',
GRANT Vendedor TO 'ven_pablomartinez'@'localhost',
GRANT RRHH TO 'rrhh_carlosrodriguez'@'localhost';

-- CONSULTA DE PERMISOS POR ROL Y USUARIOS
-- Roles
SHOW GRANTS FOR Gerente;
SHOW GRANTS FOR Recepcionista;
SHOW GRANTS FOR Contador;
SHOW GRANTS FOR Vendedor;
SHOW GRANTS FOR RRHH;

-- Usuarios
SHOW GRANTS FOR 'admin_hotel_juanperez'@'localhost';
SHOW GRANTS FOR 'rec_ceciliagomez'@'localhost';
SHOW GRANTS FOR 'lim_pablomartinez'@'localhost';
SHOW GRANTS FOR 'mant_carlosrodriguez'@'localhost';