create database ejercicio10;
use ejercicio10;

CREATE TABLE equipo (idequipo INT PRIMARY KEY AUTO_INCREMENT, 
nombre VARCHAR(30) NOT NULL,
division TINYINT NOT NULL
);

CREATE TABLE jugador (dni VARCHAR(10) PRIMARY KEY, 
nombre VARCHAR(30) NOT NULL,
posicion VARCHAR(20) NOT NULL,
dorsal TINYINT NOT NULL,
idequipo INT NULL references equipo (idequipo) on delete cascade on update cascade
);

CREATE TABLE liga (idliga INT PRIMARY KEY AUTO_INCREMENT, 
fecha YEAR NOT NULL
);

CREATE TABLE partido (idpartido INT PRIMARY KEY AUTO_INCREMENT, 
fecha DATE NOT NULL,
resultado VARCHAR(10) NOT NULL,
idliga INT REFERENCES liga (idliga) on delete cascade on update cascade
);

CREATE TABLE hacer (idequipo INT REFERENCES equipo (idequipo) on delete cascade on update cascade,
idpartido INT REFERENCES partido (idpartido) on delete cascade on update cascade 
);