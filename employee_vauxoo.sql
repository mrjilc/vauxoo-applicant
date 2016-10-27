-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department  ( id_de INT AUTO_INCREMENT NOT NULL ,  name VARCHAR(20) NOT NULL ,  description TEXT NOT NULL, PRIMARY KEY  (id_de));
CREATE TABLE employee ( id VARCHAR(10) NOT NULL ,  first_name VARCHAR(20) NOT NULL ,  last_name VARCHAR(20) NOT NULL, id_de INT NOT NULL , PRIMARY KEY  (id), FOREIGN KEY (id_de) REFERENCES employee_department (id_de));

INSERT INTO `employee_department` (`name`, `description`) VALUES ('Recursos Humanos', 'gestiona a las personas para garantizar el cumplimento de las distintas funciones en cada jornada y que los puestos est�n siempre cubiertos, aplica las f�rmulas de contrataci�n m�s adecuadas en cada caso, remunera a los trabajadores y los mantiene motivados.'), ('Administracion', 'contabiliza las facturas emitidas y recibidas, cobra a los clientes, paga a los proveedores y plantilla, y liquida los impuestos en las fechas correspondientes.'), ('Gerencia', 'marca los objetivos estrat�gicos a alcanzar por la empresa, y funcionales a alcanzar por cada departamento, y supervisa y coordina su cumplimiento, asignando recursos y presupuestos para cada uno.'), ('Ventas', 'consigue vender los objetivos de ventas planteados para que la empresa consiga una rentabilidad, atendiendo y fidelizando a los clientes.'), ('Compras', 'adquiere buenas materias primas a buen precio siempre cuando es necesario, sin roturas de stock.'), ('Produccion', 'fabrica la producci�n m�s el stock objetivo que luego ser� comercializado por Ventas cumpliendo los objetivos de gastos.');

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `id_de`) VALUES ('123456789', 'Jose', 'Perez', '2'), ('123456780', 'Maria', 'Lopez', '2'), ('123456788', 'Pedro', 'Castro', '1'), ('123456787', 'Juan', 'Roberts', '4');


CREATE TABLE employee_hobby (
);

-- ...
