INSERT INTO usuario (nombre, fotoperfil, correo) VALUES ('Carlos', 'icon1.png', 'hola@gmail.com');
INSERT INTO usuario (nombre, fotoperfil, correo) VALUES ('Alberto', 'icon5.png', 'adios@gmail.com');
INSERT INTO usuario (nombre, fotoperfil, correo) VALUES ('Oscar', 'icon1.png', 'holayadios@gmail.com');

INSERT INTO mensaje (contenido, fechaenvio, fechaleido, idemisor, idreceptor) VALUES ('Hola, esto es un INSERT INTO', '2022-10-16', '2022-10-16', 1, 3);

INSERT INTO publicacion (texto, fecha, idusuario) VALUES ('Hoy he creado una base de datos', '2022-10-23', 2);

INSERT INTO gustar (idpublicacion, idusuario) VALUES (1, 1);
INSERT INTO gustar (idpublicacion, idusuario) VALUES (1, 3);

INSERT INTO hashtag (hashtag) VALUES ('Databases');
INSERT INTO hashtag (hashtag) VALUES ('DB');

INSERT INTO tener (idpublicacion, hashtag) VALUES (1, 'Databases');
INSERT INTO tener (idpublicacion, hashtag) VALUES (1, 'DB');