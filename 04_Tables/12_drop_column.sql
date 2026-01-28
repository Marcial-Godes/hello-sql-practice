/*
3:31:51 | - 13.13 DROP COLUMN
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=12711s
*/


-- Modifica la estructura de la tabla [persons8]
-- eliminando la columna [description].
ALTER TABLE persons8
DROP COLUMN description;

/*
Notas importantes:
- DROP COLUMN elimina completamente la columna (estructura + datos).
- Es irreversible (salvo copias de seguridad).
- Si la columna no existe, dará error.
*/

-- Apunte de viejo oficio
-- Antes de borrar una columna, conviene comprobar que realmente existe y que no se usa:
DESCRIBE persons8;
