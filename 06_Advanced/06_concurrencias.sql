/*
5:45:00 | - 18.6 CONCURRENCIA
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=20700s
*/


-- CONCURRENCIA en bases de datos
-- Ocurre cuando VARIAS transacciones acceden a los mismos datos
-- al mismo tiempo.


-- 1️⃣ ¿Qué es la concurrencia?
/*
La concurrencia aparece cuando:
- Dos o más usuarios
- Ejecutan transacciones
- sobre las mismas tablas o filas
- al mismo tiempo.

El objetivo del motor de la BD es:
- evitar datos corruptos
- mantener coherencia
*/


-- 2️⃣ Problemas clásicos de concurrencia
-- 🔴 Dirty Read (lectura sucia)
/*
Una transacción lee datos que otra transacción
todavía NO ha confirmado (COMMIT).

Si luego hay ROLLBACK,
la lectura fue incorrecta.
*/


-- 🔴 Non-repeatable Read (lectura no repetible)
/*
Una transacción lee un dato,
otra transacción lo modifica y hace COMMIT,
y la primera transacción vuelve a leerlo
y obtiene un valor distinto.
*/

-- 
🔴 Phantom Read (lecturas fantasma)
/*
Una transacción ejecuta una consulta,
otra transacción inserta nuevas filas,
y al repetir la consulta aparecen filas nuevas.
*/


-- 3️⃣ Niveles de aislamiento (ISOLATION LEVEL)
-- Nivel más bajo: más concurrencia, menos seguridad
-- Nivel más alto: menos concurrencia, más seguridad


-- 🔹 READ UNCOMMITTED
/*
- Permite Dirty Reads
- Rápido
- Poco seguro
*/


-- 🔹 READ COMMITTED
/*
- Evita Dirty Reads
- Permite Non-repeatable Reads
*/


-- 🔹 REPEATABLE READ (por defecto en MySQL)
/*
- Evita Dirty Reads
- Evita Non-repeatable Reads
- Puede permitir Phantom Reads
*/


-- 🔹 SERIALIZABLE
/*
- Máxima seguridad
- Evita todos los problemas
- Más bloqueos
- Más lento
*/


-- 4️⃣ Ver y cambiar el nivel de aislamiento
-- Ver nivel actual
SELECT @@transaction_isolation;

-- Cambiar nivel de aislamiento
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;


-----------------------------------------------------------

-- 5️⃣ Bloqueos (LOCKS)
-- 🔒 Bloqueo de lectura
-- Bloquea las filas leídas para evitar cambios
SELECT *
FROM users
WHERE user_id = 5
FOR SHARE;


-- 🔒 Bloqueo de escritura
-- Bloquea las filas para lectura y escritura
SELECT *
FROM users
WHERE user_id = 5
FOR UPDATE;
/*
FOR UPDATE:
- Nadie más puede modificar esas filas
- Se usa antes de UPDATEs críticos
*/


-----------------------------------------------------------

-- 6️⃣ Concurrencia + Transacciones (ejemplo real)
START TRANSACTION;

SELECT *
FROM users
WHERE user_id = 5
FOR UPDATE;

UPDATE users
SET age = age + 1
WHERE user_id = 5;

COMMIT;
/*
Garantiza que:
- Nadie más toca ese usuario
- No hay inconsistencias
*/


-----------------------------------------------------------

-- 7️⃣ Deadlock (bloqueo mutuo)
/*
Ocurre cuando:
- Transacción A bloquea fila 1 y espera fila 2
- Transacción B bloquea fila 2 y espera fila 1

MySQL detecta el deadlock
y cancela una transacción automáticamente.
*/


-----------------------------------------------------------

-- Apunte de viejo oficio (muy importante)
-- Más concurrencia  = más riesgo
-- Más aislamiento   = menos rendimiento
