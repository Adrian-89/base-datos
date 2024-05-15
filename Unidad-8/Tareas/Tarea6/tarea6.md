# Trabajo con procedimientos de generación de información

## Dado el procedimiento base:

```sql
DELIMITER //

CREATE PROCEDURE my_loop(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        -- Coloca aquí el código que deseas ejecutar en cada iteración del bucle
        -- Por ejemplo, puedes imprimir el valor del contador
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

-- Llama al procedimiento 
CALL my_loop(5);
```

### 1. Inserta cinco filas en la tabla empleados con nombres aleatorios generados usando la función CONCAT() junto con RAND().
```sql
  INSERT INTO empleados (nombre, salario)
  VALUES (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
        (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
        (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
        (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
        (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
---------------------------------------------------------------------------
DELIMITER //

CREATE PROCEDURE loop_1(IN iterations INT, IN empl_nombre VARCHAR(100))
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE empl_salario INT;

    SET empl_salario = 2000;
    WHILE counter < iterations DO
        -- Coloca aquí el código que deseas ejecutar en cada iteración del bucle
        -- Por ejemplo, puedes imprimir el valor del contador
        INSERT INTO empleados (nombre, salario)
        VALUES (CONCAT(empl_nombre, RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + empl_salario);
        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

--Realizamos el CALL
mysql> CALL loop_1(2, 'Laura');
Query OK, 1 row affected (0,02 sec)

mysql> SELECT * FROM empleados;
+----+--------------------------+---------+
| id | nombre                   | salario |
+----+--------------------------+---------+
|  1 | Juan                     | 3000.00 |
|  2 | María                    | 3500.00 |
|  3 | Pedro                    | 3200.00 |
|  4 | Laura0.6863395661919747  | 2334.00 |
|  5 | Laura0.15021970323307413 | 7005.00 |
+----+--------------------------+---------+
5 rows in set (0,00 sec)
```

### 2. Inserta tres filas en la tabla empleados con nombres aleatorios generados usando la función UUID().
```sql
INSERT INTO empleados (nombre, salario)
VALUES (UUID(), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
      (UUID(), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
      (UUID(), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
---------------------------------------------------------------------------
DELIMITER //

CREATE PROCEDURE loop_2(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE empl_nombre VARCHAR(100);
    DECLARE empl_salario INT;

    SET empl_salario = 2000;
    WHILE counter < iterations DO
        -- Coloca aquí el código que deseas ejecutar en cada iteración del bucle
        -- Por ejemplo, puedes imprimir el valor del contador
        SELECT UUID() into empl_nombre;

        INSERT INTO empleados (nombre, salario)
        VALUES (empl_nombre, FLOOR(RAND() * (10000 - 2000 + 1)) + empl_salario);

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

-- Realizamos el CALL

mysql> call loop_2(4);
Query OK, 1 row affected (0,02 sec)

mysql> select * from empleados;
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3000.00 |
|  2 | María                                | 3500.00 |
|  3 | Pedro                                | 3200.00 |
|  4 | Laura0.6863395661919747              | 2334.00 |
|  5 | Laura0.15021970323307413             | 7005.00 |
|  6 | 14ebbcb2-12ea-11ef-894d-08002749d432 | 7417.00 |
|  7 | 14ecfcf7-12ea-11ef-894d-08002749d432 | 6071.00 |
|  8 | 14edb3f5-12ea-11ef-894d-08002749d432 | 6106.00 |
|  9 | 14ee3021-12ea-11ef-894d-08002749d432 | 2316.00 |
+----+--------------------------------------+---------+
9 rows in set (0,00 sec)
```

### 3. Inserta dos filas en la tabla empleados con nombres aleatorios generados usando la función RAND() junto con ORDER BY RAND().
```sql
INSERT INTO empleados (nombre, salario)
SELECT CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000
FROM (SELECT 1 UNION SELECT 2) AS sub
ORDER BY RAND()
LIMIT 2;
---------------------------------------------------------------------------

```

### 4. Inserta cuatro filas en la tabla empleados con nombres aleatorios generados usando la función SUBSTRING_INDEX(UUID(), '-', -1).
```sql
INSERT INTO empleados (nombre, salario)
VALUES (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
      (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
      (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
      (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
---------------------------------------------------------------------------

```

### 5. Inserta seis filas en la tabla empleados con nombres aleatorios generados usando la función RAND() y una semilla diferente.
```sql
INSERT INTO empleados (nombre, salario)
VALUES (CONCAT('Empleado', RAND(1)), FLOOR(RAND(1) * (10000 - 2000 + 1)) + 2000),
      (CONCAT('Empleado', RAND(2)), FLOOR(RAND(2) * (10000 - 2000 + 1)) + 2000),
      (CONCAT('Empleado', RAND(3)), FLOOR(RAND(3) * (10000 - 2000 + 1)) + 2000),
      (CONCAT('Empleado', RAND(4)), FLOOR(RAND(4) * (10000 - 2000 + 1)) + 2000),
      (CONCAT('Empleado', RAND(5)), FLOOR(RAND(5) * (10000 - 2000 + 1)) + 2000),
      (CONCAT('Empleado', RAND(6)), FLOOR(RAND(6) * (10000 - 2000 + 1)) + 2000);
---------------------------------------------------------------------------

```


  