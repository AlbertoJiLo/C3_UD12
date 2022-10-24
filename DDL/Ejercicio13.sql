drop database if exists ejercicio13;
create database ejercicio13;
use ejercicio13;

CREATE TABLE empleado (dni VARCHAR(10) PRIMARY KEY, 
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
numss VARCHAR(30) NOT NULL,
telfijo VARCHAR(10) NOT NULL,
telmovil VARCHAR(10) NOT NULL,
dnijefe VARCHAR(10) NULL REFERENCES empleado (dni) on delete cascade on update cascade
);

CREATE TABLE cocinero (dni VARCHAR(10) PRIMARY KEY REFERENCES empleado (dni) on delete cascade on update cascade, 
yearsservice TINYINT NOT NULL
);

CREATE TABLE pinche (dni VARCHAR(10) PRIMARY KEY REFERENCES empleado (dni) on delete cascade on update cascade, 
fechanacimiento DATE NOT NULL
);

CREATE TABLE plato (nombreplato VARCHAR(50) PRIMARY KEY , 
precio DOUBLE NOT NULL
);

CREATE TABLE entrante (nombreplato VARCHAR(50) PRIMARY KEY REFERENCES plato (nombreplato) on delete cascade on update cascade, 
identrante INT UNIQUE NOT NULL
);

CREATE TABLE primero (nombreplato VARCHAR(50) PRIMARY KEY REFERENCES plato (nombreplato) on delete cascade on update cascade, 
idprimero INT UNIQUE NOT NULL
);

CREATE TABLE segundo (nombreplato VARCHAR(50) PRIMARY KEY REFERENCES plato (nombreplato) on delete cascade on update cascade, 
idsegundo INT UNIQUE NOT NULL
);

CREATE TABLE postre (nombreplato VARCHAR(50) PRIMARY KEY REFERENCES plato (nombreplato) on delete cascade on update cascade, 
idpostre INT UNIQUE NOT NULL
);

CREATE TABLE cocinar (dni VARCHAR(10) REFERENCES empleado (dni) on delete cascade on update cascade,
nombreplato VARCHAR(50) REFERENCES plato (nombreplato) on delete cascade on update cascade,
conocerreceta BOOLEAN NOT NULL,
PRIMARY KEY (dni, nombreplato)
);

CREATE TABLE ingrediente (nombreingrediente VARCHAR(50) PRIMARY KEY
);

CREATE TABLE necesita (nombreplato VARCHAR(50) REFERENCES plato (nombreplato) on delete cascade on update cascade,
nombreingrediente VARCHAR(50) REFERENCES ingrediente (nombreingrediente) on delete cascade on update cascade, 
PRIMARY KEY (nombreplato, nombreingrediente)
);

CREATE TABLE estanteria (idletra VARCHAR(3),
tamaño INT,
descripcion VARCHAR(100),
PRIMARY KEY (idletra, tamaño)
);

CREATE TABLE tener (nombreingrediente VARCHAR(50) REFERENCES ingrediente (nombreingrediente) on delete cascade on update cascade, 
idletra VARCHAR(3) REFERENCES estanteria (idletra) on delete cascade on update cascade, 
tamaño INT REFERENCES estanteria (tamaño) on delete cascade on update cascade, 
cantidad INT NOT NULL DEFAULT 1,
PRIMARY KEY (nombreingrediente, idletra, tamaño)
);

CREATE TABLE contener (idletra VARCHAR(3) REFERENCES estanteria (idletra) on delete cascade on update cascade, 
tamaño INT REFERENCES estanteria (tamaño) on delete cascade on update cascade, 
nombrealmacen VARCHAR(30),
PRIMARY KEY (nombrealmacen, idletra, tamaño)
);