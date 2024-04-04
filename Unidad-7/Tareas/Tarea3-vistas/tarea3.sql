drop database Base_indices;

create database Base_indices;

use Base_indices;

CREATE TABLE MOVIMIENTO(
    Identificador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Articulo VARCHAR(50) NOT NULL,
    Fecha DATE NOT NULL,
    Cantidad INT NOT NULL
    );


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