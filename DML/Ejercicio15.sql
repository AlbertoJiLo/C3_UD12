USE ejercicio15;

INSERT INTO dia (plato_exitoso,temperatura) VALUES ('Pizza provenzal','21');
INSERT INTO dia (plato_exitoso,temperatura) VALUES ('Gyozas','28');
INSERT INTO dia (plato_exitoso,temperatura) VALUES ('Tortilla de patatas','27');
INSERT INTO dia (plato_exitoso,temperatura) VALUES ('Sushi','22');

INSERT INTO menu (fecha_ofrece) VALUES ('Lunes');
INSERT INTO menu (fecha_ofrece) VALUES ('Miercoles');
INSERT INTO menu (fecha_ofrece) VALUES ('Viernes');
INSERT INTO menu (fecha_ofrece) VALUES ('Sabado');

INSERT INTO tener VALUES ('1','2','100','80');
INSERT INTO tener VALUES ('2','4','120','140');
INSERT INTO tener VALUES ('3','3','80','88');
INSERT INTO tener VALUES ('4','1','75','60');

INSERT INTO plato VALUES ('Pizza provenzal','Pizza muy rica');
INSERT INTO plato VALUES ('Gyozas','Rellenas de carne');
INSERT INTO plato VALUES ('Tortilla de patatas','Tiene que llevar cebolla');
INSERT INTO plato VALUES ('Sushi','Sushi de pescado');
INSERT INTO plato VALUES ('Tarta de queso','Sabe a queso');

INSERT INTO conformar VALUES ('1','Pizza provenzal');
INSERT INTO conformar VALUES ('2','Gyozas');
INSERT INTO conformar VALUES ('3','Tortilla de patatas');
INSERT INTO conformar VALUES ('4','Sushi');

INSERT INTO primero VALUES ('Gyozas','1');
INSERT INTO segundo VALUES ('Sushi','1');
INSERT INTO postre VALUES ('Tarta de queso','1');