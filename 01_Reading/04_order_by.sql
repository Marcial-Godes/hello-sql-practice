/*1:49:51 | - 9.3 ORDER BY
        https://www.youtube.com/watch?v=OuJerKzV5T0&t=6591s
*/


/*
Devuelve todas las columnas de los registros de la tabla [users]
ordenados por la columna [age] de menor a mayor (orden ascendente por defecto).
*/
        SELECT * FROM users ORDER BY age;

/*Devuelve todas las columnas de los registros de la tabla [users]
ordenados por la columna [age] de mayor a menor (orden descendente).
*/
        SELECT * FROM users ORDER BY age DESC;

/* Devuelve todas las columnas de los registros de la tabla [users]
cuyo valor en la columna [email] sea ["sara@gmail.com"],
y ordena el resultado por la columna [age] de mayor a menor.
*/
        SELECT * FROM users WHERE email = "sara@gmail.com" ORDER BY age DESC;

/* Devuelve los valores de la columna [name] de los registros de la tabla [users]
cuyo valor en la columna [email] sea ["sara@gmail.com"],
y ordena el resultado por la columna [age] de mayor a menor.
*/
        SELECT name FROM users WHERE email = "sara@gmail.com" ORDER BY age DESC;
