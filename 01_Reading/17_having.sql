/*
2:34:23 | - 10.12 HAVING
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=9263s
*/


-- HAVING se utiliza para filtrar GRUPOS creados con GROUP BY.
-- A diferencia de WHERE, HAVING trabaja sobre resultados agregados
-- como COUNT, SUM, AVG, MAX o MIN.

-- En esta consulta:
-- 1) GROUP BY age agrupa los registros por edad.
-- 2) COUNT(age) calcula cuántos registros hay en cada grupo.
-- 3) HAVING COUNT(age) > 1 filtra los grupos que tienen más de un registro.

SELECT age, COUNT(age) FROM users GROUP BY age HAVING COUNT(age) > 1;

/*
Resumen mental:
- WHERE filtra filas individuales (antes de agrupar).
- GROUP BY crea grupos.
- HAVING filtra grupos (después de agrupar).

HAVING solo tiene sentido cuando se usa GROUP BY.
Se utiliza cuando la condición depende de una función de agregación.
*/
