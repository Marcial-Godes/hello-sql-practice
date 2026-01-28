/*
3:13:38 | - 13.2 NOT NULL
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=11618s
*/


-- Crea la tabla [persons2] con 5 columnas.
-- Define que [id] y [name] son obligatorios (NOT NULL).
CREATE TABLE persons2 (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(50),
    created DATE
);

/*
Notas importantes:
- CREATE TABLE crea una tabla nueva.
- NOT NULL obliga a que la columna tenga valor (no permite NULL).
- age, email y created permiten NULL porque no se ha indicado NOT NULL.
- VARCHAR(100) y VARCHAR(50) son columnas de texto con longitud máxima.
- DATE almacena fechas en formato YYYY-MM-DD.
*/
