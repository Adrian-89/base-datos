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
-- INSERT INTO Alumnos VALUES(2003, Roberto, doc1, calle_1, Puerto_Cruz, Sta_Cruz_de_Tenerife); INSERT INTO Alumnos VALUES(1, 'Aarón', 'Rivero', 'Gómez', 'Almería', 100);

--Intente ingresar un alumno con documento repetido. 
--

--Ingrese varios alumnos de la misma ciudad y provincia. 
--

--Elimina los indices creados, y muestra que ya no se encuentran. 
--
