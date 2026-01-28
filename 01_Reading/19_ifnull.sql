/*
2:47:02 | - 10.14 IFNULL
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=10022s
*/


-- Devuelve las columnas [name] y [surname] de la tabla [users]
-- y muestra la columna [age], sustituyendo los valores NULL por 0.
SELECT name,
       surname,
       IFNULL(age, 0) AS age
FROM users;

/*
Notas importantes:
- IFNULL(age, 0) reemplaza NULL por 0 solo en el resultado.
- El alias AS age hace que la columna calculada se muestre con el mismo nombre.
- La columna real en la tabla no se modifica.
*/
