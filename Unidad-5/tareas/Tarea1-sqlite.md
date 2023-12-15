# PASOS:
## Paso 1: Crear una tabla con un campo de cada tipo
1. Abrimos SQLite3 y creamos la base de datos llamada tarea1.db.

``` code
    sqlite3 tarea1.db
```
2. Se crea una tabla llamada Ejemplo
```code
create table ejemplo (
         id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
         texto TEXT NOT NULL,
         entero INTEGER NOT NULL,
         decimal REAL NOT NULL,
         fecha DATE NOT NULL,
         booleano BOOLEAN NOT NULL);
```
## Paso 2: Insertar 50 entradas
``` sql
insert into ejemplo (texto, entero, decimal, fecha, booleano) values ('Ejemplo1', 25, 10.5, '2022-05-15', 0)...etc
-----------------------------------------------------------------------
insert into ejemplo (texto, entero, decimal, fecha, booleano) values ('Ejemplo50', 75, 85.3, '2026-06-11', 1)
```

## Paso 3: Realizar 5 consultas de datos
1. Obtén todas las entradas de la tabla Ejemplo.
``` sql
SELECT * FROM ejemplo 
 ```
2. Obtén las entradas con el campo entero mayor a 50.
```sql
SELECT entero FROM ejemplo WHERE entero > 50;
```

## Paso 4: Realizar 3 eliminaciones y 3 modificaciones
 1. Elimina las entradas donde el campo booleano es igual a True.
 ```sql
 DELETE FROM ejemplo WHERE booleano = 1;
 ```
 2. Modifica el campo texto de las entradas donde el campo entero es menor a 30 y establece el texto como "Modificado".
 ```sql
 UPDATE ejemplo SET texto = 'Modificado' WHERE entero < 30;
 ```
3.  Elimina las entradas donde el campo entero es igual a 50.
```sql
DELETE FROM ejemplo WHERE entero = 50;
```
4. Incrementa en 10 el valor del campo entero para las entradas donde el campo booleano es igual a False.
```sql
UPDATE ejemplo SET entero = entero + 10 WHERE booleano = 0;
```
5. Elimina las entradas donde el campo decimal es menor a 50.
```sql
DELETE FROM ejemplo WHERE decimal < 50;
```
6. Actualiza el campo fecha de todas las entradas a la fecha actual.
```sql
UPDATE ejemplo SET fecha = '2023-12-15' WHERE boleano = 0;
```
  