USE ejercicio8; 

INSERT INTO aeropuerto (nombre,localidad,pais) VALUES ('Aeropuerto de Barcelona', 'Barcelona', 'España');
INSERT INTO aeropuerto (nombre,localidad,pais) VALUES ('Aeropuerto de Madrid', 'Madrid', 'España');
INSERT INTO aeropuerto (nombre,localidad,pais) VALUES ('Aeropuerto de Paris', 'Paris', 'Francia');

INSERT INTO avion (numplazas,idaeropuerto) VALUES (90, 1);
INSERT INTO avion (numplazas,idaeropuerto) VALUES (80, 1);
INSERT INTO avion (numplazas,idaeropuerto) VALUES (120, 2);
INSERT INTO avion (numplazas,idaeropuerto) VALUES (100, 3);

INSERT INTO vuelo (fechasalida,fechallegada,aeropuertosalida,aeropuertodestino,idavion) VALUES ('2022-08-30 10:00:00', '2022-08-30 12:30:00', 1, 2, 1);

INSERT INTO tarjetaembarque (idembarque) VALUES (1);
INSERT INTO tarjetaembarque (idembarque) VALUES (2);

INSERT INTO asiento (fila,columna,planta,idembarque) VALUES (3, 'AA', 'BB', 1);
INSERT INTO asiento (fila,columna,planta,idembarque) VALUES (7, 'AB', 'FF', 2);

INSERT INTO cliente (dni,nombre,direccion,telefono,tarjetacredito,idembarque) VALUES (11111111, 'Carlos', 'Calle Reus numero 3, Barcelona', 789387268, 348923742, 1);

INSERT INTO reserva (numeroplazas,fechallegada,idcliente,idembarque) VALUES (1, '2022-08-30 12:30:00', 1, 1);
