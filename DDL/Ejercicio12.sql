CREATE DATABASE ejercicio12;
USE ejercicio12;


CREATE TABLE empresaext(
cif VARCHAR(9) NOT NULL PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
direccion VARCHAR(50) NOT NULL,
telefono INT NOT NULL,
codigo_interno INT NOT NULL UNIQUE);

CREATE TABLE proyecto(
id_proyecto INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
fecha_inicio DATE NOT NULL,
fecha_final DATE,
fecha_prevista_fin DATE NOT NULL,
cif VARCHAR(9) NOT NULL,
FOREIGN KEY (cif) REFERENCES empresaext(cif) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE empleado(
codigo_trabajador INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
dni VARCHAR(9) NOT NULL,
nombre VARCHAR(30),
apellidos VARCHAR(30),
codigo_interno INT NOT NULL UNIQUE,
horas_proyecto INT NOT NULL);

CREATE TABLE realizar(
codigo_trabajador INT NOT NULL,
id_proyecto INT NOT NULL,
PRIMARY KEY (codigo_trabajador, id_proyecto),
FOREIGN KEY (codigo_trabajador) REFERENCES empleado(codigo_trabajador) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE programador(
codigo_trabajador INT NOT NULL PRIMARY KEY,
codigo_profesion INT NOT NULL,
FOREIGN KEY (codigo_trabajador) REFERENCES empleado(codigo_trabajador) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE analista(
codigo_trabajador INT NOT NULL PRIMARY KEY,
codigo_analista INT NOT NULL,
FOREIGN KEY (codigo_trabajador) REFERENCES empleado(codigo_trabajador) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE jefe_proyecto(
codigo_trabajador INT NOT NULL PRIMARY KEY,
codigo_jefe_proyecto INT NOT NULL,
FOREIGN KEY (codigo_trabajador) REFERENCES empleado(codigo_trabajador) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE administrador_diseño(
codigo_trabajador INT NOT NULL PRIMARY KEY,
codigo_administrador_diseño INT NOT NULL,
FOREIGN KEY (codigo_trabajador) REFERENCES empleado(codigo_trabajador) ON DELETE CASCADE ON UPDATE CASCADE);