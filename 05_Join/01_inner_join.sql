/*
4:28:20 | - 17.1 INNER JOIN
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=16100s
*/


-- Une la tabla [users] con la tabla [dni] mediante un INNER JOIN SIN condición.
-- Al no especificarse ON, MySQL hace un producto cartesiano:
-- combina cada fila de users con cada fila de dni.
SELECT *
FROM users
INNER JOIN dni;

/*
Notas importantes:
- Esta consulta NO relaciona los datos por user_id.
- Devuelve muchas filas: (nº filas users) x (nº filas dni).
- Se suele considerar una mala práctica si no se hace a propósito.
*/


-- Une las tablas [users] y [dni] mostrando solo los registros que coinciden
-- en la relación users.user_id = dni.user_id.
SELECT *
FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

/*
Notas importantes:
- INNER JOIN devuelve únicamente las filas que tienen coincidencia en ambas tablas.
- ON indica la condición de unión (cómo se relacionan las tablas).
- Si un usuario no tiene DNI asociado, NO aparece en el resultado.
- Si existieran varios DNIs para el mismo usuario, el usuario aparecería repetido
  una vez por cada DNI.
*/


-- Une las tablas [users] y [dni] usando alias:
-- u = users
-- d = dni
-- y muestra solo las filas donde coinciden los user_id.
SELECT *
FROM users u
JOIN dni d
ON u.user_id = d.user_id;

/*
Notas importantes:
- JOIN sin especificar tipo es equivalente a INNER JOIN en MySQL.
- Los alias (u y d) sirven para escribir consultas más cortas y claras.
- ON define la condición de unión entre ambas tablas.
- Solo aparecen usuarios que tienen un registro en dni.
*/


-- Devuelve el [name] del usuario y su [dni_number]
-- uniendo las tablas [users] y [dni] mediante user_id,
-- y ordena el resultado por la columna [age].
SELECT u.name, d.dni_number
FROM users u
JOIN dni d ON u.user_id = d.user_id
ORDER BY u.age;

/*
Notas importantes:
- JOIN (sin especificar) equivale a INNER JOIN: solo devuelve coincidencias.
- ON indica cómo se relacionan las tablas (u.user_id = d.user_id).
- Se seleccionan solo las columnas: name (de users) y dni_number (de dni).
- ORDER BY age ordena por edad de menor a mayor (ASC por defecto).
- Se puede ordenar por una columna aunque no aparezca en el SELECT.
*/


-- Une las tablas [users] y [companies] mostrando todas las columnas (*)
-- solo para los registros donde coinciden los company_id.
SELECT *
FROM users u
JOIN companies c
ON u.company_id = c.company_id;

/*
Notas importantes:
- JOIN (sin especificar) equivale a INNER JOIN.
- INNER JOIN devuelve solo los registros que tienen coincidencia en ambas tablas.
- ON indica la condición de unión: u.company_id = c.company_id.
- Si un usuario tiene company_id NULL o no existe esa empresa, el usuario NO aparece.
- Usar alias (u y c) hace la consulta más corta y clara.
*/


-- Une las tablas [companies] y [users] mostrando todas las columnas (*)
-- solo para los registros donde coinciden los company_id.
SELECT *
FROM companies c
JOIN users u
ON u.company_id = c.company_id;

/*
Notas importantes:
- JOIN (sin especificar) equivale a INNER JOIN.
- INNER JOIN devuelve solo las empresas que tienen al menos un usuario asociado.
- Una empresa sin usuarios NO aparecerá.
- Si una empresa tiene varios usuarios, la empresa aparecerá repetida
  una vez por cada usuario.
- ON define la relación: u.company_id = c.company_id.
*/


-- Devuelve el nombre de la empresa y el nombre del usuario,
-- uniendo las tablas [companies] y [users] mediante company_id,
-- y renombra las columnas en el resultado con alias descriptivos.
SELECT c.name AS company_name,
       u.name AS user_name
FROM companies c
JOIN users u
ON u.company_id = c.company_id;

/*
Notas importantes:
- JOIN (sin especificar) equivale a INNER JOIN.
- INNER JOIN muestra solo registros con coincidencia en ambas tablas.
- ON define la relación: u.company_id = c.company_id.
- AS permite renombrar columnas en el resultado:
  - c.name -> company_name
  - u.name -> user_name
- Los alias de tabla (c y u) hacen la consulta más corta y evitan ambigüedades.
*/


-- Une la tabla puente [users_languages] con la tabla [users]
-- para obtener los datos del usuario asociados a cada relación usuario-idioma.
SELECT *
FROM users_languages ul
JOIN users u
ON ul.user_id = u.user_id;

/*
Notas importantes:
- users_languages es una tabla intermedia (relación muchos-a-muchos).
- JOIN (sin especificar) equivale a INNER JOIN.
- INNER JOIN devuelve solo filas donde hay coincidencia.
- ON indica la relación entre tablas:
  ul.user_id (tabla puente) = u.user_id (tabla users).
- Los alias (ul y u) se usan para:
  - escribir menos
  - mejorar legibilidad
  - evitar ambigüedad
*/


-- Devuelve el nombre del usuario y el nombre del idioma
-- uniendo:
-- 1) users_languages (tabla puente)
-- 2) users
-- 3) languages
SELECT u.name AS users,
       l.name AS languages
FROM users_languages ul
JOIN users u
ON ul.user_id = u.user_id
JOIN languages l
ON ul.language_id = l.language_id;

/*
Notas importantes:
- users_languages es una tabla intermedia para una relación muchos-a-muchos.
- Se realizan dos JOIN:
  1) ul.user_id = u.user_id (relación usuario)
  2) ul.language_id = l.language_id (relación idioma)
- JOIN (sin especificar) equivale a INNER JOIN:
  solo devuelve registros que existen en ambas tablas.
- AS renombra columnas en el resultado:
  u.name -> users
  l.name -> languages
*/
