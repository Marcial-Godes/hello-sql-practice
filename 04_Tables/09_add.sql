/*
3:29:37 | - 13.10 ADD
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=12577s
*/

-- Modifica la estructura de la tabla [persons8]
-- añadiendo una nueva columna llamada [surname] de tipo VARCHAR(150).
ALTER TABLE persons8
ADD surname VARCHAR(150);

/*
Notas importantes:
- ALTER TABLE se usa para modificar una tabla existente.
- ADD añade una nueva columna.
- Si ya hay registros en la tabla:
  - la nueva columna se crea con NULL por defecto en esas filas
  - salvo que se indique NOT NULL + DEFAULT.
*/
