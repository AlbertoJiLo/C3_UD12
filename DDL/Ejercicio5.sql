DROP database IF EXISTS ejercicio5;

CREATE DATABASE IF NOT EXISTS ejercicio5;

USE ejercicio5;

CREATE TABLE IF NOT EXISTS pieza(
numeropieza INTEGER UNSIGNED AUTO_INCREMENT NOT NULL,
letraspieza VARCHAR(2) NOT NULL,
descripcion VARCHAR(1000) NOT NULL,
precio SMALLINT UNSIGNED NOT NULL,
PRIMARY KEY (numeropieza,letraspieza),
KEY idx_letraspieza(letraspieza)
);

CREATE TABLE IF NOT EXISTS componer(
numeropiezacompuesta INTEGER UNSIGNED NOT NULL,
numeropieza INTEGER UNSIGNED NOT NULL,
letrapieza VARCHAR(2) NOT NULL,
letrapiezacompuesta VARCHAR(2) NOT NULL,
PRIMARY KEY (numeropieza,letrapieza,numeropiezacompuesta,letrapiezacompuesta),
FOREIGN KEY (numeropiezacompuesta) REFERENCES pieza(numeropieza) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (letrapiezacompuesta) REFERENCES pieza(letraspieza) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (numeropieza) REFERENCES pieza(numeropieza) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (letrapieza) REFERENCES pieza(letraspieza) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS almacen(
numeroalmacen INTEGER UNSIGNED NOT NULL PRIMARY KEY,
direccion INTEGER UNSIGNED NOT NULL,
descripcion VARCHAR(1000) NOT NULL
);

CREATE TABLE IF NOT EXISTS estanteria(
idletras INTEGER UNSIGNED NOT NULL PRIMARY KEY,
numeroalmacen INTEGER UNSIGNED NOT NULL,
FOREIGN KEY (numeroalmacen) REFERENCES almacen(numeroalmacen) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS estar(
numeropieza INTEGER UNSIGNED NOT NULL,
letraspieza VARCHAR(100) NOT NULL,
idletras INTEGER UNSIGNED NOT NULL,
PRIMARY KEY (numeropieza,letraspieza,idletras),
FOREIGN KEY (numeropieza) REFERENCES pieza(numeropieza) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (letraspieza) REFERENCES pieza(letraspieza) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (idletras) REFERENCES estanteria(idletras) ON DELETE CASCADE ON UPDATE CASCADE
);


