INSERT INTO pais (nombrepais, paisactualmete) VALUES ('Alemania', true);
INSERT INTO pais (nombrepais) VALUES ('Francia');
INSERT INTO pais (nombrepais, paisactualmete) VALUES ('URSS', false);
INSERT INTO pais (nombrepais) VALUES ('Japon');
INSERT INTO pais (nombrepais, paisactualmete) VALUES ('Francia', true);

INSERT INTO bando (nombrebando, ganador) VALUES ('Los aliados', false);

INSERT INTO pertenecer (nombrepais, nombrebando, fechaunion, fechaabandono) VALUES ('Alemania', 'Los aliados', '1939-03-21', '1945-03-21');

INSERT INTO periodoindependencia (fechainicio, fechafinal, nombrepais) VALUES ('1909-03-21', '1958-03-21', 'URSS');

INSERT INTO guerra (nombreguerra, inicio, fin) VALUES ('Segunda guerra mundial', 1939, 1945);

INSERT INTO participar (nombrebando, nombreguerra, vencedor) VALUES ('Los aliados', 'Segunda guerra mundial', false);