# Modifica el ejercicio anterior y añade un nuevo trigger que las siguientes características: Trigger: trigger_guardar_email_after_update:

1. Se ejecuta sobre la tabla alumnos

2. Se ejecuta después de una operación de actualización

3. Cada vez que un alumno modifique su dirección de email se deberá insertar un nuevo registro en una tabla llamada log_cambios_email

## La tabla log_cambios_email contiene los siguientes campos:

1. id: clave primaria (entero autonumérico)

2. id_alumno: id del alumno (entero)

3. fecha_hora: marca de tiempo con el instante del cambio (fecha y hora)

4. old_email: valor anterior del email (cadena de caracteres)

5. new_email: nuevo valor con el que se ha actualizado

```SQL
DELIMITER $$
CREATE TRIGER trigger_guardar_email_after_update
AFTER INSERT ON alumnos
FOR EACH ROW
BEGIN
INSERT INTO log_cambios_email (id_alumno, old_email, new_email) VALUES ()
END$$
DELIMITER ;

```
