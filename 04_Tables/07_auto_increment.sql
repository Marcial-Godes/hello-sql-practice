/*
3:26:01 | - 13.7 AUTO INCREMENT
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=12361s
*/

-- Crea la tabla [persons6] con:
-- - id entero autoincremental (AUTO_INCREMENT) como clave primaria
-- - name obligatorio (NOT NULL)
-- - created con fecha/hora por defecto
-- - restricción CHECK para que age sea >= 18
CREATE TABLE persons6 (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(50),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id),
    CHECK (age >= 18)
);

/*
Notas importantes:
- AUTO_INCREMENT genera automáticamente el id al insertar.
- PRIMARY KEY(id) identifica de forma única cada fila (y hace id UNIQUE y NOT NULL).
- DEFAULT CURRENT_TIMESTAMP()ÛM asigna fecha/hora actual si no se indica created.
- CHECK(age >= 18) impide edades menores a 18.
*/
