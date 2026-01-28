/*
3:44:49 | - 15.1 TABLAS 1:1
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=13489s
*/


-- Crea la tabla [dni] para almacenar DNIs asociados a usuarios:
-- - dni_id: identificador autoincremental y clave primaria
-- - dni_number: número de DNI (obligatorio)
-- - user_id: referencia al usuario (clave foránea)
CREATE TABLE dni (
    dni_id INT AUTO_INCREMENT PRIMARY KEY,
    dni_number INT NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

/*
Notas importantes:
- PRIMARY KEY(dni_id) ya implica UNIQUE y NOT NULL.
  Por tanto UNIQUE(dni_id) es redundante y sobra.
- FOREIGN KEY(user_id) obliga a que el user_id exista en la tabla users.
- Un usuario puede tener 0 o 1 o varios DNIs dependiendo de restricciones adicionales.
*/
