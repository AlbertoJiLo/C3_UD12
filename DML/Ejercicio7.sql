INSERT INTO empleado (dni, seguridadsocial, nombre, apellido, direccion, telefono, escoordinador) VALUES ('48239657R', '7162197538', 'Hector', 'Lopez', 'Av Paisos Catalans', '658159483', true);
INSERT INTO empleado (dni, seguridadsocial, nombre, apellido, direccion, telefono, codigojefe) VALUES ('48232357R', '7165912538', 'Luis', 'Lopez', 'Av Paisos Catalans', '658159483', 1);

INSERT INTO departamento (nombre) VALUES ('IT');
INSERT INTO departamento (nombre) VALUES ('RRHH');

INSERT INTO haber (codigotrabajador, codigodep) VALUES (1, 2);
INSERT INTO haber (codigotrabajador, codigodep) VALUES (2, 1);

INSERT INTO nomina (fecha, salario, codigotrabajador) VALUES ('2020-07-01', 9000, 1);
INSERT INTO nomina (fecha, salario, codigotrabajador) VALUES ('2020-08-01', 2000, 2);

INSERT INTO contrato (fechainicio, fechafin, codigotrabajador) VALUES ('2020-07-01', '2022-01-01', 1);
INSERT INTO contrato (fechainicio, fechafin, codigotrabajador) VALUES ('2020-08-01', '2021-03-01', 2);