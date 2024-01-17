# PASOS:
## Paso 1: Creación de la BBDD

1. Creamos con el siguente contenido el fichero empleados-dump.sql.

``` sql
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

Entramos en sqlite a través del siguiente comando:
```bash
sqlite3 tarea3.db 
```

## Paso 3: Realización de consultas:
1. Funciones UPPER y LOWER: Muestra el nombre de todos los empleados en mayúsculas.

```sql
SELECT nombre, UPPER(nombre) AS nombre_mayusculas FROM empleados
+-----------+-------------------+
|  nombre   | nombre_mayusculas |
+-----------+-------------------+
| Juan      | JUAN              |
| María     | MARíA             |
| Carlos    | CARLOS            |
| Ana       | ANA               |
| Pedro     | PEDRO             |
| Laura     | LAURA             |
| Javier    | JAVIER            |
| Carmen    | CARMEN            |
| Miguel    | MIGUEL            |
| Elena     | ELENA             |
| Diego     | DIEGO             |
| Sofía     | SOFíA             |
| Andrés    | ANDRéS            |
| Isabel    | ISABEL            |
| Raúl      | RAúL              |
| Patricia  | PATRICIA          |
| Alejandro | ALEJANDRO         |
| Natalia   | NATALIA           |
| Roberto   | ROBERTO           |
| Beatriz   | BEATRIZ           |
| Juan      | JUAN              |
| María     | MARíA             |
| Carlos    | CARLOS            |
| Ana       | ANA               |
| Pedro     | PEDRO             |
| Laura     | LAURA             |
| Javier    | JAVIER            |
| Carmen    | CARMEN            |
| Miguel    | MIGUEL            |
| Elena     | ELENA             |
| Diego     | DIEGO             |
| Sofía     | SOFíA             |
| Andrés    | ANDRéS            |
| Isabel    | ISABEL            |
| Raúl      | RAúL              |
| Patricia  | PATRICIA          |
| Alejandro | ALEJANDRO         |
| Natalia   | NATALIA           |
| Roberto   | ROBERTO           |
| Beatriz   | BEATRIZ           |
+-----------+-------------------+
```

   2. Funciones Numéricas: Calcula el valor absoluto del salario de todos los empleados:

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

3. Funciones de Fecha y Hora: Muestra la fecha actual:
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
SELECT  AVG(salario) AS media_salarios FROM empleados;
+----------------+
| media_salarios |
+----------------+
| 57000.0        |
+----------------+

SELECT nombre, CAST(salario AS INTEGER) AS salario_entero FROM empleados;
+-----------+----------------+
|  nombre   | salario_entero |
+-----------+----------------+
| Juan      | 50000          |
| María     | 60000          |
| Carlos    | 55000          |
| Ana       | 48000          |
| Pedro     | 70000          |
| Laura     | 52000          |
| Javier    | 48000          |
| Carmen    | 65000          |
| Miguel    | 51000          |
| Elena     | 55000          |
| Diego     | 72000          |
| Sofía     | 49000          |
| Andrés    | 60000          |
| Isabel    | 53000          |
| Raúl      | 68000          |
| Patricia  | 47000          |
| Alejandro | 71000          |
| Natalia   | 54000          |
| Roberto   | 49000          |
| Beatriz   | 63000          |
+-----------+----------------+
```

5. Funciones de Manipulación de Cadenas: Concatena el nombre y el departamento de cada empleado:

```sql
 SELECT CONCAT(nombre, departamento,) AS nombre_concatenado FROM empleados;
CORREGIR ¡¡¡¡
```




