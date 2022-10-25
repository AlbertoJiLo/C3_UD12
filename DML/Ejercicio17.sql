USE ejercicio17;

INSERT INTO ciclo(nombre) VALUES ('Iniciación programacion');
INSERT INTO ciclo(nombre) VALUES ('Medio programacion');
INSERT INTO ciclo(nombre) VALUES ('Superior programacion');
INSERT INTO iniciacion(codigointerno,idiniciacion) VALUES (1,1);
INSERT INTO medio(codigointerno,idmedio) VALUES (2,2);
INSERT INTO superior(codigointerno,idsuperior) VALUES (2,2);

INSERT INTO horario(idhorario,hora,dia) VALUES (1,10,15);
INSERT INTO horario(idhorario,hora,dia) VALUES (2,12,15);
INSERT INTO horario(idhorario,hora,dia) VALUES (3,13,15);

INSERT INTO profesor(dni,nombre,direccion,telefono,email,segsocial) VALUES ('11111111A', 'Pedro', 'Calle Reus 23', '974456372', 'a@gmail.com', '1234567890G');

INSERT INTO aula(nombre,numeroaula,metros) VALUES ('Aula 1', 1, 25);
INSERT INTO aula(nombre,numeroaula,metros) VALUES ('Aula 2', 2, 50);
INSERT INTO aula(nombre,numeroaula,metros) VALUES ('Aula 3', 3, 75);

INSERT INTO asignatura(nombre,codigoeuropeo,codigoaula) VALUES ('Matematicas 1', 123456, 1);
INSERT INTO asignatura(nombre,codigoeuropeo,codigoaula) VALUES ('Matematicas 2', 123457, 2);

INSERT INTO requerir(codigointernoasigrequerida,codigointernoasigobjetivo) VALUES (1, 2);

INSERT INTO curso(codigocurso,nombre,cursocodigointernociclo) VALUES (1, 'Primer Año', 1);

INSERT INTO consistir(codigointernoasig,codigocurso) VALUES (1, 1);

INSERT INTO participar(codigointernoprof,codigocurso,antiguedad,estutor) VALUES (1,1,5,1);

INSERT INTO ocuparse(codigoaula,idhorario,estaocupada) VALUES (1,1,1);

INSERT INTO impartir(codigointernoasig,codigointernoprof,antiguedad, inicioprofesor, finalprofesor) VALUES (1,1,5,'2021-09-13 00:00:00','2022-06-15 15:00:00');
