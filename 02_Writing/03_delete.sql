/*
3:01:59 | - 11.3 DELETE
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=10919s
*/


-- Elimina el registro de la tabla [users]
-- cuyo valor en la columna [user_id] sea 11.
DELETE FROM users
WHERE user_id = 11;

/*
Notas importantes:
- DELETE elimina filas completas de una tabla.
- WHERE es obligatorio si no quieres borrar toda la tabla.
- La eliminación es permanente (salvo que uses transacciones).
*/
