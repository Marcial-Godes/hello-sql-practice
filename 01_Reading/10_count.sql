/*
2:14:02 | - 10.4 COUNT
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=8042s
*/


-- Devuelve el número de registros de la tabla [users]
-- cuyo valor en la columna [age] NO sea NULL.
SELECT COUNT(age) FROM users;

/*
Notas importantes:
- COUNT(age) cuenta solo las filas donde age tiene un valor.
- Los valores NULL se ignoran.
- Devuelve un único número.
- No cuenta usuarios, cuenta valores no NULL de age.
*/

-- Devuelve el número total de registros (filas)
-- existentes en la tabla [users].
SELECT COUNT(*) FROM users;

/*
Notas importantes:
- COUNT(*) cuenta todas las filas de la tabla.
- Incluye filas con valores NULL en cualquier columna.
- Devuelve un único número.
- No depende de ninguna columna concreta.
*/
