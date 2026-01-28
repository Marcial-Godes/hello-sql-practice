/*
2:22:39 | - 10.8 BETWEEN
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=8559s
*/


-- Devuelve todas las columnas de los registros de la tabla [users]
-- cuyo valor en la columna [age] esté comprendido entre [20] y [30],
-- incluyendo ambos valores.
SELECT * FROM users WHERE age BETWEEN 20 AND 30;

/*
Notas importantes:
- BETWEEN incluye los valores límite (20 y 30).
- Es equivalente a: age >= 20 AND age <= 30.
- Los valores NULL no se incluyen.
*/
