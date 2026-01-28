/*
2:10:33 | - 10.3 MIN, MAX
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=7833s
*/


-- Devuelve el valor máximo de la columna [age]
-- de todos los registros de la tabla [users].
SELECT MAX(age) FROM users;

/*
Notas importantes:
- MAX es una función de agregación.
- Devuelve un único valor, no varias filas.
- Los valores NULL se ignoran automáticamente.
- No devuelve el usuario, solo el valor máximo de age.
*/

-- Devuelve el valor mínimo de la columna [age]
-- de todos los registros de la tabla [users].
SELECT MIN(age) FROM users;

/*
Notas importantes:
- MIN es una función de agregación.
- Devuelve un único valor.
- Los valores NULL se ignoran automáticamente.
- No devuelve el usuario, solo el valor mínimo de age.
*/
