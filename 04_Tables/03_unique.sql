/*
3:16:26 | - 13.3 UNIQUE
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=11786s
*/


-- Crea la tabla [persons3] con 6 columnas.
-- Define [id] y [name] como obligatorios (NOT NULL)
-- y establece que [id] no puede repetirse (UNIQUE).
CREATE TABLE persons3 (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(50),
    created DATETIME,
    UNIQUE (id)
);

/*
Notas importantes:
- UNIQUE(id) obliga a que no existan dos filas con el mismo id.
- NOT NULL + UNIQUE evita id duplicados y evita id vacíos.
- DATETIME almacena fecha y hora (YYYY-MM-DD HH:MM:SS).
- Las columnas sin NOT NULL permiten NULL.
*/
