/*
4:52:15 | - 17.4 UNION
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=17535s
*/


-- Simula un FULL OUTER JOIN entre [users] y [dni] usando:
-- 1) LEFT JOIN  -> conserva todos los users
-- 2) RIGHT JOIN -> conserva todos los dni
-- + UNION ALL para unir ambos resultados sin perder filas
-- + WHERE users.user_id IS NULL para quedarnos solo con los dni sin usuario
--   en la parte del RIGHT JOIN (evita duplicados).
SELECT users.user_id AS u_user_id,
       dni.user_id   AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id

UNION ALL

SELECT users.user_id AS u_user_id,
       dni.user_id   AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id
WHERE users.user_id IS NULL;

/*
Notas importantes:
- MySQL no implementa FULL OUTER JOIN directamente.
- Esta técnica (LEFT JOIN + RIGHT JOIN + UNION ALL) permite obtener:
  - usuarios con dni
  - usuarios sin dni (d_user_id será NULL)
  - dni sin usuario (u_user_id será NULL)
- UNION ALL mantiene todas las filas (no elimina duplicados).
- El WHERE users.user_id IS NULL en el segundo SELECT evita repetir
  las coincidencias que ya salieron en el LEFT JOIN.
*/
