create database ejercicio4;
use ejercicio4;

CREATE TABLE pais (nombrepais VARCHAR(30) PRIMARY KEY, 
paisactualmete BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE bando (nombrebando VARCHAR(30) PRIMARY KEY, 
ganador BOOLEAN NOT NULL
);

CREATE TABLE pertenecer (nombrepais VARCHAR(30) REFERENCES pais (nombrepais) on delete cascade on update cascade,
nombrebando VARCHAR(30) REFERENCES bando (nombrebando) on delete cascade on update cascade,
fechaunion DATE NOT NULL,
fechaabandono DATE NOT NULL,
PRIMARY KEY(nombrepais,nombrebando)
);

CREATE TABLE periodoindependencia (idperiodo INT auto_increment, 
fechainicio DATE NOT NULL,
fechafinal DATE NOT NULL,
nombrepais VARCHAR(30) REFERENCES pais (nombrepais) on delete cascade on update cascade,
PRIMARY KEY (idperiodo, nombrepais)
);

CREATE TABLE guerra (nombreguerra VARCHAR(50) PRIMARY KEY, 
inicio YEAR NOT NULL,
fin YEAR NOT NULL
);

CREATE TABLE participar (nombrebando VARCHAR(30) REFERENCES bando (nombrebando) on delete cascade on update cascade, 
nombreguerra VARCHAR(50) REFERENCES guerra (nombreguerra) on delete cascade on update cascade,
vencedor boolean NOT NULL,
PRIMARY KEY(nombrebando, nombreguerra)
);