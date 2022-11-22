 /* en la creacion de la siguiente tabla LOG se registran la hora fecha y usuario*/

CREATE TABLE IF NOT EXISTS trigerLog.LOG(fecha DATE, hora VARCHAR(100), usuario VARCHAR(100), idProducto INT, status,  VARCHAR(100));



CREATE TRIGGER ‘before_update_trig’

BEFORE UPDATE ON stock FOR EACH ROW

INSERT INTO ‘LOG’ ( fecha, hora, usuario, idProducto,status)

VALUES ( CURDATE (), CURTIME(), USER(), NEW. idProducto,’UPDATE’);



CREATE TRIGGER ‘after_update_trig’

AFTER DELETE ON stock FOR EACH ROW

INSERT INTO ‘LOG’ ( fecha, hora, usuario, idProducto, status)

VALUES ( CURDATE (), CURTIME(), USER(), producto.idProducto, ‘DELETE’);