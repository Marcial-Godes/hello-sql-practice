/*
3:24:02 | - 13.6 DEFAULT
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=12242s
*/

-- Crea la tabla [persons6] con restricciones:
-- - id obligatorio y clave primaria
-- - name obligatorio
-- - created tiene valor por defecto con la fecha/hora actual
-- - age debe ser >= 18
CREATE TABLE persons6 (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(50),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id),
    CHECK (age >= 18)
);

/*
Notas importantes:
- DEFAULT CURRENT_TIMESTAMP() asigna automáticamente la fecha/hora actual
  si no se indica un valor para created en el INSERT.
- PRIMARY KEY(id) implica UNIQUE + NOT NULL, por lo que UNIQUE(id) no es necesario.
- CHECK(age >= 18) impide insertar/actualizar edades menores a 18.
*/
