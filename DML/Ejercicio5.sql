USE ejercicio5;

SET foreign_key_checks = 0;
INSERT INTO pieza VALUES (1,'AA','Bisagra',1);
INSERT INTO pieza VALUES (2,'AB','Tuerca',3);
INSERT INTO pieza VALUES (3,'AC','Tornillo',4);

INSERT INTO componer VALUES (1,3,'AA','AE');
INSERT INTO componer VALUES (3,2,'AB','AF');
INSERT INTO componer VALUES (4,1,'AC','AD');

INSERT INTO almacen VALUES (1,1,'Almacen 1-1');
INSERT INTO almacen VALUES (2,1,'Almacen 2-1');

INSERT INTO estanteria VALUES (1,1);

INSERT INTO estar VALUES (1,'AA',1);
SET foreign_key_checks = 1;