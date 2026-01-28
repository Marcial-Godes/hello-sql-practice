/*
2:24:26 | - 10.9 ALIAS
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=8666s

2:27:05 | - 10.10 CONCAT
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=8825s
*/


-- Devuelve los valores de las columnas [name] y [init_date] de la tabla [users]
-- para los registros cuya edad esté comprendida entre [20] y [30],
-- mostrando la columna [init_date] con un nombre descriptivo.
SELECT name,
       init_date AS 'Fecha de inicio en programación'
FROM users
WHERE age BETWEEN 20 AND 30;

/*
Notas importantes:
- AS se usa para asignar un alias a una columna en el resultado.
- El alias solo afecta a la salida de la consulta, no a la tabla.
- BETWEEN incluye los valores límite (20 y 30).
- El nombre real de la columna sigue siendo init_date.
*/

-- Devuelve los valores de las columnas [name] y [init_date] de la tabla [users]
-- para el registro cuyo valor en la columna [name] sea ["Marcial"],
-- mostrando la columna [init_date] con un alias descriptivo.
SELECT name,
       init_date AS "Fecha de inicio en programación"
FROM users
WHERE name = "Marcial";

/*
Notas importantes:
- AS asigna un alias a la columna solo en el resultado.
- El alias no modifica la estructura de la tabla.
- El filtro WHERE selecciona únicamente los registros con name = "Marcial".
- En MySQL se pueden usar comillas dobles para texto, pero no es lo recomendado.
*/

-- Devuelve una columna calculada que concatena textos fijos
-- con las columnas [name] y [surname] de la tabla [users],
-- mostrando el resultado con el alias [Nombre completo].
SELECT CONCAT('Nombre: ', name, ', Apellidos: ', surname) AS 'Nombre completo'
FROM users;

/*
Notas importantes:
- CONCAT une textos literales y valores de columnas.
- El alias cambia solo el nombre de la columna en el resultado.
- La columna [Nombre completo] no existe en la tabla.
- Si alguno de los valores es NULL, el resultado será NULL.
*/
