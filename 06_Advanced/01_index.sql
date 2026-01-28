/*
5:03:38 | - 18.1 INDEX
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=18218s
*/


-- Crea un índice llamado [idx_name] sobre la columna [name] de la tabla [users].
-- Sirve para acelerar consultas que filtren u ordenen por name.
CREATE INDEX idx_name ON users(name);

/*
Notas importantes:
- Un índice es una estructura que mejora la velocidad de búsqueda.
- Mejora consultas como:
  WHERE name = '...'
  WHERE name LIKE 'abc%'
  ORDER BY name
- Los índices ocupan espacio y pueden ralentizar INSERT/UPDATE/DELETE
  porque también deben actualizarse.
*/


-- Crea un índice ÚNICO llamado [idx_name] sobre la columna [name] de la tabla [users].
-- Esto evita que existan dos usuarios con el mismo name.
CREATE UNIQUE INDEX idx_name ON users(name);

/*
Notas importantes:
- UNIQUE INDEX obliga a que los valores de la columna sean únicos.
- Si ya existen nombres repetidos, el índice NO se podrá crear (dará error).
- Mejora el rendimiento en búsquedas y ordenaciones por name.
- Impone una restricción: no permite insertar o actualizar valores duplicados.
*/


-- Crea un índice ÚNICO compuesto llamado [idx_name]
-- sobre las columnas [name] y [surname] de la tabla [users].
-- Impide que existan dos filas con el mismo nombre y apellido a la vez.
CREATE UNIQUE INDEX idx_name ON users(name, surname);

/*
Notas importantes:
- Es un índice compuesto: combina (name, surname).
- UNIQUE significa que la combinación completa debe ser única:
  (name='Ana', surname='López') no puede repetirse.
- Sí se permite:
  (name='Ana', surname='Pérez') porque la combinación es distinta.
- Si ya existen duplicados de esa combinación, el índice no se creará (error).
*/


-- Elimina (borra) el índice llamado [idx_name] de la tabla [users].
DROP INDEX idx_name ON users;

/*
Notas importantes:
- DROP INDEX elimina el índice, no la columna ni los datos.
- Si el índice era UNIQUE, al eliminarlo se dejan de aplicar restricciones
  de unicidad sobre esa(s) columna(s).
- Tras borrarlo, algunas consultas pueden volverse más lentas.
- Si el índice no existe, MySQL dará error.
*/
