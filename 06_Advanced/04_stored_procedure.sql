/*
5:33:52 | - 18.4 STORED PROCEDURE
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=20032s
*/


-- Cambia el delimitador para poder definir un procedimiento con BEGIN...END
DELIMITER //

-- Crea un procedimiento almacenado llamado [p_all_users]
-- que devuelve todos los registros de la tabla [users].
CREATE PROCEDURE p_all_users()
BEGIN
    SELECT * FROM users;
END//

-- Restaura el delimitador normal
DELIMITER ;

/*
Notas importantes:
- CREATE PROCEDURE crea un procedimiento almacenado en la base de datos.
- BEGIN...END permite escribir varias sentencias dentro del procedimiento.
- DELIMITER se usa para que MySQL no corte el código al primer ';'.
*/


-- Cómo se ejecuta
CALL p_all_users();


-- Crea un procedimiento almacenado que recibe una edad como parámetro
-- y devuelve los usuarios con esa edad.
-- IMPORTANTE: el parámetro NO debe llamarse igual que la columna.

DELIMITER //

CREATE PROCEDURE p_age_users(IN p_age INT)
BEGIN
    SELECT *
    FROM users
    WHERE age = p_age;
END//

DELIMITER ;

/*
Notas importantes:
- IN indica un parámetro de entrada.
- p_age es la edad recibida.
- WHERE age = p_age filtra los usuarios que tienen esa edad.
- Si el parámetro se llama igual que la columna (age), se produce confusión:
  WHERE age = age no filtra y devuelve todos los registros.
*/


-- Cómo se ejecuta
CALL p_age_users(15);


-- Elimina (borra) el procedimiento almacenado llamado [p_age_users].
DROP PROCEDURE p_age_users;

/*
Notas importantes:
- DROP PROCEDURE elimina el procedimiento de la base de datos.
- No lleva paréntesis ().
- Si el procedimiento no existe, MySQL dará error.
*/


-- Variante segura (recomendada)
DROP PROCEDURE IF EXISTS p_age_users;


-- Elimina (borra) el procedimiento almacenado llamado [p_all_users].
DROP PROCEDURE p_all_users;

/*
Notas importantes:
- DROP PROCEDURE elimina el procedimiento de la base de datos.
- No afecta a las tablas ni a los datos.
- Si el procedimiento no existe, MySQL dará error.
*/


-- Variante segura (recomendada)
DROP PROCEDURE IF EXISTS p_all_users;
