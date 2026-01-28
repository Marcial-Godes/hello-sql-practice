/*
2:57:00 | - 11.2 UPDATE
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=10620s
*/


-- Actualiza el valor de la columna [age] a 21
-- para el registro de la tabla [users] cuyo [user_id] sea 11.
UPDATE users
SET age = 21
WHERE user_id = 11;

/*
Notas importantes:
- UPDATE se usa para modificar registros existentes.
- SET indica la columna y el nuevo valor.
- WHERE es crucial: sin él se actualizarían TODAS las filas.
- El cambio afecta solo a los registros que cumplen la condición.
*/


-- Actualiza los valores de las columnas [age] e [init_date]
-- para el registro de la tabla [users] cuyo [user_id] sea 11.
UPDATE users
SET age = 20,
    init_date = '2020-10-12'
WHERE user_id = 11;

/*
Notas importantes:
- UPDATE modifica registros ya existentes.
- SET permite actualizar una o varias columnas a la vez.
- Las columnas se separan por comas.
- WHERE limita la actualización a los registros que cumplen la condición.
*/
