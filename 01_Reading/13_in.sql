/*
2:18:54 | - 10.7 IN
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=8334s
*/


-- Devuelve todas las columnas de los registros de la tabla [users]
-- cuyo valor en la columna [name] esté incluido en la lista indicada.
SELECT * FROM users WHERE name IN ('marcial');

/*
Notas importantes:
- IN se usa para comparar un valor contra una lista de valores.
- En este caso la lista tiene un solo elemento: "marcial".
- Funcionalmente es equivalente a: name = "marcial".
- IN cobra sentido real cuando hay varios valores.
*/

-- Devuelve todas las columnas de los registros de la tabla [users]
-- cuyo valor en la columna [name] esté incluido en la lista indicada.
SELECT * FROM users WHERE name IN ('marcial', 'sara');

/*
Notas importantes:
- IN compara un valor contra una lista de valores.
- El resultado incluye cualquier registro cuyo name sea 'marcial' o 'sara'.
- Es equivalente a usar varias condiciones con OR.
*/
