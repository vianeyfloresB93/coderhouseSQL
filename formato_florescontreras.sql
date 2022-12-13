CREATE DEFINER='root'@'localhost' FUNCTION 'cliente'(idUsuario INT) RETURNS varchar(30) CHARSET utf8mb4
READS SQL DATA 
BEGIN
DECLARE Max FLOAT(12,2);
DECLARE talla VARCHAR(6);

SET Max = (SELECT MAX(stock) FROM bavionline.producto WHERE ID_Usuario=idUsuario);
SET talla = (SELECT ID_talla FROM bavionline.producto  WHERE stock=Max AND ID_Usuario = id_usuario);


RETURN talla;
END



CREATE DEFINER='root'@'localhost' FUNCTION 'Blusa'(idBlusa INT ) RETURNS varchar(30) CHARSET utf8mb4
BEGIN
DECLARE Blusa VARCHAR(30);
SET Blusa = (SELECT color FROM bavionline.producto WHERE ID_Usuario=idUsuario );
RETURN Blusa;
END