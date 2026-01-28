-- Devuelve las columnas [name], [surname] y [age] de la tabla [users]
-- únicamente para los registros cuyo valor en la columna [surname] sea NULL.
SELECT name, surname, age
FROM users
WHERE surname IS NULL;

/*
Notas importantes:
- IS NULL se usa para comprobar ausencia de valor.
- No se puede usar '=' para comparar con NULL.
- La consulta filtra filas, no modifica datos.
*/
