/*
3:48:51 | - 15.2 TABLAS 1:N
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=15202s
*/


-- Añade una clave foránea (FOREIGN KEY) a la tabla [users]
-- para relacionar la columna [company_id] con la columna [company_id]
-- de la tabla [companies].
ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY (company_id) REFERENCES companies(company_id);

/*
Notas importantes:
- ALTER TABLE se usa para modificar la estructura de una tabla existente.
- ADD CONSTRAINT crea una restricción con nombre (fk_companies).
- FOREIGN KEY(company_id) indica la columna que actúa como clave foránea en users.
- REFERENCES companies(company_id) indica la tabla/columna referenciada (clave primaria).

Requisitos para que funcione:
- Ambas columnas deben tener el MISMO tipo de datos.
  Ejemplo válido:
  - users.company_id = INT UNSIGNED
  - companies.company_id = INT UNSIGNED
  Ejemplo inválido (provoca Error 3780):
  - users.company_id = INT UNSIGNED
  - companies.company_id = INT

Qué consigue esta clave foránea:
- No se podrá insertar un users.company_id con un valor que NO exista en companies.company_id.
- Se mantiene la integridad referencial entre ambas tablas.
*/
