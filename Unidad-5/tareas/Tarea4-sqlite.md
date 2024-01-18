# PASOS:
## Paso 1: Creación de la BBDD
* Creamos con el siguente contenido el fichero supermercado-dump.sql.
```sql
CREATE TABLE productos (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    categoria TEXT,
    precio REAL
);

CREATE TABLE ventas (
    id INTEGER PRIMARY KEY,
    id_producto INTEGER,
    cantidad INTEGER,
    fecha DATE,
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

INSERT INTO productos (id, nombre, categoria, precio) VALUES 
    (1, 'Arroz', 'Alimentos', 2.5),
    (2, 'Leche', 'Lácteos', 1.8),
    (3, 'Pan', 'Panadería', 1.2),
    (4, 'Manzanas', 'Frutas', 3.0),
    (5, 'Pollo', 'Carnes', 5.5),
    (6, 'Huevos', 'Lácteos', 1.0),
    (7, 'Yogurt', 'Lácteos', 2.0),
    (8, 'Tomates', 'Verduras', 2.2),
    (9, 'Queso', 'Lácteos', 4.0),
    (10, 'Cereal', 'Desayuno', 3.5),
    (11, 'Papel Higiénico', 'Hogar', 1.5),
    (12, 'Cepillo de Dientes', 'Higiene', 2.0),
    (13, 'Detergente', 'Limpieza', 2.8),
    (14, 'Galletas', 'Snacks', 1.7),
    (15, 'Aceite de Oliva', 'Cocina', 4.5),
    (16, 'Café', 'Bebidas', 5.0),
    (17, 'Sopa enlatada', 'Conservas', 2.3),
    (18, 'Jabón de Baño', 'Higiene', 1.2),
    (19, 'Botellas de Agua', 'Bebidas', 1.0),
    (20, 'Cerveza', 'Bebidas', 3.8);

INSERT INTO ventas (id_producto, cantidad, fecha) VALUES 
    (1, 5, '2024-01-17'),
    (2, 3, '2024-01-17'),
    (4, 2, '2024-01-17'),
    (5, 1, '2024-01-17'),
    (6, 10, '2024-01-18'),
    (8, 4, '2024-01-18'),
    (10, 2, '2024-01-18'),
    (14, 7, '2024-01-19'),
    (16, 3, '2024-01-19'),
    (18, 6, '2024-01-20');
```

## Paso 2 Lectura del fichero sql.
Entramos en sqlite a través del siguiente comando:

```sql
sqlite3 tarea4.db 
```

## Paso 3: Realización de consultas

* Realiza el diagrama ER de la BBDD supermercado.
  
* Realiza el diagrama MR de la BBDD supermercado.

* Indica si la BBDD esta normalizada hasta la 3ª forma normal, justificando la respuesta.


## Paso 4: Responde a las siguientes cuestiones

1. Mostrar todos los productos de la categoría "Bebidas".
```sql
SELECT * FROM productos  WHERE categoria = 'Bebidas';
+----+------------------+-----------+--------+
| id |      nombre      | categoria | precio |
+----+------------------+-----------+--------+
| 16 | Café             | Bebidas   | 5.0    |
| 19 | Botellas de Agua | Bebidas   | 1.0    |
| 20 | Cerveza          | Bebidas   | 3.8    |
+----+------------------+-----------+--------+
```

2. Listar los productos ordenados por precio de forma descendente.
```sql
SELECT nombre, precio FROM productos ORDER BY precio DESC;
+--------------------+--------+
|       nombre       | precio |
+--------------------+--------+
| Pollo              | 5.5    |
| Café               | 5.0    |
| Aceite de Oliva    | 4.5    |
| Queso              | 4.0    |
| Cerveza            | 3.8    |
| Cereal             | 3.5    |
| Manzanas           | 3.0    |
| Detergente         | 2.8    |
| Arroz              | 2.5    |
| Sopa enlatada      | 2.3    |
| Tomates            | 2.2    |
| Yogurt             | 2.0    |
| Cepillo de Dientes | 2.0    |
| Leche              | 1.8    |
| Galletas           | 1.7    |
| Papel Higiénico    | 1.5    |
| Pan                | 1.2    |
| Jabón de Baño      | 1.2    |
| Huevos             | 1.0    |
| Botellas de Agua   | 1.0    |
+--------------------+--------+
```

3. Calcular el precio total de todos los productos en la tabla "productos".
```sql
SELECT SUM(precio) AS 'Suma de precios' FROM productos;
+-----------------+
| Suma de precios |
+-----------------+
| 52.5            |
+-----------------+
```

4. Encontrar los productos con un nombre que contenga la letra 'a'.
```sql
SELECT nombre FROM productos WHERE nombre LIKE '%a%';
+------------------+
|      nombre      |
+------------------+
| Arroz            |
| Pan              |
| Manzanas         |
| Tomates          |
| Cereal           |
| Papel Higiénico  |
| Galletas         |
| Aceite de Oliva  |
| Café             |
| Sopa enlatada    |
| Jabón de Baño    |
| Botellas de Agua |
| Cerveza          |
+------------------+
```

5. Obtener la cantidad total de productos vendidos en todas las fechas.
```sql
SELECT SUM(cantidad) FROM ventas;
+---------------+
| SUM(cantidad) |
+---------------+
| 43            |
+---------------+
```

6. Encontrar el producto más caro en cada categoría.
```sql 

```