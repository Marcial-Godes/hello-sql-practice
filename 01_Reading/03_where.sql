/*
1:46:23 | - 9.2 WHERE
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=6383s
*/


/*Devuelve los valores de la columna [age] de los registros de la tabla [users]
cuyo valor en la columna [age] sea [15].
*/
        SELECT age FROM users WHERE age = 15;


/*
Devuelve todas las columnas de los registros de la tabla [users]
cuyo valor en la columna [age] sea [15].
*/
        SELECT * FROM users WHERE age = 15;


/*
Devuelve los valores de la columna [NombreColumnaSeleccionada] de los registros
de la tabla [NombreTabla] cuyo valor en la columna [NombreColumnaFiltro]
cumpla la condición indicada.
*/
        SELECT name FROM users WHERE age = 15;

/*
Devuelve los valores ÚNICOS (sin duplicados) de la columna [name]
de los registros de la tabla [users] cuyo valor en la columna [age]
sea [15].
*/
        SELECT DISTINCT name FROM users WHERE age = 15;


/*
Devuelve los valores ÚNICOS (sin duplicados) de la columna [age]
de los registros de la tabla [users] cuyo valor en la columna [age]
sea [15].
*/
        SELECT DISTINCT age FROM users WHERE age = 15;