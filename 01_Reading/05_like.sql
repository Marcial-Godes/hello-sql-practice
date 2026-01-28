/*
1:54:54 | - 9.4 LIKE
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=6894s
*/


/* Devuelve todas las columnas de los registros de la tabla [users]
cuyo valor en la columna [email] termina en ["gmail.com"],
utilizando una comparación por patrón con LIKE.
*/
        SELECT * FROM users WHERE email LIKE "%gmail.com";

/* Devuelve todas las columnas de los registros de la tabla [users]
cuyo valor en la columna [email] comienza por ["sara"],
utilizando una comparación por patrón con LIKE.
*/
        SELECT * FROM users WHERE email LIKE "sara%";

/* Devuelve todas las columnas de los registros de la tabla [users]
cuyo valor en la columna [email] contiene el carácter ["@"],
utilizando una comparación por patrón con LIKE.
*/
        SELECT * FROM users WHERE email LIKE "%@%";
