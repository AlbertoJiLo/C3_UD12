CREATE DATABASE ejercicio9;
USE ejercicio9;

CREATE TABLE receta(
id_receta INT NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
dificultad TINYINT NOT NULL,
instrucciones VARCHAR(1000) NOT NULL,
foto MEDIUMBLOB);

CREATE TABLE ingrediente(
id_ingrediente INT NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
alergenos VARCHAR(50) NOT NULL);

CREATE TABLE componer(
id_receta INT NOT NULL,
id_ingrediente INT NOT NULL,
medidas VARCHAR(100),
PRIMARY KEY(id_receta,id_ingrediente),
FOREIGN KEY (id_receta) REFERENCES receta(id_receta) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_ingrediente) REFERENCES ingrediente(id_ingrediente) ON DELETE CASCADE ON UPDATE CASCADE);