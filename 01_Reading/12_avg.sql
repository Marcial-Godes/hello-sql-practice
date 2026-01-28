/*
2:18:12 | - 10.6 AVG
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=8292s
*/


-- Devuelve la media (promedio) de los valores de la columna [age]
-- de todos los registros de la tabla [users].
SELECT AVG(age) FROM users;

/*
Notas importantes:
- AVG es una función de agregación.
- Calcula la media aritmética.
- Los valores NULL se ignoran automáticamente.
- Devuelve un único valor.
*/
