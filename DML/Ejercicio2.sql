USE ejercicio2;

INSERT INTO empresa VALUES ('73628362F','T-Systems','97394829','Calle Reus 123');
INSERT INTO empresa VALUES ('12345678A','Competencia SL','34532342','Calle Falsa 123');
INSERT INTO empresa VALUES ('84769393B','Empresa3','87876547','Calle Tarragona 321');


INSERT INTO alumno VALUES ('45125335W','12345678A','Pedro','Direccion 1', 963829472, 18);

INSERT INTO profesor VALUES ('98765432B','Jose','Marin','Direccion 3', 949987234);
INSERT INTO profesor VALUES ('98765433C','Carlos','Vazquez','Direccion 4', 755635633);

INSERT INTO curso VALUES (1,'Estudio de base de datos', 30, 'BBDD', '2022-09-01', '2023-06-30', 1);
INSERT INTO curso VALUES (2,'Titulo 2', 45, 'SQL', '2022-09-01', '2023-06-30', 2);

INSERT INTO realizar VALUES ('45125335W',1,8);
INSERT INTO impartir VALUES (1,'98765432B');