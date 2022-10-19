USE ejercicio18;

INSERT INTO cliente (dni,nombre,apellidos,telefono_fijo,movil) VALUES ('48256488C','Pepe','Gomez','977657896','676845763');
INSERT INTO cliente (dni,nombre,apellidos,telefono_fijo,movil) VALUES ('48015487V','Alberto','Jimenez','977546876','653668745');
INSERT INTO cliente (dni,nombre,apellidos,telefono_fijo,movil) VALUES ('47256835C','Oscar','Vilamitjana','977657426','635847555');
INSERT INTO cliente (dni,nombre,apellidos,telefono_fijo,movil) VALUES ('44157568C','Carlos','Lafuente','977856635','615845778');

INSERT INTO inmueble (metros,descripcion,direccion) VALUES ('90','Ático muy cuco','Rambla nova');
INSERT INTO inmueble (metros,descripcion,direccion) VALUES ('110','Piso amueblado con terraza','Calle de la piruleta 3º3ª');
INSERT INTO inmueble (metros,descripcion,direccion) VALUES ('108','Piso recién reformado','Calle rio besós 1º2ª');
INSERT INTO inmueble (metros,descripcion,direccion) VALUES ('1200','La mansión de tu vida','Residencial Miramar');
INSERT INTO inmueble (metros,descripcion,direccion) VALUES ('20','Garaje sencillo','Calle de la piruleta 5D');
INSERT INTO inmueble (metros,descripcion,direccion) VALUES ('50','Local preparado para restaurante','Calle de la piruleta 5F');


INSERT INTO alquiler (año,mes,valor,cod_personal_alquilador,cod_personal_gestor) VALUES ('2020','Abril','450','1','3');
INSERT INTO alquiler (año,mes,valor,cod_personal_alquilador,cod_personal_gestor) VALUES ('2012','Marzo','500','2','4');
INSERT INTO alquiler (año,mes,valor,cod_personal_alquilador,cod_personal_gestor) VALUES ('2022','Julio','600','3','2');

INSERT INTO alquilar VALUES ('1','2');
INSERT INTO alquilar VALUES ('2','1');
INSERT INTO alquilar VALUES ('3','3');

INSERT INTO compra (fecha,valor,cod_inmueble) VALUES ('2020-04-20','120000','1');
INSERT INTO compra (fecha,valor,cod_inmueble) VALUES ('2012-03-21','150000','2');
INSERT INTO compra (fecha,valor,cod_inmueble) VALUES ('2022-07-11','1220000','4');

INSERT INTO hacercompra VALUES ('1','1','48256488C');
INSERT INTO hacercompra VALUES ('3','2','48015487V');
INSERT INTO hacercompra VALUES ('2','3','47256835C');

INSERT INTO piso VALUES ('1','1');
INSERT INTO localinm VALUES ('6','Restaurante','1');
INSERT INTO garaje VALUES ('5','1','2','1');