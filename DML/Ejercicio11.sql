
USE ejercicio11;

INSERT INTO accidentesgeograficos(nombreaccidente,vertical,horizontal) VALUES ('Teide','Vertical 1','Horizaontal 1');
INSERT INTO accidentesgeograficos(nombreaccidente,vertical,horizontal) VALUES ('Lago Ness','Vertical 2','Horizaontal 1');
INSERT INTO accidentesgeograficos(nombreaccidente,vertical,horizontal) VALUES ('Ebro','Vertical 1','Horizaontal 1');
INSERT INTO montana(nombreaccidente,altura) VALUES ('Teide',2500);
INSERT INTO lago(nombreaccidente,extension) VALUES ('Lago Ness',67);
INSERT INTO rio(nombreaccidente,longitud) VALUES ('Ebro',700);
INSERT INTO pais(nombrepais,extension,poblacion) VALUES ('España', 46000, 250000);
INSERT INTO pais(nombrepais,extension,poblacion) VALUES ('Escocia', 50000, 220000);
INSERT INTO localidad(nombrelocalidad,nombrepais) VALUES ('Lleida', 'España');
INSERT INTO localidad(nombrelocalidad,nombrepais) VALUES ('Tortosa', 'España');
INSERT INTO localidad(nombrelocalidad,nombrepais) VALUES ('Ness', 'Escocia');
INSERT INTO tener(nombreaccidente,nombrepais) VALUES ('Teide', 'España');
INSERT INTO tener(nombreaccidente,nombrepais) VALUES ('Lago Ness', 'Escocia');
INSERT INTO tener(nombreaccidente,nombrepais) VALUES ('Ebro', 'España');
INSERT INTO cruzar(nombrelocalidad,nombreaccidente) VALUES ('Tortosa', 'Ebro');


