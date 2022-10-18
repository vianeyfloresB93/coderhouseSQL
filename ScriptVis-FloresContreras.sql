CREATE VIEW 
bavionline.USUARIO AS
SELECT idCliente, nombre, direccion,email FROM bavionline.PERFIL_USUARIO
WHERE pais = 'Mexico';

CREATE VIEW 
bavionline.VESTIDOS AS SELECT idCliente,talla FROM bavionline.VESTIDO WHERE tipoManga= 'larga';


CREATE VIEW 
bavionline.CHAMARRAS AS SELECT idCliente,talla FROM bavionline.CHAMARRA;

CREATE VIEW 
bavionline.PRODUCTOS AS SELECT idCliente, talla , precio, stock FROM bavionline.PRODUCTO WHERE precio =( select precio from bavionline.categorias where precio > '500');

CREATE VIEW 
bavionline.OFICINAS  AS SELECT pantalon FROM bavionline.OFICINA WHERE pantalon=( select talla from bavionline.pantalon where talla > 34);
