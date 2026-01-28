/*
1:59:53 | - 9.5 AND, OR, NOT
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=7193s
*/


/* Devuelve todas las columnas de los registros de la tabla [users]
cuyo valor en la columna [email] NO sea ["sara@gmail.com"].
*/
        SELECT * FROM users WHERE NOT email = "sara@gmail.com";

/* Devuelve todas las columnas de los registros de la tabla [users]
cuyo valor en la columna [email] NO sea ["sara@gmail.com"]
y cuyo valor en la columna [age] sea [15].
*/
        SELECT * FROM users WHERE NOT email = "sara@gmail.com" AND age = 15;

/*
Devuelve todas las columnas de los registros de la tabla [users]
cuyo valor en la columna [email] NO sea ["sara@gmail.com"]
O cuyo valor en la columna [age] sea [15].
*/
        SELECT * FROM users WHERE NOT email = "sara@gmail.com" OR age = 15;
