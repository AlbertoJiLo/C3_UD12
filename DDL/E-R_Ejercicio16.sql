drop database if exists ejercicio16;
create database ejercicio16;
use ejercicio16;

CREATE TABLE usuario (idusuario INT PRIMARY KEY AUTO_INCREMENT, 
nombre VARCHAR(30) NOT NULL,
fotoperfil TEXT NOT NULL,
correo VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE grupo (idgrupo INT PRIMARY KEY AUTO_INCREMENT, 
fechacreacion DATE NOT NULL
);

CREATE TABLE mensaje (idmensaje INT PRIMARY KEY AUTO_INCREMENT, 
contenido TEXT NOT NULL,
fechaenvio DATE NOT NULL,
fechaleido DATE NULL,
idemisor INT NOT NULL REFERENCES usuario (idusuario) on delete cascade on update cascade,
idgrupo INT NULL REFERENCES grupo (idgrupo) on delete cascade on update cascade,
idreceptor INT NULL REFERENCES usuario (idusuario) on delete cascade on update cascade
);

CREATE TABLE pertenecer (idusuario INT REFERENCES usuario (idusuario) on delete cascade on update cascade,
idgrupo INT REFERENCES grupo (idgrupo) on delete cascade on update cascade,
PRIMARY KEY (idusuario, idgrupo)
);

CREATE TABLE publicacion (idpublicacion INT PRIMARY KEY AUTO_INCREMENT,
texto TEXT NOT NULL,
fecha DATE NOT NULL,
imagen TEXT NULL,
idusuario INT REFERENCES usuario (idusuario) on delete cascade on update cascade
);

CREATE TABLE gustar (idpublicacion INT REFERENCES publicacion (idpublicacion) on delete cascade on update cascade,
idusuario INT REFERENCES usuario (idusuario) on delete cascade on update cascade,
PRIMARY KEY (idusuario, idpublicacion)
);

CREATE TABLE hashtag (hashtag VARCHAR(50) PRIMARY KEY);

CREATE TABLE tener (idpublicacion INT REFERENCES publicacion (idpublicacion) on delete cascade on update cascade,
hashtag VARCHAR(50) REFERENCES hashtag (hashtag) on delete cascade on update cascade,
PRIMARY KEY (idpublicacion, hashtag)
);

CREATE TABLE hilo (idhilo INT PRIMARY KEY AUTO_INCREMENT,
idpublicacion INT NOT NULL REFERENCES publicacion (idpublicacion) on delete cascade on update cascade
);