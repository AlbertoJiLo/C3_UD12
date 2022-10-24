create database ejercicio1;
use ejercicio1;

CREATE TABLE autor (idautor INT PRIMARY KEY AUTO_INCREMENT, 
nombre CHAR(30) NOT NULL
);

CREATE TABLE libros (isbn CHAR(20) PRIMARY KEY, 
titulo VARCHAR(50) NOT NULL,
editorial VARCHAR(50) NOT NULL,
añoescritura year NOT NULL
);

CREATE TABLE escribir (idautor INT REFERENCES autor (idautor) on delete cascade on update cascade,
isbn CHAR(20) REFERENCES libros (isbn) on delete cascade on update cascade
);

CREATE TABLE volumen (idvolumen INT PRIMARY KEY auto_increment, 
deteriorado boolean NOT NULL,
isbn CHAR(20) REFERENCES libros (isbn) on delete cascade on update cascade
);

CREATE TABLE socio (codsocio INT PRIMARY KEY auto_increment, 
dni VARCHAR(10) NOT NULL,
nombre VARCHAR(20) NOT NULL,
telefono VARCHAR(10) NOT NULL,
direccion VARCHAR(50) NOT NULL
);

CREATE TABLE prestamo (idprestamo INT PRIMARY KEY auto_increment, 
fechareal date NOT NULL,
fechaprestamo date NOT NULL,
idvolumen INT not null REFERENCES volumen (idvolumen) on delete cascade on update cascade,
codsocio INT NOT NULL REFERENCES socio (codsocio) on delete cascade on update cascade
);