INSERT INTO autor (nombre) VALUES ('Victor');
INSERT INTO autor (nombre) VALUES ('Paco');

INSERT INTO libros (isbn, titulo, editorial, añoescritura) VALUES ('38291732575821365850', 'El principe', 'Unknow', 1531);
INSERT INTO libros (isbn, titulo, editorial, añoescritura) VALUES ('39821735275914765805', 'La divina comedia', 'Unknow', 1307);

INSERT INTO escribir (idautor, isbn) VALUES (1, '38291732575821365850');
INSERT INTO escribir (idautor, isbn) VALUES (2, '39821735275914765805');

INSERT INTO volumen (deteriorado, isbn) VALUES (false, '38291732575821365850');
INSERT INTO volumen (deteriorado, isbn) VALUES (true, '38291732575821365850');

INSERT INTO socio (dni, nombre, telefono, direccion) VALUES ('49174301N', 'Zac', '681295013', 'Av Paisos Catalans');

INSERT INTO prestamo (fechareal, fechaprestamo, idvolumen, codsocio) VALUES ('2019-07-04', '2019-08-05', 1, 1);