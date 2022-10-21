USE ejercicio12;

INSERT INTO empresaext VALUES ('B89298729','T Systems','Tecnopark','977888888','10');
INSERT INTO empresaext VALUES ('C54875268','Mediamarkt','Les Gavarres','977666666','60');
INSERT INTO empresaext VALUES ('B12456983','Google','Sillicon Valley','650345687','100');

INSERT INTO proyecto (fecha_inicio,fecha_final,fecha_prevista_fin,cif) VALUES ('2022-10-08','2022-10-18','2022-10-19','C54875268');
INSERT INTO proyecto (fecha_inicio,fecha_prevista_fin,cif) VALUES ('2022-10-08','2022-10-19','C54875268');
INSERT INTO proyecto (fecha_inicio,fecha_final,fecha_prevista_fin,cif) VALUES ('2022-10-08','2022-10-21','2022-10-19','B89298729');

INSERT INTO empleado (dni,nombre,apellidos,codigo_interno,horas_proyecto) VALUES ('48014888G','Alberto','Jimenez','12','300');
INSERT INTO empleado (dni,nombre,apellidos,codigo_interno,horas_proyecto) VALUES ('41054846G','Carlos','Lafuente','16','300');
INSERT INTO empleado (dni,nombre,apellidos,codigo_interno,horas_proyecto) VALUES ('41054846G','Oscar','Vilamitjana','18','320');
INSERT INTO empleado (dni,nombre,apellidos,codigo_interno,horas_proyecto) VALUES ('41545666G','Pepe','Gomez','25','50');

INSERT INTO realizar VALUES ('1','2');
INSERT INTO realizar VALUES ('2','3');
INSERT INTO realizar VALUES ('3','1');

INSERT INTO programador VALUES ('1','40');
INSERT INTO analista VALUES ('2','41');
INSERT INTO jefe_proyecto VALUES ('3','42');
INSERT INTO administrador_diseño VALUES ('4','43');