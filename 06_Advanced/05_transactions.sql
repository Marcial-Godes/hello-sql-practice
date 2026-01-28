/*
5:41:41 | - 18.5 TRANSACCIONES
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=20501s
*/


-- Inicia una transacción.
-- A partir de aquí, los cambios NO son definitivos hasta hacer COMMIT.
START TRANSACTION;

/*
Notas importantes:
- START TRANSACTION inicia un bloque de trabajo.
- Los INSERT, UPDATE o DELETE posteriores quedan "pendientes".
- Los cambios solo son visibles dentro de la transacción.
*/


-- Confirma definitivamente todos los cambios realizados
-- desde START TRANSACTION.
COMMIT;

/*
Notas importantes:
- COMMIT guarda los cambios de forma permanente.
- Después de COMMIT, no se pueden deshacer los cambios.
- Cierra la transacción actual.
*/


-- Cancela todos los cambios realizados
-- desde START TRANSACTION.
ROLLBACK;

/*
Notas importantes:
- ROLLBACK deshace todos los cambios de la transacción.
- Devuelve la base de datos al estado anterior al START TRANSACTION.
- Cierra la transacción actual.
*/


-- Ejemplo típico (muy real)
START TRANSACTION;

UPDATE users SET age = 30 WHERE user_id = 5;
DELETE FROM dni WHERE user_id = 5;

-- Si todo está bien:
COMMIT;

-- Si algo falla:
ROLLBACK;
