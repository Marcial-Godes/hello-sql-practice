/*
4:49:58 | - 17.3 RIGHT JOIN
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=17398s
*/


-- Une las tablas [users] y [dni] usando RIGHT JOIN.
-- Devuelve TODAS las filas de la tabla de la derecha (dni)
-- y las coincidencias de la tabla de la izquierda (users).
SELECT *
FROM users u
RIGHT JOIN dni d
ON u.user_id = d.user_id;

/*
Notas importantes:
- RIGHT JOIN conserva todas las filas de la tabla de la derecha (dni).
- Si un DNI no tiene usuario asociado:
  - igualmente aparece en el resultado
  - las columnas de users saldrán como NULL.
- RIGHT JOIN es equivalente a intercambiar tablas y usar LEFT JOIN:
  dni LEFT JOIN users.
*/


-- Devuelve el nombre del usuario y el número de DNI
-- conservando TODAS las filas de la tabla de la derecha (dni).
-- Si un DNI no tiene usuario asociado, u.name será NULL.
SELECT u.name, d.dni_number
FROM users u
RIGHT JOIN dni d
ON u.user_id = d.user_id;

/*
Notas importantes:
- RIGHT JOIN devuelve todas las filas de la tabla de la derecha (dni).
- Solo se muestran usuarios cuando hay coincidencia con dni.user_id.
- Si no hay coincidencia:
  - el DNI aparece igualmente
  - y el nombre del usuario sale como NULL.
*/


-- Devuelve el nombre del usuario y su dni_number,
-- conservando TODAS las filas de la tabla de la derecha (users).
-- Si un usuario no tiene DNI, d.dni_number será NULL.
SELECT u.name, d.dni_number
FROM dni d
RIGHT JOIN users u
ON u.user_id = d.user_id;

/*
Notas importantes:
- RIGHT JOIN devuelve todas las filas de la tabla de la derecha.
- Aquí la tabla derecha es [users], por lo tanto salen TODOS los usuarios.
- Si un usuario no tiene registro en dni:
  - igualmente aparece
  - d.dni_number será NULL.
*/
