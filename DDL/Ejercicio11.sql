DROP database IF EXISTS ejercicio11;

CREATE DATABASE IF NOT EXISTS ejercicio11;

USE ejercicio11;

CREATE TABLE IF NOT EXISTS accidentesgeograficos(
nombreaccidente VARCHAR(100) NOT NULL PRIMARY KEY,
vertical VARCHAR(100) NOT NULL,
horizontal VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS montana(
nombreaccidente VARCHAR(100) NOT NULL PRIMARY KEY,
altura INTEGER UNSIGNED NOT NULL,
FOREIGN KEY (nombreaccidente) REFERENCES accidentesgeograficos(nombreaccidente) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS lago(
nombreaccidente VARCHAR(100) NOT NULL PRIMARY KEY,
extension INTEGER UNSIGNED NOT NULL,
FOREIGN KEY (nombreaccidente) REFERENCES accidentesgeograficos(nombreaccidente) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS rio(
nombreaccidente VARCHAR(100) NOT NULL PRIMARY KEY,
longitud INTEGER UNSIGNED NOT NULL,
FOREIGN KEY (nombreaccidente) REFERENCES accidentesgeograficos(nombreaccidente) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS pais(
nombrepais VARCHAR(100) NOT NULL PRIMARY KEY,
extension INTEGER UNSIGNED NOT NULL,
poblacion VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS localidad(
nombrelocalidad VARCHAR(100) NOT NULL PRIMARY KEY,
nombrepais VARCHAR(100) NOT NULL,
FOREIGN KEY (nombrepais) REFERENCES pais(nombrepais) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS tener(
nombreaccidente VARCHAR(100) NOT NULL,
nombrepais VARCHAR(100) NOT NULL,
PRIMARY KEY (nombreaccidente,nombrepais),
FOREIGN KEY (nombreaccidente) REFERENCES accidentesgeograficos(nombreaccidente) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (nombrepais) REFERENCES pais(nombrepais) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS cruzar(
nombrelocalidad VARCHAR(100) NOT NULL,
nombreaccidente VARCHAR(100) NOT NULL,
PRIMARY KEY (nombrelocalidad,nombreaccidente),
FOREIGN KEY (nombreaccidente) REFERENCES rio(nombreaccidente) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (nombrelocalidad) REFERENCES localidad(nombrelocalidad) ON DELETE CASCADE ON UPDATE CASCADE
);
