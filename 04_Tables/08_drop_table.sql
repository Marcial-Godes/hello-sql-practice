/*
3:26:51 | - 13.8 DROP TABLE
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=12411s
*/

-- Elimina (borra) completamente la tabla [persons8]
-- incluyendo su estructura y todos sus registros.
DROP TABLE persons8;

/*
Notas importantes:
- DROP TABLE borra la tabla entera (estructura + datos).
- Es irreversible (salvo copias de seguridad).
- Si la tabla no existe, dará error.
*/


-- Variante segura (recomendada)
DROP TABLE IF EXISTS persons8;
