CREATE DATABASE ejercicio18;
USE ejercicio18;

CREATE TABLE cliente(
cod_personal INT AUTO_INCREMENT NOT NULL,
dni VARCHAR(9) NOT NULL,
nombre VARCHAR(30) NOT NULL,
apellidos VARCHAR(30) NOT NULL,
telefono_fijo INT NOT NULL,
movil INT NOT NULL,
KEY idx_dni(dni),
PRIMARY KEY (cod_personal,dni));

CREATE TABLE alquiler(
cod_alquiler INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
año SMALLINT NOT NULL,
mes VARCHAR(20) NOT NULL,
valor FLOAT NOT NULL,
cod_personal_alquilador INT NOT NULL,
cod_personal_gestor INT NOT NULL,
FOREIGN KEY (cod_personal_alquilador) REFERENCES cliente(cod_personal) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (cod_personal_gestor) REFERENCES cliente(cod_personal) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE inmueble(
cod_inmueble INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
metros SMALLINT NOT NULL,
descripcion VARCHAR(500) NOT NULL,
direccion VARCHAR(100) NOT NULL);

CREATE TABLE alquilar(
cod_alquiler INT NOT NULL,
cod_inmueble INT NOT NULL,
PRIMARY KEY (cod_alquiler,cod_inmueble),
FOREIGN KEY (cod_alquiler) REFERENCES alquiler(cod_alquiler) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (cod_inmueble) REFERENCES inmueble(cod_inmueble) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE compra(
cod_compra INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
fecha DATE NOT NULL,
valor FLOAT NOT NULL,
cod_inmueble INT NOT NULL,
FOREIGN KEY (cod_inmueble) REFERENCES inmueble(cod_inmueble) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE hacercompra(
cod_compra INT NOT NULL,
cod_personal INT NOT NULL,
dni VARCHAR(9) NOT NULL,
PRIMARY KEY (cod_compra,cod_personal,dni),
FOREIGN KEY (cod_compra) REFERENCES compra(cod_compra) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (cod_personal) REFERENCES cliente(cod_personal) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (dni) REFERENCES cliente(dni) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE piso(
cod_inmueble INT NOT NULL PRIMARY KEY,
cod_piso INT NOT NULL,
KEY idx_cod_piso (cod_piso),
FOREIGN KEY (cod_inmueble) REFERENCES inmueble(cod_inmueble) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE localinm(
cod_inmueble INT NOT NULL PRIMARY KEY,
tipo_uso VARCHAR(100) NOT NULL,
tiene_servicio BOOL NOT NULL,
FOREIGN KEY (cod_inmueble) REFERENCES inmueble(cod_inmueble) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE garaje(
cod_inmueble INT NOT NULL PRIMARY KEY,
cod_garaje INT NOT NULL,
planta SMALLINT NOT NULL,
cod_piso INT,
FOREIGN KEY (cod_inmueble) REFERENCES inmueble(cod_inmueble) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (cod_piso) REFERENCES piso(cod_piso) ON DELETE CASCADE ON UPDATE CASCADE);