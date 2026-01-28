/*
5:27:43 | - 18.3 VIEW
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=19663s
*/


-- Crea una vista llamada [v_adult_users]
-- que muestra únicamente el nombre y la edad
-- de los usuarios mayores de edad (age > 17).
CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age > 17;


/*
Notas importantes:
- CREATE VIEW crea una vista (no una tabla).
- Una vista es una consulta guardada.
- No almacena datos: los datos se leen siempre de la tabla original.
- WHERE age > 17 filtra solo usuarios mayores de edad.
*/

-- Elimina (borra) la vista llamada [v_adult_users].
DROP VIEW v_adult_users;

/*
Notas importantes:
- DROP VIEW elimina la vista, no las tablas ni los datos.
- Los datos siguen existiendo en la tabla original [users].
- Si la vista no existe, MySQL dará error.
*/


--Variante segura (recomendada)
DROP VIEW IF EXISTS v_adult_users;
