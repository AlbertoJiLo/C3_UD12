CREATE DATABASE ejercicio;
USE ejercicio3;

CREATE TABLE localidad(nombre_loc VARCHAR(50) NOT NULL PRIMARY KEY,
poblacion VARCHAR(50) NOT NULL,
codigo_postal INT NOT NULL);

CREATE TABLE comunidad_autonoma(nombre_com VARCHAR(50) NOT NULL PRIMARY KEY,
poblacion VARCHAR(50) NOT NULL,
superficie INT NOT NULL,
nombre_loc VARCHAR(50) NOT NULL,
FOREIGN KEY (nombre_loc) REFERENCES localidad(nombre_loc) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE provincia(codigo_postal INT NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
poblacion VARCHAR(50) NOT NULL,
superficie INT NOT NULL,
nombre_com VARCHAR(50) NOT NULL,
nombre_loc VARCHAR(50) NOT NULL,
FOREIGN KEY (nombre_loc) REFERENCES localidad(nombre_loc) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (nombre_com) REFERENCES comunidad_autonoma(nombre_com) ON DELETE CASCADE ON UPDATE CASCADE);

ALTER TABLE localidad ADD FOREIGN KEY (codigo_postal) REFERENCES provincia(codigo_postal) ON DELETE CASCADE ON UPDATE CASCADE;

