/*
2:38:05 | - 10.13 CASE
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=9485s
*/


-- Devuelve todas las columnas de la tabla [users]
-- y añade una columna calculada [agetext] que indica
-- si el usuario es mayor o menor de edad según su edad.
SELECT *,
       CASE
           WHEN age > 17 THEN 'Es mayor de edad'
           ELSE 'Es menor de edad'
       END AS agetext
FROM users;

/*
Notas importantes:
- CASE permite aplicar lógica condicional dentro de una consulta SQL.
- WHEN define una condición.
- THEN indica el valor a devolver si la condición se cumple.
- ELSE se ejecuta cuando no se cumple ningún WHEN.
- END cierra la estructura CASE.
- El resultado es una columna calculada, no existe en la tabla.
*/

-- Devuelve todas las columnas de la tabla [users]
-- y añade una columna calculada que indica con TRUE o FALSE
-- si el usuario es mayor de edad.
SELECT *,
       CASE
           WHEN age > 17 THEN TRUE
           ELSE FALSE
       END AS '¿Es mayor de edad?'
FROM users;

/*
Notas importantes:
- CASE evalúa la condición fila por fila.
- Si age > 17 devuelve TRUE.
- En cualquier otro caso devuelve FALSE.
- La columna resultante es calculada, no existe en la tabla.
- El alias solo afecta al resultado de la consulta.
*/

-- Devuelve todas las columnas de la tabla [users]
-- y añade una columna calculada [agetext] que clasifica
-- al usuario según su edad en tres casos distintos.
SELECT *,
       CASE
           WHEN age > 18 THEN 'Es mayor de edad'
           WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad'
           ELSE 'Es menor de edad'
       END AS '¿Es mayor de edad?'
FROM users;

/*
Notas importantes:
- CASE evalúa las condiciones en orden, de arriba a abajo.
- Se ejecuta el primer WHEN que se cumple.
- ELSE se aplica si no se cumple ningún WHEN.
- END cierra la estructura CASE.
- La columna agetext es calculada y no existe en la tabla.
*/
