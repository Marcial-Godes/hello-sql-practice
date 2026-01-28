/*
2:03:14 | - 9.6 LIMIT
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=7394s
*/


/* Devuelve todas las columnas de los registros de la tabla [users],
mostrando únicamente las primeras [2] filas del resultado.
*/
SELECT * FROM users LIMIT 2;

/* Devuelve todas las columnas de los registros de la tabla [users]
cuyo valor en la columna [email] NO sea ["sara@gmail.com"]
O cuyo valor en la columna [age] sea [15],
limitando el resultado a las primeras [2] filas.
*/
SELECT * FROM users WHERE NOT email = "sara@gmail.com" OR age = 15 LIMIT 2;
