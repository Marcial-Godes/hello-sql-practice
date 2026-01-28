/*
2:15:27 | - 10.5 SUM
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=8127s
*/


-- Devuelve la suma de los valores de la columna [age]
-- de todos los registros de la tabla [users].
SELECT SUM(age) FROM users;

/*
Notas importantes:
- SUM es una función de agregación.
- Suma únicamente valores numéricos.
- Los valores NULL se ignoran automáticamente.
- Devuelve un único valor.
*/
