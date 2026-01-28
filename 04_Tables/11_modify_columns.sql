/*
3:31:14 | - 13.12 MODIFY COLUMN
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=12674s
*/


-- Modifica la estructura de la tabla [persons8]
-- cambiando el tipo/definición de la columna [description] a VARCHAR(250).
ALTER TABLE persons8
MODIFY COLUMN description VARCHAR(250);

/*
Notas importantes:
- MODIFY COLUMN permite cambiar el tipo de dato o propiedades de una columna.
- Aquí se aumenta la longitud máxima del texto a 250 caracteres.
- No cambia el nombre de la columna, solo su definición.
- Si la columna no existe, dará error.
*/
