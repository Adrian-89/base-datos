drop database Base_indices;

create database Base_indices;

use Base_indices;
--En la BD crea una tabla de nombre MOVIMIENTO con la siguiente estructura:
CREATE TABLE MOVIMIENTO(
    Identificador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Articulo VARCHAR(50) NOT NULL,
    Fecha DATE NOT NULL,
    Cantidad INT NOT NULL
    );

--Aplica la sentencia adecuada para visualizar los índices que hay en la tabla.
/**
show index from MOVIMIENTO;
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table      | Non_unique | Key_name | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| MOVIMIENTO |          0 | PRIMARY  |            1 | Identificador | A         |        3546 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
1 row in set (0,01 sec)
*/


--Ejecuta la siguiente sentencia sql para generar datos de prueba
/**
mysql> INSERT INTO MOVIMIENTO (Identificador, Articulo, Fecha, Cantidad)
    -> SELECT 
    ->     n.Numero,
    ->     CONCAT('Producto', n.Numero),
    ->     DATE_ADD('2012-01-01', INTERVAL FLOOR(RAND() * 120) DAY),
    ->     FLOOR(RAND() * 1000000) + 1
    -> FROM 
    ->     NumerosUnicos n;
Query OK, 3546 rows affected (0,03 sec)
Records: 3546  Duplicates: 0  Warnings: 0
**/


--Crea con la sentencia CREATE TABLE…SELECT… un duplicado de la tabla MOVIMIENTO a la que llamaremos MOVIMIENTO_BIS.
/**
mysql> create table MOVIMIENTO_BIS select * from MOVIMIENTO;
Query OK, 3546 rows affected (0,04 sec)
Records: 3546  Duplicates: 0  Warnings: 0
**/


--Con la cláusula DESCRIBE observa cuál es la situación de la tabla clonada, ¿Qué le pasa al índice y a la propiedad AUTO_INCREMENT?
/**
describe MOVIMIENTO_BIS;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Identificador | int         | NO   |     | 0       |       |
| Articulo      | varchar(50) | NO   |     | NULL    |       |
| Fecha         | date        | NO   |     | NULL    |       |
| Cantidad      | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0,00 sec)
**/



--Utilizando EXPLAIN observa el plan de ejecución de la consulta que devuelve toda la información de los movimientos con identificador=3. 
--Tanto en la tabla MOVIMIENTOS como en la tabla MOVIMIENTOS_bis. Escribe tus conclusiones al respecto.
/**
EXPLAIN select * from MOVIMIENTO where Identificador=3;
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
| id | select_type | table      | partitions | type  | possible_keys | key     | key_len | ref   | rows | filtered | Extra |
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | const | PRIMARY       | PRIMARY | 4       | const |    1 |   100.00 | NULL  |
+----+-------------+------------+------------+-------+---------------+---------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0,01 sec)


EXPLAIN select * from MOVIMIENTO_BIS where Identificador=3;
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table          | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3546 |    10.00 | Using where |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0,00 sec)

Podemos observar que desde la columna possible_keys hacia la derecha hay cambios sgnificativos como el el possible_keys que pone null, key que en la tabla normal si aparece la PK
pero en la tabla bis no, asi hasta llegar a rows donde la tabla Movimiento tiene 3546 rows y la bis solo 1,tambien comprando la ultima columna de cada tabla,
la bis aparedce using wwhere y en la movimiento normal no.
**/

--Supongamos que las consultas de rango que se van a hacer en nuestra tabla son frecuentes y además no por el identificador, sino por la fecha. Este es motivo suficiente para que sea
--la fecha un índice de tabla y así mejorar el tiempo de respuesta de nuestras consultas. En la tabla MOVIMIENTO_BIS creamos un índice para la fecha (IX_FECHA_BIS) y otro índice
--para el identificador (IX_IDENTIFICADOR).
/**
mysql> create index IX_FECHA_BIS on MOVIMIENTO_BIS(Fecha);
Query OK, 0 rows affected (0,02 sec)
Records: 0  Duplicates: 0  Warnings: 0


mysql> create index IX_IDENTIFICADOR on MOVIMIENTO_BIS(Identificador);
Query OK, 0 rows affected (0,02 sec)
Records: 0  Duplicates: 0  Warnings: 0


mysql> describe MOVIMIENTO_BIS;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Identificador | int         | NO   | MUL | 0       |       |
| Articulo      | varchar(50) | NO   |     | NULL    |       |
| Fecha         | date        | NO   | MUL | NULL    |       |
| Cantidad      | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0,00 sec)
**/



--Analiza el plan de ejecución de las siguientes consultas y observa la diferencia
/**
1 mysql> EXPLAIN select * from MOVIMIENTO_BIS where Identificador=3;
+----+-------------+----------------+------------+------+------------------+------------------+---------+-------+------+----------+-------+
| id | select_type | table          | partitions | type | possible_keys    | key              | key_len | ref   | rows | filtered | Extra |
+----+-------------+----------------+------------+------+------------------+------------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ref  | IX_IDENTIFICADOR | IX_IDENTIFICADOR | 4       | const |    1 |   100.00 | NULL  |
+----+-------------+----------------+------------+------+------------------+------------------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0,00 sec)


2 mysql> EXPLAIN select identificador from MOVIMIENTO_BIS where identificador=3;
+----+-------------+----------------+------------+------+------------------+------------------+---------+-------+------+----------+-------------+
| id | select_type | table          | partitions | type | possible_keys    | key              | key_len | ref   | rows | filtered | Extra       |
+----+-------------+----------------+------------+------+------------------+------------------+---------+-------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ref  | IX_IDENTIFICADOR | IX_IDENTIFICADOR | 4       | const |    1 |   100.00 | Using index |
+----+-------------+----------------+------------+------+------------------+------------------+---------+-------+------+----------+-------------+
1 row in set, 1 warning (0,00 sec)

La diferencia esta en la última columna donde en la primera consulta es NULL y en la segunda es Using index
**/


--Analiza el plan de ejecución de las siguientes consultas y observa la diferencia
/**
Consulta1
mysql> EXPLAIN Select Fecha from MOVIMIENTO where Fecha BETWEEN '01/01/2012' and '01/03/2012';
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table      | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3546 |    11.11 | Using where |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0,00 sec)



Consulta2
mysql> EXPLAIN SELECT * FROM MOVIMIENTO WHERE fecha BETWEEN 01/01/2012 AND 01/03/2012;
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table      | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3546 |    10.00 | Using where |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0,00 sec)


Consulta3
mysql> EXPLAIN SELECT fecha FROM MOVIMIENTO_BIS WHERE fecha BETWEEN '01/01/2012' AND '01/03/2012';
+----+-------------+----------------+------------+-------+---------------+--------------+---------+------+------+----------+--------------------------+
| id | select_type | table          | partitions | type  | possible_keys | key          | key_len | ref  | rows | filtered | Extra                    |
+----+-------------+----------------+------------+-------+---------------+--------------+---------+------+------+----------+--------------------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | index | IX_FECHA_BIS  | IX_FECHA_BIS | 3       | NULL | 3555 |    11.11 | Using where; Using index |
+----+-------------+----------------+------------+-------+---------------+--------------+---------+------+------+----------+--------------------------+
1 row in set, 2 warnings (0,00 sec)



Consulta 4
mysql> EXPLAIN SELECT * FROM MOVIMIENTO_BIS WHERE fecha BETWEEN '01/01/2012' AND '01/03/2012';
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table          | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ALL  | IX_FECHA_BIS  | NULL | NULL    | NULL | 3555 |    11.11 | Using where |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 2 warnings (0,00 sec)

En la última columna de la consullta 3 se encuentra la diferenia en la que pone Using where; Using index
**/




































































/**
describe MOVIMIENTO;
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| Identificador | int         | NO   | PRI | NULL    | auto_increment |
| Articulo      | varchar(50) | NO   |     | NULL    |                |
| Fecha         | date        | NO   |     | NULL    |                |
| Cantidad      | int         | NO   |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
4 rows in set (0,00 sec)
**/



/**
describe NumerosUnicos;
+--------+------+------+-----+---------+----------------+
| Field  | Type | Null | Key | Default | Extra          |
+--------+------+------+-----+---------+----------------+
| Numero | int  | NO   | PRI | NULL    | auto_increment |
+--------+------+------+-----+---------+----------------+
1 row in set (0,00 sec)
**/