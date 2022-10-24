create database ejercicio7;
use ejercicio7;

CREATE TABLE empleado (codigotrabajador INT PRIMARY KEY AUTO_INCREMENT, 
dni VARCHAR(10) UNIQUE NOT NULL,
seguridadsocial VARCHAR(20) UNIQUE NOT NULL,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
direccion VARCHAR(50) NOT NULL,
telefono VARCHAR(10) NOT NULL,
escoordinador BOOLEAN NOT NULL DEFAULT FALSE,
codigojefe INT NULL references empleado (codigotrabajador) on delete cascade on update cascade
);

CREATE TABLE departamento (codigodep INT PRIMARY KEY AUTO_INCREMENT, 
nombre VARCHAR(30) NOT NULL
);

CREATE TABLE haber (codigotrabajador INT REFERENCES empleado (codigotrabajador) on delete cascade on update cascade,
codigodep INT REFERENCES departamento (codigodep) on delete cascade on update cascade,
PRIMARY KEY(codigotrabajador, codigodep)
);

CREATE TABLE nomina (idnomina INT PRIMARY KEY AUTO_INCREMENT, 
fecha DATE NOT NULL,
salario INT NOT NULL,
codigotrabajador INT REFERENCES empleado (codigotrabajador) on delete cascade on update cascade
);

CREATE TABLE contrato (idcontrato INT PRIMARY KEY AUTO_INCREMENT, 
fechainicio DATE NOT NULL,
fechafinal DATE NOT NULL,
codigotrabajador INT REFERENCES empleado (codigotrabajador) on delete cascade on update cascade
);