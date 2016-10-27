-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department  ( id_de INT AUTO_INCREMENT NOT NULL ,  name VARCHAR(20) NOT NULL ,  description TEXT NOT NULL, PRIMARY KEY  (id_de));
CREATE TABLE employee ( id VARCHAR(10) NOT NULL ,  first_name VARCHAR(20) NOT NULL ,  last_name VARCHAR(20) NOT NULL, id_de INT NOT NULL , PRIMARY KEY  (id), FOREIGN KEY (id_de) REFERENCES employee_department (id_de));

INSERT INTO `employee_department` (`name`, `description`) VALUES ('Recursos Humanos', 'gestiona a las personas para garantizar el cumplimento de las distintas funciones en cada jornada y que los puestos estén siempre cubiertos, aplica las fórmulas de contratación más adecuadas en cada caso, remunera a los trabajadores y los mantiene motivados.'), ('Administracion', 'contabiliza las facturas emitidas y recibidas, cobra a los clientes, paga a los proveedores y plantilla, y liquida los impuestos en las fechas correspondientes.'), ('Gerencia', 'marca los objetivos estratégicos a alcanzar por la empresa, y funcionales a alcanzar por cada departamento, y supervisa y coordina su cumplimiento, asignando recursos y presupuestos para cada uno.'), ('Ventas', 'consigue vender los objetivos de ventas planteados para que la empresa consiga una rentabilidad, atendiendo y fidelizando a los clientes.'), ('Compras', 'adquiere buenas materias primas a buen precio siempre cuando es necesario, sin roturas de stock.'), ('Produccion', 'fabrica la producción más el stock objetivo que luego será comercializado por Ventas cumpliendo los objetivos de gastos.');

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `id_de`) VALUES ('123456789', 'Jose', 'Perez', '2'), ('123456780', 'Maria', 'Lopez', '2'), ('123456788', 'Pedro', 'Castro', '1'), ('123456787', 'Juan', 'Roberts', '4');


CREATE TABLE employee_hobby ( id_hob INT AUTO_INCREMENT NOT NULL ,  name VARCHAR(20) NOT NULL ,  description TEXT NOT NULL, PRIMARY KEY  (id_hob));
CREATE TABLE hobby ( id_hob INT NOT NULL ,  id VARCHAR(10) NOT NULL, FOREIGN KEY (id_hob) REFERENCES employee_hobby (id_hob), FOREIGN KEY (id) REFERENCES employee (id));

INSERT INTO `employee_hobby` (`name`, `description`) VALUES ('Natacion', 'La natación es el movimiento y el desplazamiento a través del agua mediante el uso de las extremidades corporales y por lo general sin utilizar ningún instrumento o apoyo para avanzar'), ('Yoga', 'Practica mental y fisica, de respiracion, relajacion con posturas.'), ('Pintar', 'Expresion por medio de tecnicas artisticas.');

INSERT INTO `hobby` (`id`, `id_hob`) VALUES ('123456789', '2'), ('123456789', '1'), ('123456780', '3'), ('123456780', '2'), ('123456788', '1'), ('123456788', '3'), ('123456787', '2'), ('123456787', '3');

ALTER TABLE employee ADD Boss_id VARCHAR(10);
ALTER TABLE employee ADD FOREIGN KEY (Boss_id) REFERENCES employee(id);

UPDATE employee 
SET Boss_id = '123456780' 
WHERE employee.id = '123456789';

UPDATE employee 
SET Boss_id = '123456780' 
WHERE employee.id = '123456788';

UPDATE employee 
SET Boss_id = '123456789' 
WHERE employee.id = '123456787';

-- ...
