USE ejercicio6;

INSERT INTO socio(dni,nombre,direccion,telefono) VALUES ('48666666A','Oscar','Calle de la piruleta 3ºB','977666666');
INSERT INTO socio(dni,nombre,direccion,telefono) VALUES ('48444444A','Carlos','Calle de la fresa 1º1ª','977444444');
INSERT INTO socio(dni,nombre,direccion,telefono) VALUES ('48333333A','Alberto','Calle del chupachup','977333333');

INSERT INTO prestamo(fecha_inicio,fecha_limite,fecha_devolucion,codigo_socio) VALUES ('2022-10-19','2022-10-26','2022-10-24','1');
INSERT INTO prestamo(fecha_inicio,fecha_limite,fecha_devolucion,codigo_socio) VALUES ('2022-10-18','2022-10-25','2022-10-28','2');
INSERT INTO prestamo(fecha_inicio,fecha_limite,fecha_devolucion,codigo_socio) VALUES ('2022-10-19','2022-10-26','2022-10-20','3');

INSERT INTO articulo(nombre,año,resumen,esta_deteriorado,comentario_deterioro,id_prestamo) VALUES ('El nombre del viento','2007','Aventura fantástica de la trilogía del matarreyes','0','Buen estado','1');
INSERT INTO articulo(nombre,año,resumen,esta_deteriorado,comentario_deterioro,id_prestamo) VALUES ('The resistance','2009','CD Rock del grupo Muse','1','Muy rallado','2');
INSERT INTO articulo(nombre,año,resumen,esta_deteriorado,comentario_deterioro,id_prestamo) VALUES ('Scott Pilgrim vs the World','2010','Pelicula de comedia','0','Buen estado','3');

INSERT INTO libro(codigo_articulo,numero_paginas) VALUES ('1','880');
INSERT INTO cd(codigo_articulo,numero_canciones) VALUES ('2','11');
INSERT INTO pelicula(codigo_articulo,duracion) VALUES ('3','112');

INSERT INTO autor(nombre,pais) VALUES ('Patrick Rothfuss','EEUU');
INSERT INTO autor(nombre,pais) VALUES ('Muse','Inglaterra');
INSERT INTO autor(nombre,pais) VALUES ('Edgar Wright','Inglaterra');
INSERT INTO autor(nombre,pais) VALUES ('Michael Cera','Canadá');

INSERT INTO crear VALUES ('1','1');
INSERT INTO crear VALUES ('2','2');
INSERT INTO crear VALUES ('3','3');
INSERT INTO crear VALUES ('3','4');