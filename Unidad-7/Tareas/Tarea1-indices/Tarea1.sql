--Elimine la tabla "alumno" si existe. 
--drop table Alumnos;

-- Cree la tabla definiendo una clave primaria compuesta (año de inscripción y número de inscripción). 
/**
CREATE TABLE Alumnos (
    numero_inscripcion INT NOT NULL AUTO_INCREMENT,
    anio_inscripcion INT NOT NULL,
    nombre_alumno VARCHAR(255) NOT NULL,
    documento_alumno VARCHAR(30) NOT NULL,
    domicilio VARCHAR(255),
    ciudad VARCHAR(100),
    provincia VARCHAR(100),
    PRIMARY KEY (numero_inscripcion, anio_inscripcion)
);
**/

/**
Define los siguientes indices:

    Un índice único por el campo "documento" y un índice común por ciudad y provincia. 
    -- create index documento on Alumnos (documento_alumno);
    -- create index ciudad_y_provincia on Alumnos (ciudad, provincia);
    
    Vea los índices de la tabla. 
    /**
    show index from Alumnos;
+---------+------------+--------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name           | Seq_in_index | Column_name        | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+--------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Alumnos |          0 | PRIMARY            |            1 | numero_inscripcion | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| Alumnos |          0 | PRIMARY            |            2 | anio_inscripcion   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| Alumnos |          1 | documento          |            1 | documento_alumno   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| Alumnos |          1 | ciudad_y_provincia |            1 | ciudad             | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| Alumnos |          1 | ciudad_y_provincia |            2 | provincia          | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+---------+------------+--------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
    **/
**/

--Intente ingresar un alumno con clave primaria repetida. 
/**
mysql> INSERT INTO Alumnos (anio_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia) 
    -> VALUES (2003, 'Roberto', 'doc1', 'calle_1', 'Puerto_Cruz', 'Sta_Cruz_de_Tenerife');
Query OK, 1 row affected (0,00 sec)

mysql> select * from Alumnos;
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
| numero_inscripcion | anio_inscripcion | nombre_alumno | documento_alumno | domicilio | ciudad      | provincia            |
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
|                  1 |             2003 | Roberto       | doc1             | calle_1   | Puerto_Cruz | Sta_Cruz_de_Tenerife |
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
1 row in set (0,00 sec)

mysql> INSERT INTO Alumnos (anio_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia)  VALUES (2003, 'Fernando', 'doc2', 'calle_2', 'Puerto_Cruz', 'Sta_Cruz_de_Tenerife');
Query OK, 1 row affected (0,01 sec)

mysql> select * from Alumnos;
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
| numero_inscripcion | anio_inscripcion | nombre_alumno | documento_alumno | domicilio | ciudad      | provincia            |
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
|                  1 |             2003 | Roberto       | doc1             | calle_1   | Puerto_Cruz | Sta_Cruz_de_Tenerife |
|                  2 |             2003 | Fernando      | doc2             | calle_2   | Puerto_Cruz | Sta_Cruz_de_Tenerife |
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
2 rows in set (0,00 sec)
**/
--Intente ingresar un alumno con documento repetido. 
/**
mysql> INSERT INTO Alumnos (anio_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia)  VALUES (2002, 'Felipe', 'doc2', 'calle_3', 'Santa_Cruz', 'Sta_Cruz_de_Tenerife');
Query OK, 1 row affected (0,00 sec)

mysql> select * from Alumnos;
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
| numero_inscripcion | anio_inscripcion | nombre_alumno | documento_alumno | domicilio | ciudad      | provincia            |
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
|                  1 |             2003 | Roberto       | doc1             | calle_1   | Puerto_Cruz | Sta_Cruz_de_Tenerife |
|                  2 |             2003 | Fernando      | doc2             | calle_2   | Puerto_Cruz | Sta_Cruz_de_Tenerife |
|                  3 |             2002 | Felipe        | doc2             | calle_3   | Santa_Cruz  | Sta_Cruz_de_Tenerife |
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
3 rows in set (0,00 sec)
**/

--Ingrese varios alumnos de la misma ciudad y provincia. 
/**
mysql> INSERT INTO Alumnos (anio_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia)  VALUES (2002, 'Felipe', 'doc2', 'calle_3', 'Santa_Cruz', 'Sta_Cruz_de_Tenerife');
Query OK, 1 row affected (0,00 sec)

mysql> INSERT INTO Alumnos (anio_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia) 
    -> VALUES (2003, 'Roberto', 'doc1', 'calle_1', 'Puerto_Cruz', 'Sta_Cruz_de_Tenerife');

mysql> select * from Alumnos;
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
| numero_inscripcion | anio_inscripcion | nombre_alumno | documento_alumno | domicilio | ciudad      | provincia            |
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
|                  1 |             2003 | Roberto       | doc1             | calle_1   | Puerto_Cruz | Sta_Cruz_de_Tenerife |
|                  2 |             2003 | Fernando      | doc2             | calle_2   | Puerto_Cruz | Sta_Cruz_de_Tenerife |
|                  3 |             2002 | Felipe        | doc2             | calle_3   | Santa_Cruz  | Sta_Cruz_de_Tenerife |
+--------------------+------------------+---------------+------------------+-----------+-------------+----------------------+
3 rows in set (0,00 sec)
**/

--Elimina los indices creados, y muestra que ya no se encuentran. 
--DROP INDEX documento ON Alumnos;
--DROP INDEX ciudad_y_provincia ON Alumnos;
/**
mysql> show index from Alumnos;
+---------+------------+----------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name        | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+----------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Alumnos |          0 | PRIMARY  |            1 | numero_inscripcion | A         |           4 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| Alumnos |          0 | PRIMARY  |            2 | anio_inscripcion   | A         |           4 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+---------+------------+----------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0,00 sec)
--