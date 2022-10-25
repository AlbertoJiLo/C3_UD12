INSERT INTO empleado (dni, nombre, apellido, numss, telfijo, telmovil) VALUES ('38191476K', 'Karlos', 'Arguiñano', '1596482793', '977154236', '632451977');

INSERT INTO cocinero (dni, yearservice) VALUES ('38191476K', 2);

INSERT INTO plato (nombreplato, precio) VALUES ('Patatas brabas', 4);

INSERT INTO entrante (nombreplato, identrante) VALUES ('Patatas brabas', 1);

INSERT INTO cocinar(dni, nombreplato, conocerreceta) VALUES ('38191476K', 'Patatas brabas', true);

INSERT INTO ingrediente (nombreingrediente) VALUES ('Patata');
INSERT INTO ingrediente (nombreingrediente) VALUES ('Salsa braba');
INSERT INTO ingrediente (nombreingrediente) VALUES ('Sal');

INSERT INTO necesita (nombreplato, nombreingrediente) VALUES ('Patatas brabas', 'Patata');
INSERT INTO necesita (nombreplato, nombreingrediente) VALUES ('Patatas brabas', 'Salsa braba');
INSERT INTO necesita (nombreplato, nombreingrediente) VALUES ('Patatas brabas', 'Sal');