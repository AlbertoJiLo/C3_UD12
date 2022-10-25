INSERT INTO equipo (nombre, division) VALUES ('Barça', 1);
INSERT INTO equipo (nombre, division) VALUES ('Villareal', 2);

INSERT INTO jugador (dni, nombre, posicion, dorsal, idequipo) VALUES ('19358629C', 'Manuel', 'Delantero', 3, 1);
INSERT INTO jugador (dni, nombre, posicion, dorsal, idequipo) VALUES ('35917596D', 'Mohamed', 'Defensa', 14, 2);

INSERT INTO liga (fecha) VALUES (2018);
INSERT INTO liga (fecha) VALUES (2019);

INSERT INTO partido (fecha, resultado, idliga) VALUES ('2018-09-01', '2-1', 1);
INSERT INTO partido (fecha, resultado, idliga) VALUES ('2019-03-01', '3-0', 2);

INSERT INTO hacer (idequipo, idpartido) VALUES (1, 1);
INSERT INTO hacer (idequipo, idpartido) VALUES (2, 1);