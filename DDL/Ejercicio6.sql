CREATE DATABASE ejercicio6;
USE ejercicio6;

CREATE TABLE socio(
codigo_socio INT NOT NULL PRIMARY KEY,
dni VARCHAR(9) NOT NULL,
nombre VARCHAR(30) NOT NULL,
direccion VARCHAR(100) NOT NULL,
telefono TINYINT NOT NULL);

CREATE TABLE prestamo(
id_prestamo INT NOT NULL PRIMARY KEY,
fecha_inicio DATE NOT NULL,
fecha_limite DATE NOT NULL,
fecha_devolucion DATE NOT NULL,
codigo_socio INT NOT NULL,
FOREIGN KEY (codigo_socio) REFERENCES socio(codigo_socio) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE articulo(
codigo_articulo INT NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
año SMALLINT NOT NULL,
resumen VARCHAR(500) NOT NULL,
esta_deteriorado BOOL NOT NULL,
comentario_deterioro VARCHAR(500) NOT NULL,
id_prestamo INT NOT NULL,
FOREIGN KEY (id_prestamo) REFERENCES prestamo(id_prestamo) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE libro(
codigo_articulo INT NOT NULL PRIMARY KEY,
numero_paginas INT NOT NULL,
FOREIGN KEY (codigo_articulo) REFERENCES articulo(codigo_articulo) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE cd(
codigo_articulo INT NOT NULL PRIMARY KEY,
numero_canciones INT NOT NULL,
FOREIGN KEY (codigo_articulo) REFERENCES articulo(codigo_articulo) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE pelicula(
codigo_articulo INT NOT NULL PRIMARY KEY,
duracion INT NOT NULL,
FOREIGN KEY (codigo_articulo) REFERENCES articulo(codigo_articulo) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE autor(
id_autor INT NOT NULL PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
pais VARCHAR(30) NOT NULL);

CREATE TABLE crear(
codigo_articulo INT NOT NULL,
id_autor INT,
PRIMARY KEY (codigo_articulo,id_autor),
FOREIGN KEY (codigo_articulo) REFERENCES articulo(codigo_articulo) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_autor) REFERENCES autor(id_autor) ON DELETE CASCADE ON UPDATE CASCADE);

