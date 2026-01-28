/*
2:52:49 | - 11.1 INSERT
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=10369s
*/


-- Inserta un nuevo registro en la tabla [users]
-- asignando valores explícitos a las columnas [user_id], [name] y [surname].
INSERT INTO users (user_id, name, surname)
VALUES (8, 'Maria', 'López');

/*
Notas importantes:
- INSERT INTO se usa para añadir nuevas filas a una tabla.
- El orden de los valores debe coincidir con el orden de las columnas.
- Solo se insertan las columnas indicadas; el resto quedarán con su valor por defecto.
- Si una columna no admite NULL y no tiene valor por defecto, dará error.
*/


-- Inserta un nuevo registro en la tabla [users]
-- asignando valores únicamente a las columnas [name] y [surname].
INSERT INTO users (name, surname)
VALUES ('Paco', 'Pérez');

/*
Notas importantes:
- Solo se insertan las columnas indicadas en el INSERT.
- Las columnas no incluidas tomarán su valor por defecto o NULL.
- Si [user_id] es AUTO_INCREMENT, la base de datos asigna el valor automáticamente.
- El orden de los valores debe coincidir con el de las columnas.
*/


-- Inserta un nuevo registro en la tabla [users]
-- asignando valores explícitos a las columnas [user_id], [name] y [surname].
INSERT INTO users (user_id, name, surname)
VALUES (11, 'El', 'Merma');

/*
Notas importantes:
- Se inserta una nueva fila en la tabla [users].
- El valor de [user_id] se fija manualmente en 11.
- Las columnas no incluidas en el INSERT quedarán en NULL
  o en su valor por defecto.
*/
