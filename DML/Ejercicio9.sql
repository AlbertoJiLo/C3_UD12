USE ejercicio9;

INSERT INTO receta (nombre,dificultad,instrucciones,foto) VALUES ('Tortilla de patatas','6','Freir patatas, cebolla, etc','1');
INSERT INTO receta (nombre,dificultad,instrucciones,foto) VALUES ('Gyozas','7','Amasar, cocinar el relleno, etc','2');
INSERT INTO receta (nombre,dificultad,instrucciones,foto) VALUES ('Tacos','5','Cocinar la carne, hacer pico de gallo, etc ','3');

INSERT INTO ingrediente (nombre, alergenos) VALUES ('Patatas','No');
INSERT INTO ingrediente (nombre, alergenos) VALUES ('Gambas','Alergia al marisco');
INSERT INTO ingrediente (nombre, alergenos) VALUES ('Cebolla','No');
INSERT INTO ingrediente (nombre, alergenos) VALUES ('Tomates','No');
INSERT INTO ingrediente (nombre, alergenos) VALUES ('Ternera','No');

INSERT INTO componer (id_receta,id_ingrediente,medidas) VALUES ('1','1','5');
INSERT INTO componer (id_receta,id_ingrediente,medidas) VALUES ('1','3','2');
INSERT INTO componer (id_receta,id_ingrediente,medidas) VALUES ('2','2','6');
INSERT INTO componer (id_receta,id_ingrediente,medidas) VALUES ('3','3','4');
INSERT INTO componer (id_receta,id_ingrediente,medidas) VALUES ('3','4','2');
INSERT INTO componer (id_receta,id_ingrediente,medidas) VALUES ('3','5','2');