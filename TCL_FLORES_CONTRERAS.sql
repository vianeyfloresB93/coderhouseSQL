START TRANSACTION;

/* ELIMINA REGISTROS */
DELETE FROM bavionline.PRODUCTO WHERE idCliente=123;
DELETE FROM bavionline.PRODUCTO WHERE idCliente=124;
DELETE FROM bavionline.PRODUCTO WHERE idCliente=125;
DELETE FROM bavionline.PRODUCTO WHERE idCliente=126;
DELETE FROM bavionline.PRODUCTO WHERE idCliente=127;

/*RECUPERAR REGISTROS ELIMINADOS */
ROLLBACK;

START TRANSACTION;

DELETE FROM bavionline.PRODUCTO WHERE idCliente=123;
DELETE FROM bavionline.PRODUCTO WHERE idCliente=124;
DELETE FROM bavionline.PRODUCTO WHERE idCliente=125;
DELETE FROM bavionline.PRODUCTO WHERE idCliente=126;
DELETE FROM bavionline.PRODUCTO WHERE idCliente=127;

/* ELIMINA REGISTROS PERMANENTES AL HACER COMMIT*/
COMMIT;


/*SAVEPOINT INSERTA 4 REGISTROS */

START TRANSACTION;

INSERT INTO bavionline.blusa (idCliente, tipoBlusa, talla, color, idBlusa) VALUES (65,'vestir',34,'34','11');
INSERT INTO bavionline.blusa (idCliente, tipoBlusa, talla, color, idBlusa) VALUES (65,'casual',23,'37','12');
INSERT INTO bavionline.blusa (idCliente, tipoBlusa, talla, color, idBlusa) VALUES (65,'casual',23,'37','13');
INSERT INTO bavionline.blusa (idCliente, tipoBlusa, talla, color, idBlusa) VALUES (65,'vestir',34,'34','14');

SAVEPOINT CuatroRegistros;

/*SAVEPOINT INSERTA 8 REGISTROS */

INSERT INTO bavionline.categorias (idCliente, idVestido, idSudadera, idChamarra, idOficina) VALUES (65,'98','E12','R12','T98');
INSERT INTO bavionline.categorias (idCliente, idVestido, idSudadera, idChamarra, idOficina) VALUES (65,'12','E13','R13','T99');
INSERT INTO bavionline.categorias (idCliente, idVestido, idSudadera, idChamarra, idOficina) VALUES (65,'13','E14','R14','T100');
INSERT INTO bavionline.categorias (idCliente, idVestido, idSudadera, idChamarra, idOficina) VALUES (65,'14','E15','R34','T101');
INSERT INTO bavionline.categorias (idCliente, idVestido, idSudadera, idChamarra, idOficina) VALUES (65,'45','E16','R35','T102');
INSERT INTO bavionline.categorias (idCliente, idVestido, idSudadera, idChamarra, idOficina) VALUES (65,'46','E17','R36','T103');
INSERT INTO bavionline.categorias (idCliente, idVestido, idSudadera, idChamarra, idOficina) VALUES (65,'49','E18','R37','T104');
INSERT INTO bavionline.categorias (idCliente, idVestido, idSudadera, idChamarra, idOficina) VALUES (65,'143','E19','R38','T105');

SAVEPOINT OchoRegistros;

/*SAVEPOINT ELIMINA REGISTROS */

RELEASE SAVEPOINT CuatroRegistros;