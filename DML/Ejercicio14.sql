
USE ejercicio14;

INSERT INTO usuario(email,identificador,contrasenya,nombre,apellidos,escelebridad,direccion,telefono) VALUES ('a@gmail.com',1,'contraseña','Pepe', 'Rodriguez', 0, 'Calle tarragona 4', 6149393);
INSERT INTO usuario(email,identificador,contrasenya,nombre,apellidos,escelebridad,direccion,telefono) VALUES ('b@gmail.com',2,'contraseña2','Carlos', 'Rodriguez', 0, 'Calle tarragona 6', 6149333);
INSERT INTO usuario(email,identificador,contrasenya,nombre,apellidos,escelebridad,direccion,telefono) VALUES ('c@gmail.com',3,'contraseña3','Victor', 'Rodriguez', 0, 'Calle tarragona 8', 6149323);

INSERT INTO bloquear(emailcontacto,emailusuario) VALUES ('a@gmail.com','b@gmail.com');
INSERT INTO bloquear(emailcontacto,emailusuario) VALUES ('a@gmail.com','c@gmail.com');

INSERT INTO agregar(emailcontacto,emailusuario,grupocontacto,comentariocontacto) VALUES ('b@gmail.com','c@gmail.com','Los solfamidas', 'Mi hermano favorito');

INSERT INTO comentario(texto,email) VALUES ('Hola buenos dias.','a@gmail.com');
INSERT INTO comentario(texto,email) VALUES ('Hola buenas taredes.','b@gmail.com');

INSERT INTO comentar(idcomentario,email,usuariosadmitidos) VALUES (1,'c@gmail.com',3);



