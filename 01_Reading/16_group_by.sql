/*
2:29:20 | - 10.11 GROUP BY
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=8960s
*/


-- Devuelve el valor máximo de la columna [age] para cada grupo de edad,
-- agrupando los registros por la propia columna [age].
SELECT MAX(age)
FROM users
GROUP BY age;

/*
Notas importantes:
- GROUP BY agrupa las filas por el valor de la columna indicada.
- MAX(age) se calcula dentro de cada grupo.
- Al agrupar por age, cada grupo contiene un único valor de age.
- El resultado será una fila por cada edad distinta.
*/

-- Devuelve el número de registros por cada valor distinto de [age]
-- agrupando los usuarios por edad.
SELECT COUNT(age)
FROM users
GROUP BY age;

/*
Notas importantes:
- GROUP BY age crea un grupo por cada edad distinta.
- COUNT(age) cuenta solo los valores NO NULL dentro de cada grupo.
- Devuelve una fila por cada edad existente.
*/

-- Devuelve el número de registros por cada valor distinto de [age],
-- mostrando la edad correspondiente a cada grupo.
SELECT COUNT(age), age
FROM users
GROUP BY age;

/*
Notas importantes:
- GROUP BY age crea un grupo por cada edad distinta.
- COUNT(age) cuenta solo los valores NO NULL de age en cada grupo.
- Cada fila del resultado representa una edad y su cantidad de registros.
*/

-- Devuelve el número de registros por cada valor distinto de [age],
-- mostrando la edad correspondiente a cada grupo,
-- y ordena el resultado por la edad de menor a mayor.
SELECT COUNT(age), age
FROM users
GROUP BY age
ORDER BY age ASC;

/*
Notas importantes:
- GROUP BY age agrupa los registros por edad.
- COUNT(age) cuenta solo valores NO NULL dentro de cada grupo.
- ORDER BY se aplica después del GROUP BY.
- ASC indica orden ascendente (opción por defecto).
*/

-- Devuelve el número de registros por cada valor distinto de [age]
-- para los usuarios con edad mayor que [15],
-- mostrando la edad correspondiente a cada grupo
-- y ordenando el resultado de menor a mayor edad.
SELECT COUNT(age), age
FROM users
WHERE age > 15
GROUP BY age
ORDER BY age ASC;

/*
Notas importantes:
- WHERE filtra los registros ANTES de agrupar.
- Solo se tienen en cuenta edades mayores que 15.
- GROUP BY age agrupa los registros filtrados.
- COUNT(age) cuenta valores NO NULL en cada grupo.
- ORDER BY se aplica al resultado final.
*/
