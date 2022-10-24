DROP database IF EXISTS ejercicio17;

CREATE DATABASE IF NOT EXISTS ejercicio17;

USE ejercicio17;


CREATE TABLE IF NOT EXISTS ciclo(
codigointerno INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS superior(
codigointerno INTEGER NOT NULL PRIMARY KEY,
idsuperior INTEGER NOT NULL,
FOREIGN KEY (codigointerno) REFERENCES ciclo(codigointerno) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS medio(
codigointerno INTEGER NOT NULL PRIMARY KEY,
idmedio INTEGER NOT NULL,
FOREIGN KEY (codigointerno) REFERENCES ciclo(codigointerno) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS iniciacion(
codigointerno INTEGER NOT NULL PRIMARY KEY,
idiniciacion INTEGER NOT NULL,
FOREIGN KEY (codigointerno) REFERENCES ciclo(codigointerno) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS horario(
idhorario INTEGER UNSIGNED NOT NULL PRIMARY KEY,
hora TINYINT NOT NULL,
dia TINYINT NOT NULL
);

CREATE TABLE IF NOT EXISTS profesor(
codigointernoprof INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
dni VARCHAR(9) NOT NULL,
nombre VARCHAR(100) NOT NULL,
direccion VARCHAR(100) NOT NULL,
telefono VARCHAR(9) NOT NULL,
email VARCHAR(100) NOT NULL,
segsocial VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS aula(
codigoaula INTEGER UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
numeroaula INTEGER UNSIGNED NOT NULL,
metros INTEGER UNSIGNED NOT NULL
);

CREATE TABLE IF NOT EXISTS asignatura(
codigointernoasig INTEGER UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
codigoeuropeo INTEGER UNSIGNED NOT NULL,
codigoaula INTEGER UNSIGNED NOT NULL,
FOREIGN KEY (codigoaula) REFERENCES aula(codigoaula) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS requerir(
codigointernoasigrequerida INTEGER UNSIGNED NOT NULL,
codigointernoasigobjetivo INTEGER UNSIGNED NOT NULL,
PRIMARY KEY (codigointernoasigrequerida,codigointernoasigobjetivo),
FOREIGN KEY (codigointernoasigrequerida) REFERENCES asignatura(codigointernoasig) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (codigointernoasigobjetivo) REFERENCES asignatura(codigointernoasig) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS curso(
codigocurso INTEGER UNSIGNED NOT NULL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
cursocodigointernociclo INTEGER NOT NULL,
FOREIGN KEY (cursocodigointernociclo) REFERENCES ciclo(codigointerno) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS consistir(
codigointernoasig INTEGER UNSIGNED NOT NULL,
codigocurso INTEGER UNSIGNED NOT NULL,
PRIMARY KEY (codigointernoasig,codigocurso),
FOREIGN KEY (codigointernoasig) REFERENCES asignatura(codigointernoasig) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (codigocurso) REFERENCES curso(codigocurso) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS participar(
codigointernoprof INTEGER NOT NULL,
codigocurso INTEGER UNSIGNED NOT NULL,
antiguedad TINYINT UNSIGNED NOT NULL,
estutor BOOL NOT NULL,
PRIMARY KEY (codigointernoprof,codigocurso),
FOREIGN KEY (codigointernoprof) REFERENCES profesor(codigointernoprof) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (codigocurso) REFERENCES curso(codigocurso) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS ocuparse(
codigoaula INTEGER UNSIGNED NOT NULL,
idhorario INTEGER UNSIGNED NOT NULL,
estaocupada BOOL NOT NULL,
PRIMARY KEY (codigoaula,idhorario),
FOREIGN KEY (codigoaula) REFERENCES aula(codigoaula) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (idhorario) REFERENCES horario(idhorario) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE IF NOT EXISTS impartir(
codigointernoasig INTEGER UNSIGNED NOT NULL, 
codigointernoprof INTEGER NOT NULL,
antiguedad TINYINT UNSIGNED NOT NULL,
inicioprofesor DATETIME NOT NULL,
finalprofesor DATETIME NOT NULL,
PRIMARY KEY (codigointernoasig,codigointernoprof),
FOREIGN KEY (codigointernoasig) REFERENCES asignatura(codigointernoasig) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (codigointernoprof) REFERENCES profesor(codigointernoprof) ON DELETE CASCADE ON UPDATE CASCADE
);
























