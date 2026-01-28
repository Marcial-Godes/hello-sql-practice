/*
5:16:01 | - 18.2 TRIGGER
    https://www.youtube.com/watch?v=OuJerKzV5T0&t=18961s
*/


-- Trigger: guarda el email anterior en [email_history] cuando el email cambia.
-- Versión robusta: funciona aunque OLD.email o NEW.email sean NULL.

DELIMITER //

CREATE TRIGGER tg_email
AFTER UPDATE
ON users
FOR EACH ROW
BEGIN
    -- <=> es el "igual seguro con NULL" en MySQL:
    -- devuelve TRUE si ambos son iguales o ambos son NULL.
    -- Por eso usamos NOT(...) para detectar cambio real.
    IF NOT (OLD.email <=> NEW.email) THEN
        INSERT INTO email_history (user_id, email)
        VALUES (OLD.user_id, OLD.email);
    END IF;
END//

DELIMITER ;

/*
Notas importantes:
- OLD.email = valor antes del UPDATE.
- NEW.email = valor después del UPDATE.
- IF NOT (OLD.email <=> NEW.email) detecta cambios reales incluso con NULL.
- Si OLD.email era NULL y NEW.email no, se considera cambio (y viceversa).
- La tabla [email_history] debe existir antes de crear el trigger.
*/


-- Elimina (borra) el trigger llamado [tg_email].
DROP TRIGGER tg_email;

/*
Notas importantes:
- DROP TRIGGER elimina el trigger de la base de datos.
- No elimina tablas ni datos.
- Si el trigger no existe, MySQL dará error.
*/


-- Variante segura (recomendada)
DROP TRIGGER IF EXISTS tg_email;