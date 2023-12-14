# PASOS:
## Paso 1: Crear una tabla con un campo de cada tipo
1. Abrimos SQLite3 y creamos la base de datos llamada tarea1.db.

``` bash
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
```

```