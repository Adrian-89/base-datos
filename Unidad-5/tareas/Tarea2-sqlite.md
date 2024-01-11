# PASOS:
## Paso 1: Crear una tabla con un campo de cada tipo
1. Abrimos SQLite3 y creamos la base de datos llamada tarea2.db.

``` code
    sqlite3 tarea2.db
```
2. Se crea una tabla llamada Propietario y Vehiculo
```sql
CREATE TABLE Propietarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    apellido TEXT NOT NULL,
    dni TEXT UNIQUE NOT NULL);
```
``` sql
CREATE TABLE Vehiculos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    marca TEXT NOT NULL,
    modelo TEXT NOT NULL,
    anio INTEGER NOT NULL,
    id_propietario INTEGER,
    FOREIGN KEY (id_propietario) REFERENCES Propietarios(id)
);
```
## Paso 2: Insertar 20 entradas
``` sql
INSERT INTO Propietarios (nombre, apellido, dni) VALUES
    ('Juan', 'Perez', '12345678A'), etc...
-----------------------------------------------------------------------
INSERT INTO Vehiculos (marca, modelo, anio, id_propietario) VALUES
    ('Ford', 'Fiesta', 2019, 1), etc...
```

## Paso 3: Realizar las siguientes 10 consultas de datos
1. Seleccionar todos los propietarios
``` sql
SELECT * FROM Propietarios;
 ```
2. Listar todos los vehículos.
```sql
SELECT * FROM Vehiculos;
```
3. Seleccionar solo los nombres y apellidos de los propietarios
```sql
SELECT nombre, apellido FROM Propietarios;
```
4. Listar todas las marcas y modelos de los vehículos
```sql
SELECT marca, modelo FROM Vehiculos;
```
5. Seleccionar solo los propietarios con apellido "Perez"
```sql
SELECT * FROM Propietarios WHERE apellido = 'Perez';
```
6. Listar todos los vehículos con año 2019
```sql
SELECT * FROM Vehiculos WHERE anio = 2019;
```
7. Seleccionar propietarios que tienen vehículos de la marca "Toyota"
```sql

```
8. Listar vehículos con marca "Ford" y modelo "Fiesta"
```sql
SELECT * FROM Vehiculos WHERE marca = 'Ford' AND modelo = 'Fiesta';
```
9. Seleccionar propietarios con DNI "12345678A"
```sql
SELECT * FROM Propietarios WHERE dni = '12345678A';
```
10. Listar vehículos que pertenecen al propietario con ID 5
```sql
SELECT * FROM Vehiculos WHERE id_propietario = 5;
```

## Paso 4: Realiza los siguientes updates:
 1. Actualizar el nombre de un propietario con DNI "12345678A"
 ```sql
UPDATE Propietarios SET nombre = 'Rodrigo' WHERE dni = '12345678A';
 ```
 2. Modificar el año de un vehículo con ID 3 a 2022.
 ```sql
UPDATE Vehiculos SET anio = 2022 WHERE id = 3;
 ```
3.  Cambiar el modelo de todos los vehículos Nissan a "Micra".
```sql
UPDATE Vehiculos SET anio = 2022 WHERE id = 3;
```
4. Actualizar el apellido de un propietario con ID 7 a "Gomez".
```sql
UPDATE Propietarios SET apellido = 'Gomez' WHERE id = 7;
```
5. Modificar la marca de un vehículo con modelo "Fiesta" a "Renault".
```sql
UPDATE Vehiculos SET marca = 'Renault' WHERE modelo = 'Fiesta';
```
