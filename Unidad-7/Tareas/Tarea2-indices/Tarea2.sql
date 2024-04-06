--Elimine la tabla "cliente" si existe.
DROP TABLE IF EXISTS cliente;
--Cree la tabla si clave primaria y incluye a posteriori esta.
/**
CREATE TABLE cliente (
	documento CHAR(8) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	domicilio VARCHAR(30),
	ciudad VARCHAR(20),
	telefono VARCHAR(11), 
	provincia VARCHAR(20));

ALTER TABLE cliente MODIFY documento VARCHAR(8) NOT NULL, ADD PRIMARY KEY(documento);
 DESCRIBE clientes;
 +-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| documento | varchar(8)  | NO   | PRI | NULL    |       |
| nombre    | varchar(30) | NO   |     | NULL    |       |
| domicilio | varchar(30) | YES  |     | NULL    |       |
| ciudad    | varchar(20) | YES  |     | NULL    |       |
| telefono  | varchar(11) | YES  |     | NULL    |       |
| provincia | varchar(20) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
**/

--Define los siguientes indices:
--Un índice único por el campo "documento" y un índice común por ciudad y provincia.
/**
CREATE INDEX global_index ON cliente (ciudad, provincia);

CREATE UNIQUE INDEX unique_index on cliente(documento);
**/
--Vea los índices de la tabla.
/**
SHOW INDEX FROM cliente;
+---------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| cliente |          0 | PRIMARY        |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| cliente |          0 | unique_index   |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| cliente |          1 | global_index   |            1 | ciudad      | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| cliente |          1 | global_index   |            2 | provincia   | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+---------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+

**/
--Agregue un índice único por el campo "telefono".
--CREATE UNIQUE INDEX unique_tel on cliente(telefono);

--Elimina los índices.
/**
ALTER TABLE cliente DROP INDEX global_index, DROP INDEX unique_index;
SHOW INDEX FROM cliente;
Empty set (0,01 sec)
**/