# PASOS:
## Paso 1: Creación de la BBDD
* Creamos con el siguente contenido el fichero empleados-dump.sql.
```sql
CREATE TABLE empleados (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT,
    salario REAL,
    departamento TEXT
);

INSERT INTO empleados (nombre, salario, departamento) VALUES ('Juan', 50000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('María', 60000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Carlos', 55000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Ana', 48000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Pedro', 70000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Laura', 52000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Javier', 48000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Carmen', 65000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Miguel', 51000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Elena', 55000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Diego', 72000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Sofía', 49000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Andrés', 60000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Isabel', 53000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Raúl', 68000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Patricia', 47000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Alejandro', 71000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Natalia', 54000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Roberto', 49000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Beatriz', 63000, 'TI');
```

## Paso 2 Lectura del fichero sql.
Entra en sqlite a través del siguiente comando:

```sql
sqlite3 tarea3.db 
```

## Paso 3: Realización de consultas

1. Funciones UPPER y LOWER: Muestra el nombre de todos los empleados en mayúsculas.
```sql
SELECT nombre, UPPER(nombre) AS nombre_mayusculas FROM empleados;
+-----------+-------------------+
|  nombre   | nombre_mayusculas |
+-----------+-------------------+
| Juan      | JUAN              |
| María     | MARÍA             |
| Carlos    | CARLOS            |
| Ana       | ANA               |
| Pedro     | PEDRO             |
| Laura     | LAURA             |
| Javier    | JAVIER            |
| Carmen    | CARMEN            |
| Miguel    | MIGUEL            |
| Elena     | ELENA             |
| Diego     | DIEGO             |
| Sofía     | SOFÍA             |
| Andrés    | ANDRÉS            |
| Isabel    | ISABEL            |
| Raúl      | RAÚL              |
| Patricia  | PATRICIA          |
| Alejandro | ALEJANDRO         |
| Natalia   | NATALIA           |
| Roberto   | ROBERTO           |
| Beatriz   | BEATRIZ           |
+-----------+-------------------+
```

2. Funciones Numéricas: Calcula el valor absoluto del salario de todos los empleados.
```sql
SELECT nombre, ABS(salario) AS salario_absoluto FROM empleados;
+-----------+------------------+
|  nombre   | salario_absoluto |
+-----------+------------------+
| Juan      | 50000.0          |
| María     | 60000.0          |
| Carlos    | 55000.0          |
| Ana       | 48000.0          |
| Pedro     | 70000.0          |
| Laura     | 52000.0          |
| Javier    | 48000.0          |
| Carmen    | 65000.0          |
| Miguel    | 51000.0          |
| Elena     | 55000.0          |
| Diego     | 72000.0          |
| Sofía     | 49000.0          |
| Andrés    | 60000.0          |
| Isabel    | 53000.0          |
| Raúl      | 68000.0          |
| Patricia  | 47000.0          |
| Alejandro | 71000.0          |
| Natalia   | 54000.0          |
| Roberto   | 49000.0          |
| Beatriz   | 63000.0          |
+-----------+------------------+
```

3. Funciones de Fecha y Hora: Muestra la fecha actual.
```sql
SELECT CURRENT_DATE AS fecha_actual FROM empleados LIMIT 1;
+--------------+
| fecha_actual |
+--------------+
| 2024-01-17   |
+--------------+
```

4. Funciones de Agregación: Calcula el promedio de salarios de todos los empleados. Convierte la cadena '123' a un valor entero.
```sql
SELECT AVG(salario) AS salario_promedio FROM empleados;
+------------------+
| salario_promedio |
+------------------+
| 57000.0          |
+------------------+
```
 5. Funciones de Manipulación de Cadenas: Concatena el nombre y el departamento de cada empleado.
 ```sql
 SELECT nombre || ' - ' || departamento AS nombre_y_departamento FROM empleados;
+-----------------------------+
|    nombre_y_departamento    |
+-----------------------------+
| Juan - Ventas               |
| María - TI                  |
| Carlos - Ventas             |
| Ana - Recursos Humanos      |
| Pedro - TI                  |
| Laura - Ventas              |
| Javier - Recursos Humanos   |
| Carmen - TI                 |
| Miguel - Ventas             |
| Elena - Recursos Humanos    |
| Diego - TI                  |
| Sofía - Ventas              |
| Andrés - Recursos Humanos   |
| Isabel - TI                 |
| Raúl - Ventas               |
| Patricia - Recursos Humanos |
| Alejandro - TI              |
| Natalia - Ventas            |
| Roberto - Recursos Humanos  |
| Beatriz - TI                |
+-----------------------------+
 ```

6. Funciones de Manipulación de Cadenas (CONCAT_WS): Concatena el nombre y el departamento de cada empleado con un guion como separador
 ```sql
 SELECT nombre || ' - ' || departamento AS nombre_y_departamento FROM empleados;
+-----------------------------+
|    nombre_y_departamento    |
+-----------------------------+
| Juan - Ventas               |
| María - TI                  |
| Carlos - Ventas             |
| Ana - Recursos Humanos      |
| Pedro - TI                  |
| Laura - Ventas              |
| Javier - Recursos Humanos   |
| Carmen - TI                 |
| Miguel - Ventas             |
| Elena - Recursos Humanos    |
| Diego - TI                  |
| Sofía - Ventas              |
| Andrés - Recursos Humanos   |
| Isabel - TI                 |
| Raúl - Ventas               |
| Patricia - Recursos Humanos |
| Alejandro - TI              |
| Natalia - Ventas            |
| Roberto - Recursos Humanos  |
| Beatriz - TI                |
+-----------------------------+
 ```

 7. Funciones de Control de Flujo (CASE): Categoriza a los empleados según sus salarios.
 ```sql
 SELECT nombre, salario,
CASE 
    WHEN salario <= 50000 THEN 'Salario Bajo'
    WHEN salario > 50000 AND salario <= 60000 THEN 'Salario Medio'
    WHEN salario > 60000 THEN 'Salario Alto'
END as 'Categoría de Salario'
FROM empleados;
+-----------+---------+----------------------+
|  nombre   | salario | Categoría de Salario |
+-----------+---------+----------------------+
| Juan      | 50000.0 | Salario Bajo         |
| María     | 60000.0 | Salario Medio        |
| Carlos    | 55000.0 | Salario Medio        |
| Ana       | 48000.0 | Salario Bajo         |
| Pedro     | 70000.0 | Salario Alto         |
| Laura     | 52000.0 | Salario Medio        |
| Javier    | 48000.0 | Salario Bajo         |
| Carmen    | 65000.0 | Salario Alto         |
| Miguel    | 51000.0 | Salario Medio        |
| Elena     | 55000.0 | Salario Medio        |
| Diego     | 72000.0 | Salario Alto         |
| Sofía     | 49000.0 | Salario Bajo         |
| Andrés    | 60000.0 | Salario Medio        |
| Isabel    | 53000.0 | Salario Medio        |
| Raúl      | 68000.0 | Salario Alto         |
| Patricia  | 47000.0 | Salario Bajo         |
| Alejandro | 71000.0 | Salario Alto         |
| Natalia   | 54000.0 | Salario Medio        |
| Roberto   | 49000.0 | Salario Bajo         |
| Beatriz   | 63000.0 | Salario Alto         |
+-----------+---------+----------------------+
 ```

8. Funciones de Agregación (SUM): Calcula la suma total de salarios de todos los empleados.
```sql
SELECT SUM(salario) as 'Suma Total de Salarios'
FROM empleados;
+------------------------+
| Suma Total de Salarios |
+------------------------+
| 2280000.0              |
+------------------------+
```

9. Funciones Numéricas (ROUND): Redondea el salario de todos los empleados a dos decimales.
```sql
SELECT nombre, ROUND(salario, 2) as 'Salario Redondeado'
FROM empleados;
+-----------+--------------------+
|  nombre   | Salario Redondeado |
+-----------+--------------------+
| Juan      | 50000.0            |
| María     | 60000.0            |
| Carlos    | 55000.0            |
| Ana       | 48000.0            |
| Pedro     | 70000.0            |
| Laura     | 52000.0            |
| Javier    | 48000.0            |
| Carmen    | 65000.0            |
| Miguel    | 51000.0            |
| Elena     | 55000.0            |
| Diego     | 72000.0            |
| Sofía     | 49000.0            |
| Andrés    | 60000.0            |
| Isabel    | 53000.0            |
| Raúl      | 68000.0            |
| Patricia  | 47000.0            |
| Alejandro | 71000.0            |
| Natalia   | 54000.0            |
| Roberto   | 49000.0            |
| Beatriz   | 63000.0            |
+-----------+--------------------+
```

10. Funciones de Manipulación de Cadenas (LENGTH): Muestra la longitud de cada nombre de empleado.
```sql
SELECT nombre, LENGTH(nombre) AS longitud_nombre
FROM empleados;
+-----------+-----------------+
|  nombre   | longitud_nombre |
+-----------+-----------------+
| Juan      | 4               |
| María     | 5               |
| Carlos    | 6               |
| Ana       | 3               |
| Pedro     | 5               |
| Laura     | 5               |
| Javier    | 6               |
| Carmen    | 6               |
| Miguel    | 6               |
| Elena     | 5               |
| Diego     | 5               |
| Sofía     | 5               |
| Andrés    | 6               |
| Isabel    | 6               |
| Raúl      | 4               |
| Patricia  | 8               |
| Alejandro | 9               |
| Natalia   | 7               |
| Roberto   | 7               |
| Beatriz   | 7               |
+-----------+-----------------+
```

11. Funciones de Agregación (COUNT): Cuenta el número total de empleados en cada departamento.
```sql
SELECT departamento, COUNT(*) AS numero_empleados
FROM empleados
GROUP BY departamento;
+------------------+------------------+
|   departamento   | numero_empleados |
+------------------+------------------+
| Recursos Humanos | 12               |
| TI               | 14               |
| Ventas           | 14               |
+------------------+------------------+
```

12. Funciones de Agregación (COUNT): Cuenta el número total de empleados en cada departamento. 
```sql 
SELECT departamento, COUNT(*) AS numero_empleados
FROM empleados
GROUP BY departamento;
+------------------+------------------+
|   departamento   | numero_empleados |
+------------------+------------------+
| Recursos Humanos | 12               |
| TI               | 14               |
| Ventas           | 14               |
+------------------+------------------+
```

13. Funciones de Fecha y Hora (CURRENT_TIME): Muestra la hora actual.
```sql
SELECT CURRENT_TIME as HORA_ACTUAL FROM empleados LIMIT 1;
+-------------+
| HORA_ACTUAL |
+-------------+
| 23:02:42    |
+-------------+
```

14. Funciones de Conversión (CAST): Convierte el salario a un valor de punto flotante.
```sql
SELECT CAST(salario AS REAL) AS salario_decimal FROM empleados ;
┌─────────────────┐
│ salario_decimal │
├─────────────────┤
│ 50000.0         │
│ 60000.0         │
│ 55000.0         │
│ 48000.0         │
│ 70000.0         │
│ 52000.0         │
│ 48000.0         │
│ 65000.0         │
│ 51000.0         │
│ 55000.0         │
│ 72000.0         │
│ 49000.0         │
│ 60000.0         │
│ 53000.0         │
│ 68000.0         │
│ 47000.0         │
│ 71000.0         │
│ 54000.0         │
│ 49000.0         │
│ 63000.0         │
└─────────────────┘
```

15. Funciones de Manipulación de Cadenas (SUBSTR): Muestra los primeros tres caracteres de cada nombre de empleado. 
```sql
SELECT SUBSTR(nombre ,1,3) AS nombres_manipulados FROM empleados ;
```
```sql
┌─────────────────┐
│ nombre_3letters │
├─────────────────┤
│ Jua             │
│ Mar             │
│ Car             │
│ Ana             │
│ Ped             │
│ Lau             │
│ Jav             │
│ Car             │
│ Mig             │
│ Ele             │
│ Die             │
│ Sof             │
│ And             │
│ Isa             │
│ Raú             │
│ Pat             │
│ Ale             │
│ Nat             │
│ Rob             │
│ Bea             │
└─────────────────┘
```

16. Empleados en el departamento de 'Ventas' con salarios superiores a 52000.
```sql
SELECT * FROM empleados WHERE salario > 52000 ORDER BY salario ;
┌────┬───────────┬─────────┬──────────────────┐
│ id │  nombre   │ salario │   departamento   │
├────┼───────────┼─────────┼──────────────────┤
│ 14 │ Isabel    │ 53000.0 │ TI               │
│ 18 │ Natalia   │ 54000.0 │ Ventas           │
│ 3  │ Carlos    │ 55000.0 │ Ventas           │
│ 10 │ Elena     │ 55000.0 │ Recursos Humanos │
│ 2  │ María     │ 60000.0 │ TI               │
│ 13 │ Andrés    │ 60000.0 │ Recursos Humanos │
│ 20 │ Beatriz   │ 63000.0 │ TI               │
│ 8  │ Carmen    │ 65000.0 │ TI               │
│ 15 │ Raúl      │ 68000.0 │ Ventas           │
│ 5  │ Pedro     │ 70000.0 │ TI               │
│ 17 │ Alejandro │ 71000.0 │ TI               │
│ 11 │ Diego     │ 72000.0 │ TI               │
└────┴───────────┴─────────┴──────────────────┘
```

17. Empleados cuyos nombres contienen la letra 'a' y tienen salarios ordenados de manera ascendente.
```sql
SELECT * FROM empleados WHERE nombre LIKE '%a%' ORDER BY salario ASC;
┌────┬───────────┬─────────┬──────────────────┐
│ id │  nombre   │ salario │   departamento   │
├────┼───────────┼─────────┼──────────────────┤
│ 16 │ Patricia  │ 47000.0 │ Recursos Humanos │
│ 4  │ Ana       │ 48000.0 │ Recursos Humanos │
│ 7  │ Javier    │ 48000.0 │ Recursos Humanos │
│ 12 │ Sofía     │ 49000.0 │ Ventas           │
│ 1  │ Juan      │ 50000.0 │ Ventas           │
│ 6  │ Laura     │ 52000.0 │ Ventas           │
│ 14 │ Isabel    │ 53000.0 │ TI               │
│ 18 │ Natalia   │ 54000.0 │ Ventas           │
│ 3  │ Carlos    │ 55000.0 │ Ventas           │
│ 10 │ Elena     │ 55000.0 │ Recursos Humanos │
│ 2  │ María     │ 60000.0 │ TI               │
│ 13 │ Andrés    │ 60000.0 │ Recursos Humanos │
│ 20 │ Beatriz   │ 63000.0 │ TI               │
│ 8  │ Carmen    │ 65000.0 │ TI               │
│ 15 │ Raúl      │ 68000.0 │ Ventas           │
│ 17 │ Alejandro │ 71000.0 │ TI               │
└────┴───────────┴─────────┴──────────────────┘
```

18. Empleados en el departamento 'Recursos Humanos' con salarios entre 45000 y 55000.
```sql
SELECT * FROM empleados WHERE departamento ='Recursos Humanos' AND salario BETWEEN 45000 AND 55000;
┌────┬──────────┬─────────┬──────────────────┐
│ id │  nombre  │ salario │   departamento   │
├────┼──────────┼─────────┼──────────────────┤
│ 4  │ Ana      │ 48000.0 │ Recursos Humanos │
│ 7  │ Javier   │ 48000.0 │ Recursos Humanos │
│ 10 │ Elena    │ 55000.0 │ Recursos Humanos │
│ 16 │ Patricia │ 47000.0 │ Recursos Humanos │
│ 19 │ Roberto  │ 49000.0 │ Recursos Humanos │
└────┴──────────┴─────────┴──────────────────┘
```

19. Empleados con salarios en orden descendente, limitando a los primeros 5 resultados.
```sql
SELECT * FROM empleados ORDER BY salario DESC LIMIT 5;
┌────┬───────────┬─────────┬──────────────┐
│ id │  nombre   │ salario │ departamento │
├────┼───────────┼─────────┼──────────────┤
│ 11 │ Diego     │ 72000.0 │ TI           │
│ 17 │ Alejandro │ 71000.0 │ TI           │
│ 5  │ Pedro     │ 70000.0 │ TI           │
│ 15 │ Raúl      │ 68000.0 │ Ventas       │
│ 8  │ Carmen    │ 65000.0 │ TI           │
└────┴───────────┴─────────┴──────────────┘
```

20. Empleados cuyos nombres comienzan con 'M' o 'N' y tienen salarios superiores a 50000.
```sql
SELECT * FROM empleados WHERE nombre LIKE 'n%' OR nombre LIKE 'm%' AND 
salario>50000;
┌────┬─────────┬─────────┬──────────────┐
│ id │ nombre  │ salario │ departamento │
├────┼─────────┼─────────┼──────────────┤
│ 2  │ María   │ 60000.0 │ TI           │
│ 9  │ Miguel  │ 51000.0 │ Ventas       │
│ 18 │ Natalia │ 54000.0 │ Ventas       │
└────┴─────────┴─────────┴──────────────┘
```

21. Empleados en el departamento 'TI' o 'Ventas' ordenados alfabéticamente por nombre.
```sql
SELECT * FROM empleados WHERE departamento = 'TI' ORDER BY nombre ;
┌────┬───────────┬─────────┬──────────────┐
│ id │  nombre   │ salario │ departamento │
├────┼───────────┼─────────┼──────────────┤
│ 17 │ Alejandro │ 71000.0 │ TI           │
│ 20 │ Beatriz   │ 63000.0 │ TI           │
│ 8  │ Carmen    │ 65000.0 │ TI           │
│ 11 │ Diego     │ 72000.0 │ TI           │
│ 14 │ Isabel    │ 53000.0 │ TI           │
│ 2  │ María     │ 60000.0 │ TI           │
│ 5  │ Pedro     │ 70000.0 │ TI           │
└────┴───────────┴─────────┴──────────────┘
```

22. Empleados con salarios únicos (eliminando duplicados) en orden ascendente
```sql
SELECT DISTINCT salario FROM empleados ORDER BY salario DESC;
┌─────────┐
│ salario │
├─────────┤
│ 72000.0 │
│ 71000.0 │
│ 70000.0 │
│ 68000.0 │
│ 65000.0 │
│ 63000.0 │
│ 60000.0 │
│ 55000.0 │
│ 54000.0 │
│ 53000.0 │
│ 52000.0 │
│ 51000.0 │
│ 50000.0 │
│ 49000.0 │
│ 48000.0 │
│ 47000.0 │
└─────────┘
```

23. Empleados cuyos nombres terminan con 'o' o 'a' y están en el departamento 'Ventas'.
```sql
 SELECT * FROM empleados WHERE nombre LIKE '%o' OR nombre LIKE '%a' AND departamento = 'Ventas';
┌────┬───────────┬─────────┬──────────────────┐
│ id │  nombre   │ salario │   departamento   │
├────┼───────────┼─────────┼──────────────────┤
│ 5  │ Pedro     │ 70000.0 │ TI               │
│ 6  │ Laura     │ 52000.0 │ Ventas           │
│ 11 │ Diego     │ 72000.0 │ TI               │
│ 12 │ Sofía     │ 49000.0 │ Ventas           │
│ 17 │ Alejandro │ 71000.0 │ TI               │
│ 18 │ Natalia   │ 54000.0 │ Ventas           │
│ 19 │ Roberto   │ 49000.0 │ Recursos Humanos │
└────┴───────────┴─────────┴──────────────────┘
```

24. Empleados con salarios fuera del rango de 55000 a 70000, ordenados por departamento.
```sql
SELECT * FROM empleados WHERE salario NOT BETWEEN 55000 AND 70000 ORDER BY departamento ;
┌────┬───────────┬─────────┬──────────────────┐
│ id │  nombre   │ salario │   departamento   │
├────┼───────────┼─────────┼──────────────────┤
│ 4  │ Ana       │ 48000.0 │ Recursos Humanos │
│ 7  │ Javier    │ 48000.0 │ Recursos Humanos │
│ 16 │ Patricia  │ 47000.0 │ Recursos Humanos │
│ 19 │ Roberto   │ 49000.0 │ Recursos Humanos │
│ 11 │ Diego     │ 72000.0 │ TI               │
│ 14 │ Isabel    │ 53000.0 │ TI               │
│ 17 │ Alejandro │ 71000.0 │ TI               │
│ 1  │ Juan      │ 50000.0 │ Ventas           │
│ 6  │ Laura     │ 52000.0 │ Ventas           │
│ 9  │ Miguel    │ 51000.0 │ Ventas           │
│ 12 │ Sofía     │ 49000.0 │ Ventas           │
│ 18 │ Natalia   │ 54000.0 │ Ventas           │
└────┴───────────┴─────────┴──────────────────┘
```

25. Empleados en el departamento 'Recursos Humanos' con nombres que no contienen la letra 'e'.
```sql
SELECT * FROM empleados WHERE nombre NOT LIKE '%e%';
┌────┬──────────┬─────────┬──────────────────┐
│ id │  nombre  │ salario │   departamento   │
├────┼──────────┼─────────┼──────────────────┤
│ 1  │ Juan     │ 50000.0 │ Ventas           │
│ 2  │ María    │ 60000.0 │ TI               │
│ 3  │ Carlos   │ 55000.0 │ Ventas           │
│ 4  │ Ana      │ 48000.0 │ Recursos Humanos │
│ 6  │ Laura    │ 52000.0 │ Ventas           │
│ 12 │ Sofía    │ 49000.0 │ Ventas           │
│ 13 │ Andrés   │ 60000.0 │ Recursos Humanos │
│ 15 │ Raúl     │ 68000.0 │ Ventas           │
│ 16 │ Patricia │ 47000.0 │ Recursos Humanos │
│ 18 │ Natalia  │ 54000.0 │ Ventas           │
└────┴──────────┴─────────┴──────────────────┘
```