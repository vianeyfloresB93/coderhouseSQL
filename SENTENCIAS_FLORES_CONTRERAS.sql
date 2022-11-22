--creacion de usuarios

CREATE USER Usuario1@localhost IDENTIFIED BY 'usuario1';
CREATE USER Usuario2@localhost IDENTIFIED BY 'usuario2';

-- otorgar permisos de lectura a todas las tablas al usuario
GRANT SELECT ON *.* TO Usuario1@localhost;

-- otorgar permisos de lectura, insercion y modificacion a todas las tablas para el usuario2
GRANT SELECT, INSERT, UPDATE ON *.* TO Usuario2@localhost;

-- se restringe a los dos usuarios que no puedan eliminar registros
REVOKE DELETE ON *.* FROM Usuario1@localhost,Usuario2@localhost;
SELECT * FROM USER;

