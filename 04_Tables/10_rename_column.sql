/*
3:30:23 | - 13.11 RENAME COLUMN
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=12623s
*/


-- Modifica la estructura de la tabla [persons8]
-- renombrando la columna [surname] a [description].
ALTER TABLE persons8
RENAME COLUMN surname TO description;

/*
Notas importantes:
- ALTER TABLE se usa para modificar tablas.
- RENAME COLUMN cambia el nombre de una columna existente.
- No cambia los datos, solo el nombre de la columna.
- Si la columna surname no existe, dará error.
*/
