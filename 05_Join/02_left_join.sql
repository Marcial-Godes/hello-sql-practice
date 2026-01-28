/*
4:44:05 | - 17.2 LEFT JOIN
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=17045s
*/


-- Devuelve el nombre del usuario y su dni_number.
-- Muestra TODOS los usuarios, incluso los que no tienen registro en [dni].
SELECT u.name, d.dni_number
FROM users u
LEFT JOIN dni d
ON u.user_id = d.user_id;

/*
Notas importantes:
- LEFT JOIN devuelve:
  - todas las filas de la tabla de la izquierda (users)
  - y las coincidencias de la tabla de la derecha (dni)
- Si un usuario no tiene DNI:
  - igualmente aparece en el resultado
  - y dni_number será NULL
- ON define la relación: u.user_id = d.user_id
*/


-- Devuelve el nombre del usuario y su dni_number
-- mostrando TODOS los registros de la tabla [dni],
-- y los datos del usuario si existe coincidencia.
SELECT u.name, d.dni_number
FROM dni d
LEFT JOIN users u
ON u.user_id = d.user_id;

/*
Notas importantes:
- LEFT JOIN devuelve:
  - todas las filas de la tabla de la izquierda (dni)
  - y las coincidencias de la tabla de la derecha (users)
- Si existe un DNI sin usuario asociado:
  - aparecerá en el resultado
  - u.name será NULL
- ON define la relación: d.user_id = u.user_id
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
