-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department  ( 
	id INT NOT NULL ,  
	name VARCHAR(20) NOT NULL ,  
	description TEXT NOT NULL, PRIMARY KEY  (id)
);

CREATE TABLE employee ( 
	id INT NOT NULL ,  
	first_name VARCHAR(20) NOT NULL ,  
	last_name VARCHAR(20) NOT NULL, 
	id_de INT NOT NULL , 
	PRIMARY KEY  (id), 
	FOREIGN KEY (id_de) REFERENCES employee_department (id)
);

INSERT INTO employee_department (id, name, description) VALUES ('1', 'Recursos Humanos', 'Gestiona Empleados'); 
INSERT INTO employee_department (id, name, description) VALUES ('2', 'Administracion', 'Contabilidad y Dinero.'); 
INSERT INTO employee_department (id, name, description) VALUES ('3', 'Gerencia', 'Gerenciar la empresa');
INSERT INTO employee_department (id, name, description) VALUES ('4', 'Ventas', 'Encargado vender a clientes');
INSERT INTO employee_department (id, name, description) VALUES ('5', 'Compras', 'Adquiere material necesario.');
INSERT INTO employee_department (id, name, description) VALUES ('6', 'Produccion', 'Fabrica el producto');

INSERT INTO employee (id, first_name, last_name, id_de) VALUES ('1', 'Jose', 'Perez', '2'); 
INSERT INTO employee (id, first_name, last_name, id_de) VALUES ('2', 'Pedro', 'Castro', '1'); 
INSERT INTO employee (id, first_name, last_name, id_de) VALUES ('3', 'Juan', 'Roberts', '4');
INSERT INTO employee (id, first_name, last_name, id_de) VALUES ('4', 'Maria', 'Lopez', '1');

CREATE TABLE employee_hobby ( 
	id INT NOT NULL ,  
	name VARCHAR(20) NOT NULL ,  
	description TEXT NOT NULL, 
	PRIMARY KEY  (id)
);

CREATE TABLE hobby ( 
	id_hob INT NOT NULL ,  
	id INT NOT NULL, 
	FOREIGN KEY (id_hob) REFERENCES employee_hobby (id), 
	FOREIGN KEY (id) REFERENCES employee (id)
);


INSERT INTO employee_hobby (id, name, description) VALUES ('1', 'Natacion', 'Accion de nadar.'); 
INSERT INTO employee_hobby (id, name, description) VALUES ('2', 'Yoga', 'Practica de yoga.'); 
INSERT INTO employee_hobby (id, name, description) VALUES ('3', 'Pintar', 'Accion de Pintar.');


INSERT INTO hobby (id, id_hob) VALUES ('1', '2'); 
INSERT INTO hobby (id, id_hob) VALUES ('1', '1'); 
INSERT INTO hobby (id, id_hob) VALUES ('2', '3'); 
INSERT INTO hobby (id, id_hob) VALUES ('2', '2'); 
INSERT INTO hobby (id, id_hob) VALUES ('3', '1'); 
INSERT INTO hobby (id, id_hob) VALUES ('3', '3'); 
INSERT INTO hobby (id, id_hob) VALUES ('4', '2'); 
INSERT INTO hobby (id, id_hob) VALUES ('4', '3');

ALTER TABLE employee ADD Boss_id INT;
ALTER TABLE employee ADD FOREIGN KEY (Boss_id) REFERENCES employee(id);

UPDATE employee 
SET Boss_id = '4' 
WHERE employee.id = '1';

UPDATE employee 
SET Boss_id = '4' 
WHERE employee.id = '3';

UPDATE employee 
SET Boss_id = '4' 
WHERE employee.id = '2';

-- ...
