/*
3:18:30 | - 13.4 PRIMARY KEY
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=11910s
*/


-- Crea la tabla [persons4] con 6 columnas.
-- Define [id] como clave primaria (PRIMARY KEY), por lo que:
-- - no puede ser NULL
-- - no puede repetirse
CREATE TABLE persons4 (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(50),
    created DATETIME,
    PRIMARY KEY (id)
);

/*
Notas importantes:
- PRIMARY KEY(id) identifica de forma única cada fila.
- PRIMARY KEY equivale a: NOT NULL + UNIQUE (para esa columna).
- Por eso UNIQUE(id) no es necesario si ya existe PRIMARY KEY(id).
- DATETIME guarda fecha y hora: YYYY-MM-DD HH:MM:SS.
*/
