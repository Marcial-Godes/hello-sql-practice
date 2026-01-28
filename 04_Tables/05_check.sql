/*
3:22:00 | - 13.5 CHECK
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=12120s
*/

-- Crea la tabla [persons5] con restricciones:
-- - id obligatorio y clave primaria (PRIMARY KEY)
-- - name obligatorio
-- - age debe ser mayor o igual a 18 (CHECK)
CREATE TABLE persons5 (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(50),
    created DATETIME,
    PRIMARY KEY (id),
    CHECK (age >= 18)
);

/*
Notas importantes:
- PRIMARY KEY(id) ya implica UNIQUE y NOT NULL.
  Por tanto UNIQUE(id) sobra (es redundante).
- CHECK valida una condición al insertar o actualizar datos.
- Si age < 18, el INSERT/UPDATE fallará.
*/
