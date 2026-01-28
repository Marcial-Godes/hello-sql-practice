/*
1:33:38 | 8. Consulta de datos: SELECT
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=5618s
*/    
    
-- Devuelve todas las columnas y todos los registros de la tabla [users].
        SELECT * FROM users;

/*
Devuelve los valores de la columna [name] de todos los registros
de la tabla [users].
*/
        SELECT name FROM users;

/*Devuelve los valores de las columnas [user_id] y [name]
de todos los registros de la tabla [users].
*/
        SELECT user_id, name FROM users;

/*Devuelve los valores de las columnas [name] y [user_id]
de todos los registros de la tabla [users],
en el mismo orden en que se indican en el SELECT.
*/
        SELECT name, user_id FROM users;
