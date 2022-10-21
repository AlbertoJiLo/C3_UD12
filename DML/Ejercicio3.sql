USE ejercicio3;

SET foreign_key_checks = 0;

INSERT INTO provincia VALUES ('43001','Tarragona','800000','6300','Cataluña','Tarragona');
INSERT INTO provincia VALUES ('08001','Barcelona','4000000','7700','Cataluña','Sabadell');
INSERT INTO provincia VALUES ('11001','Cadiz','1200000','7000','Andalucia','Barbate');

INSERT INTO comunidad_autonoma VALUES ('Cataluña','7500000','32000','Sabadell');
INSERT INTO comunidad_autonoma VALUES ('Andalucia','8400000','88000','Barbate');

INSERT INTO localidad VALUES ('Tarragona','11000','43001');
INSERT INTO localidad VALUES ('Sabadell', '210000','08001');
INSERT INTO localidad VALUES ('Barbate','22000','11001');

SET foreign_key_checks = 1;
