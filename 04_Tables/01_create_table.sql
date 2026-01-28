/*
3:08:11 | - 13.1 CREATE TABLE
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=11291s
*/


-- Crea una tabla llamada [PERSONS] con 5 columnas:
-- id (entero), name (texto), age (entero), email (texto), created (fecha).
CREATE TABLE persons (
	id int,
    name varchar(100),
    age int,
    email varchar(50),
    created date
);

/*
Notas importantes:
- En CREATE TABLE cada columna se separa por comas.
- La última columna NO lleva coma.
- VARCHAR(n) indica texto de longitud máxima n.
- DATE guarda fechas en formato YYYY-MM-DD.
*/
