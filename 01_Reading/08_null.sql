/*
2:06:54 | - 10.2 NULL
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=7614s
*/


-- Devuelve todas las columnas de los registros de la tabla [users]
-- cuyo valor en la columna [email] sea NULL.
SELECT * FROM users WHERE email IS NULL;

/*
Notas importantes:
- NULL no es un valor, es la ausencia de valor.
- No se puede comparar NULL con '='.
- Para comprobar NULL se debe usar IS NULL o IS NOT NULL.
*/

-- Devuelve todas las columnas de los registros de la tabla [users]
-- cuyo valor en la columna [email] NO sea NULL.
SELECT * FROM users WHERE email IS NOT NULL;

/*
Notas importantes:
- IS NOT NULL selecciona los registros que sí tienen un valor en la columna.
- Un valor distinto de NULL puede ser una cadena vacía ("").
- NULL y "" no son lo mismo.
- No se puede usar '=' ni '!=' para comprobar NULL.
*/

-- Devuelve todas las columnas de los registros de la tabla [users]
-- cuyo valor en la columna [email] NO sea NULL
-- y cuyo valor en la columna [age] sea [15].
SELECT * FROM users
WHERE email IS NOT NULL
  AND age = 15;

/*
Notas importantes:
- AND exige que ambas condiciones se cumplan a la vez.
- Primero se descartan los registros con email NULL.
- Después se filtran los usuarios con edad 15.
- NULL nunca se compara con '='.
*/
