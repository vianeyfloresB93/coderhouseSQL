-- Se insertan registros cuando se ejecuta el stored procedure

CREATE DEFINER=''@'localhost' PROCEDURE 'Agregar productos'(IN idCliente INT)
BEGIN
    INSERT INTO bavionline.producto (idCliente, tipoProducto, color, textura, genero, precio, stock, talla)
     VALUES (65,'chamarra','cafe','pana','fefemino','1800','50',32);

END

-- Permite seleccionar la columna que se ordenará por orden asc ó desc y así mismo la tabla que se va a consultar

CREATE DEFINER=''@'localhost' PROCEDURE 'Ordenar productos por tabla'(IN idCliente INT(25),IN orednamiento ENUM('ASC', 'DESC'),IN productos Varchar(100))
BEGIN 
    IF idCliente  '' THEN 
    SET @Ordenar = CONCAT ('ORDER BY ', idCliente);
    ELSE 
        SET  @Ordenar = '';
    END IF ;
    IF orednamiento '' THEN 
        SET @tipo = CONCAT ('',orednamiento);
    ELSE 
        SET @tipo = '';
    END IF ;
    SET @clausula= CONCAT ('SELECT * FROM', productos,@Ordenar, @tipo );
    PREPARE ejecutarSQL FROM @clausula;
    EXECUTE ejecutarSQL;
    DECLARE PREPARE ejecutarSQL;

END
