# Trabajo con cursores la BBDD Empleados
## Creamos bbdd
```sql
-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS empresa;
USE empresa;

-- Crear la tabla empleados
CREATE TABLE empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    salario DECIMAL(10, 2)
);

-- Insertar algunos datos de ejemplo
INSERT INTO empleados (nombre, salario) VALUES
('Juan', 3000.00),
('María', 3500.00),
('Pedro', 3200.00);
```

## Procedimiento 1
### Escribe un procedimiento almacenado que aumente los salarios de todos los empleados en un 5%, pero excluya a aquellos cuyo salario sea superior a 3200. El procedimiento debe tener parámetros de entrada.
```sql
 DROP PROCEDURE IF EXISTS aumentar_salarios;

  DELIMITER //
  CREATE PROCEDURE aumentar_salarios(IN porcentaje DECIMAL(5,2), limite DECIMAL(10,2))
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_id INT;
      DECLARE emp_nombre VARCHAR(100);
      DECLARE emp_salario DECIMAL(10, 2);
      DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_id, emp_nombre, emp_salario;
          IF done THEN
              LEAVE read_loop;
          END IF;
          UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE salario > limite;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;

CALL aumentar_salarios(0.05, 3200);
Query OK, 0 rows affected (0,04 sec)
mysql> SELECT * FROM empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3000.00 |
|  2 | María  | 3505.25 |
|  3 | Pedro  | 3365.04 |
+----+--------+---------+
  ```