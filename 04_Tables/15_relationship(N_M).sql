/*
3:58:33 | - 15.3 TABLAS N:M
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=15473s
*/


-- Crea una tabla intermedia [users_languages] para representar una relación
-- muchos-a-muchos entre [users] y [languages].
-- Cada fila representa: un usuario aprende/conoce un idioma.

CREATE TABLE users_languages (
    users_language_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    language_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
);

/*
Notas importantes:
- Esta es una tabla puente (tabla intermedia) para una relación N:M.
- users_language_id es clave primaria autoincremental.
- user_id referencia a users(user_id).
- language_id referencia a languages(language_id).
- UNIQUE(user_id, language_id) impide duplicados:
  (no se puede repetir el mismo usuario con el mismo idioma).

Error original:
- Faltaba una coma tras: language_id INT
  Sin esa coma, MySQL no sabe separar columnas de restricciones.
*/
