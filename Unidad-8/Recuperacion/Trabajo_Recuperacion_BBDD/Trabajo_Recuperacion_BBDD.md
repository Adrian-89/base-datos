## Creamos la base de datos:

```sql
CREATE DATABASE recubasedatos;
Use recubasedatos;
```


<div align="justify">

<div align="center">
</div>

# Estructura BBDD 



### **Tabla dirección**

Para la creación de la tabla direccion tendremos que hacerlo de esta manera:
```sql
CREATE TABLE direccion (
  id_direccion INTEGER PRIMARY KEY,
  calle TEXT,
  numero INTEGER,
  piso INTEGER,
  código_postal INTEGER, 
  provincia TEXT, 
  municipio TEXT );
```

Asimismo procederemos a insertar los datos en la tabla:

```sql
INSERT INTO direccion (id_direccion, calle, numero, piso, código_postal, provincia, municipio)
VALUES 
('10', 'Cannon Street', '6', '1', '40000', 'Tenerife', 'Santa Cruz'),
('11', 'Parque Placentero', '24', '2', '41000', 'Madrid', 'Móstoles'),
('12', 'Storage Avenue', '48', '3', '50000', 'Extremadura', 'Pisos Picados'),
('13', 'Pochinki', '15', '4', '51000', 'A Coruña', 'Latifundio Letal'),
('14', 'Garcilaso la Vega', '10', '8', '50000', 'Extremadura', 'Pisos Picados');
```
De esta manera se creará esta tabla:

|id|calle|numero|piso|codigo_postal|provincia|municipio|
|:-:|:---:|:----:|:--:|:-----------:|:-------:|:-------:|
|10|Cannon Street|6|1|40000|Tenerife|Santa Cruz|
|11|Parque Placentero|24|2|41000|Madrid|Mostoles|
|12|Storage Avenue|48|3|50000|Extremadura|Pisos Picados|
|13|Pochinki|15|4|51000|A Coruña|Latifundio Letal|
|14|Garcilaso La Vega|10|8|50000|Extremadura|Pisos Picados|

---
### Tabla programa academico

Para la realización de esta tabla como las anteriores deberemos de ejecutar el siguiente comando:

```SQL
CREATE TABLE programa_academico (
  id INTEGER PRIMARY KEY );
```

Seguidamente procederemos a insertar los datos:

```sql
INSERT INTO programa_academico (id)
VALUES
('231'),
('232'),
('233'),
('234'),
('235');
```

Tabla creada:

|id|
|:-:|
|231|
|232|
|233|
|234|
|235|

---
### Tabla estudiante

Para crear la tabla estudiante deberemos de usar el siguiente comando:

```sql
CREATE TABLE estudiante (
    DNI VARCHAR(20) PRIMARY KEY,
    nombre TEXT,
    apellido TEXT,
    id_programa_academico INTEGER,
    FOREIGN KEY (id_programa_academico) REFERENCES programa_academico (id));
```

A continuación procederemos a llenar a tabla de datos:
```sql
INSERT INTO estudiante (DNI, nombre, apellido, id_programa_academico)
VALUES 
('30098456A', 'Juan', 'Pérez', '231'),
('12343245N', 'Marco', 'Expósito', '232'),
('46477886M', 'Alex', 'Fernández', '233'),
('12345678T', 'Daniel', 'Guitérrez', '234'),
('12579852L', 'Carla', 'Perales', '235');
```

Se nos formará con esto la siguiente tabla:
| DNI       | nombre   | apellido  | id_programa_academico |
|:---------:|:--------:|:---------:|:---------------------:|
| 30098456A | Juan     | Pérez     | 231                   |
| 12343245N | Marco    | Expósito  | 232                   |
| 46477886M | Alex     | Fernández | 233                   |
| 12345678T | Daniel   | Guitérrez | 234                   |
| 12579852L | Carla    | Perales   | 235                   |

---
### **Tabla email**

```sql
CREATE TABLE email (
  id_email INTEGER PRIMARY KEY,
  email TEXT,
  DNI_estudiante VARCHAR(20),
  FOREIGN KEY (DNI_estudiante) REFERENCES estudiante(DNI)
);
```

Seguidamente procederemos a añadir los datos de la tabla email:

```sql
INSERT INTO email (id_email, email, DNI_estudiante)
VALUES 
('10001', 'jp@gmail.com', '30098456A'),
('10002', 'pj@gmail.com', '30098456A'),
('10003', 'me@gmail.com', '12343245N'),
('10004', 'em@gmail.com', '12343245N'),
('10005', 'af@gmail.com', '46477886M'),
('10006', 'dg@gmail.com', '12345678T'),
('10007', 'cp@gmail.com', '12579852L');
```
Seguidos estos pasos se creará la tabla siguiente:

|id|email|DNI_estudiante|
|:---:|:----------:|:-------:|
|10001|pj@gmail.com|30098456A|
|10002|jp@gmail.com|30098456A|
|10003|me@gmail.com|12343245N|
|10004|em@gmail.com|12343245N|
|10005|af@gmail.com|46477886M|
|10006|dg@gmail.com|12345678T|
|10007|cp@gmail.com|12579852L|

---
### Tabla notas

Procederemos a crear la tabla nota usando el siguiente comando:
```sql
CREATE TABLE nota (
  id INTEGER PRIMARY KEY,
  nota INTEGER,
  DNI_estudiante VARCHAR(20),
  FOREIGN KEY (DNI_estudiante) REFERENCES estudiante(DNI)
);

```

Seguidamente añadiremos los datos en la tabla recién creada:
```sql
INSERT INTO nota (id, nota, DNI_estudiante)
VALUES
('001', 9, '30098456A'),
('002', 5, '30098456A'),
('003', 3, '12343245N'),
('004', 10, '12343245N'),
('005', 8, '46477886M'),
('006', 7, '46477886M'),
('007', 9, '12345678T'),
('008', 3, '12345678T'),
('009', 5, '12579852L'),
('010', 9, '12579852L');

```

Se nos creará una vez insertados los datos esta tabla:

|id|nota|DNI_estudiante|
|:-:|:--:|:-----------:|
|001|9|30098456A|
|002|5|30098456A|
|003|3|12343245N|
|004|10|12343245N|
|005|8|46477886M|
|006|7|46477886M|
|007|9|12345678T|
|008|3|12345678T|
|009|5|12579852L|
|010|9|12579852L|


---
### Tabla profesor

Para crear la tabla profesor necesitaremos el siguiente comando:
```sql
CREATE TABLE profesor (
  DNI VARCHAR(20) PRIMARY KEY,
  id_profesor INTEGER,
  nombre TEXT, 
  apellido TEXT,
  id_ser_tutor INTEGER
);

```

Insertaremos como anteriormente hemos hecho los respectivos datos de los profesores:
```sql
INSERT INTO profesor (DNI, id_profesor, nombre, apellido, id_ser_tutor)
VALUES 
('27654371J', '101', 'Manuel', 'Rodriguez', '0'),
('28084830N', '102', 'Jaime', 'Torres', '1'),
('29167225M', '103', 'Verónica', 'Hernandez', '0'),
('45678901A', '104', 'María', 'Perez', '1'),
('45658895L', '105', 'Juan', 'Lopez', '0');
```

Se nos formará esta tabla:

| DNI       | id_profesor | nombre   | apellido  | id_ser_tutor |
|:---------:|:-----------:|:-------:|:---------:|:------------:|
| 27654371J | 101        | Manuel   | Rodriguez | 0            |
| 28084830N | 102        | Jaime    | Torres    | 1            |
| 29167225M | 103        | Verónica | Hernandez | 0            |
| 45678901A | 104        | María    | Perez     | 1            |
| 45658895L | 105        | Juan     | Lopez     | 0            |

---
### Tabla libro

Creamos la tabla libro con el siguiente comando:
```sql
CREATE TABLE libro (
  ISBN INTEGER PRIMARY KEY,
  DNI_estudiante TEXT REFERENCES estudiante (DNI) );
```

Seguiremos con la inserción de los datos en ella:
```sql
INSERT INTO libro (ISBN, DNI_estudiante)
VALUES 
('1001', '30098456A'),
('1002', '12343245N'),
('1003', '46477886M'),
('1004', '12345678T'),
('1005', '12579852L');

```

Se nos creará asi la siguiente tabla:

|ISBN|DNI_estudiante|
|:--:|:------------:|
|1001|30098456A|
|1002|12343245N|
|1003|46477886M|
|1004|12345678T|
|1005|12579852L|

--- 
### Tabla género

Creamos la tabla género:

```sql
CREATE TABLE genero (
  id_genero VARCHAR(50) PRIMARY KEY,
  genero VARCHAR(100)
);

```

Asimismo, procederemos a insertar tabla:
```sql
INSERT INTO genero (id_genero, genero)
VALUES 
('1D', 'drama'),
('2R', 'romance'),
('3S', 'suspense'),
('4F', 'fantasía'),
('5A', 'aventura'),
('6P', 'policiaco'),
('7T', 'terror');
```

|id_genero|genero|
|:-------:|:----:|
|1D|drama|
|2R|romance|
|3S|suspense|
|4F|fantasía|
|5A|aventura|
|6P|policiaco|
|7T|terror|

---
### Tabla empresa 

La tabla empresa se creará de igual forma como las anteriores:
```sql
CREATE TABLE empresa (
id TEXT PRIMARY KEY );
```

Insertaremos los datos, en este caso las id de las empresas:
```sql
INSERT INTO empresa (id)
VALUES 
('EMPRESA1'),
('EMPRESA2'),
('EMPRESA3'),
('EMPRESA4'),
('EMPRESA5');
```

Se nos formará esta tabla en la base de datos:
| id       |
|:--------:|
| 1111111  |
| 2222222  |
| 3333333  |
| 4444444  |
| 5555555  |

---
### Tabla evento:

Asimismo seguiremos con la tabla evento:
```sql
CREATE TABLE evento (
  id INTEGER PRIMARY KEY,
  id_empresa TEXT REFERENCES empresa (id) );
```

Insertaremos las ids:
```sql
INSERT INTO evento (id, id_empresa)
VALUES
('001', 'EMPRESA1'),
('002', 'EMPRESA2'),
('003', 'EMPRESA3'),
('004', 'EMPRESA4'),
('005', 'EMPRESA5');
```

Se nos creará esta tabla:

| id | id_empresa |
|:--:|:----------:|
| 1  | EMPRESA1   |
| 2  | EMPRESA2   |
| 3  | EMPRESA3   |
| 4  | EMPRESA4   |
| 5  | EMPRESA5   |


---
### Tabla instalación deportiva:

Crearemos la tabla instalación deportiva:
```sql
CREATE TABLE instalacion_deportiva (
  id INTEGER PRIMARY KEY, 
  registro INTEGER );
```

Insertaremos sus respectivos datos:
```sql
INSERT INTO instalacion_deportiva (id, registro)
VALUES 
('011', '1111111'),
('012', '2222222'),
('013', '3333333'),
('014', '4444444'),
('015', '5555555');
```

Se  nos presentará esta tabla con los datos insertados anteriores:
| id | registro |
|:--:|:--------:|
| 11 | 1111111  |
| 12 | 2222222  |
| 13 | 3333333  |
| 14 | 4444444  |
| 15 | 5555555  |

---
### Tabla departamento:

Se crea la tabla departamento en la base de datos:
```sql
CREATE TABLE departamento (
  id INTEGER PRIMARY KEY );
```

Al igual que con las demás tablas procedemos a añadir los datos en la tabla:
```sql
INSERT INTO departamento (id)
VALUES 
('221'),
('222'),
('223'),
('224'),
('225');
```

Se nos presentará esta tabla a partir de los *INSERT* que hemos hecho:
| id   |
|:----:|
| 221  |
| 222  |
| 223  |
| 224  |
| 225  |

---
### Tabla beca:

Creación de tabla como anteriormente hemos visto:
```sql
CREATE TABLE beca (
id INTEGER PRIMARY KEY,
id_empresa TEXT REFERENCES empresa (id) );
```

Inserción de datos:
```sql
INSERT INTO beca (id, id_empresa)
VALUES
('101', 'EMPRESA1'),
('102', 'EMPRESA2'),
('103', 'EMPRESA3'),
('104', 'EMPRESA4'),
('105', 'EMPRESA5');
```

Resultado obtenido de la inserción:
| id   | id_empresa |
|:----:|:----------:|
| 101  | EMPRESA1   |
| 102  | EMPRESA2   |
| 103  | EMPRESA3   |
| 104  | EMPRESA4   |
| 105  | EMPRESA5   |

---
### Tabla asignatura:

Creamos la tabla asignatura:
```sql
CREATE TABLE asignatura (
id INTEGER PRIMARY KEY );
```

Añadimos datos a sus respectivas columnas:
```sql
INSERT INTO asignatura (id)
VALUES
('261'),
('262'),
('263'),
('264'),
('265');
```

Se nos presentará de esta forma la tabla:
| id   |
|:----:|
| 261  |
| 262  |
| 263  |
| 264  |
| 265  |

---
### Tabla curso:

Creamos la tabla:
```sql
CREATE TABLE curso (
id INTEGER PRIMARY KEY,
id_programa_academico INTEGER REFERENCES programa_academico(id) );
```

Insertamos datos:
```sql
INSERT INTO curso (id, id_programa_academico)
VALUES
('301', '231'),
('302', '232'),
('303', '233'),
('304', '234'),
('305', '235');
```

| id   | id_programa_academico |
|:----:|:---------------------:|
| 301  | 231                   |
| 302  | 232                   |
| 303  | 233                   |
| 304  | 234                   |
| 305  | 235                   |

---
### Tabla empleado:

Crearemos la tabla empleado que solo tiene un id:
```sql
CREATE TABLE empleado (
id INTEGER PRIMARY KEY );
```

Añadimos los datos en sus respectivas cedas:
```sql
INSERT INTO empleado (id)
VALUES
('211'),
('212'),
('213'),
('214'),
('215');
```

Teniendo que ser parecida esta:
| id  |
|:---:|
| 211 |
| 212 |
| 213 |
| 214 |
| 215 |

---
### Tabla prerequisitos:

Creamos la tabla prerequisitos:
```sql
CREATE TABLE prerequisito (
id_asignatura INTEGER PRIMARY KEY,
id_asignatura_tiene INTEGER REFERENCES  asignatura (id) );
```

Insertamos datos:
```sql
INSERT INTO prerequisito (id_asignatura, id_asignatura_tiene)
VALUES
('261', '271'),
('262', '272'),
('263', '273'),
('264', '274'),
('265', '275');
```

|id_asignatura|id_asignatura_tiene|
|:---:|:-------------:|
| 261 | 271           |
| 262 | 272           |
| 263 | 273           |
| 264 | 274           |
| 265 | 275           |


# Tablas generadas por relación N:M

### Tabla Estudiante_Dirección

Procederemos a crear la tabla N:M que se crea en la relación entre el estudiante y su dirección:

```sql
CREATE TABLE Estudiante_Direccion (
  DNI_estudiante VARCHAR(20) REFERENCES estudiante (DNI),
  id_direccion INTEGER REFERENCES direccion (id),
  PRIMARY KEY (DNI_estudiante, id_direccion)
);

```

Asimism, procederemos a rellenar los datos correspondientes en la tabla:

```sql
INSERT INTO Estudiante_Direccion (DNI_estudiante, id_direccion)
VALUES 
('30098456A', '10'),
('12343245N', '11'),
('46477886M', '12'),
('12345678T', '13'),
('12579852L', '14');
```

Formándose con ello la siguiente tabla:

| DNI_estudiante | id_direccion |
|:--------------:|:------------:|
| 30098456A      | 10 |
| 12343245N      | 11 |
| 46477886M      | 12 |
| 12345678T      | 13 |
| 12579852L      | 14 |

---
### Tabla Libro_Género

Creamos la tabla Libro_Genero:

```sql
CREATE TABLE Libro_Genero (
  ISBN_libro INTEGER REFERENCES libro (ISBN),
  id_genero VARCHAR(50) REFERENCES genero (id),
  PRIMARY KEY (ISBN_libro, id_genero)
);

```

Insertamos los datos de la tabla:

```sql
INSERT INTO Libro_Genero (ISBN_libro, id_genero)
VALUES
('1001', '1D'),
('1001', '2R'),
('1002', '3S'),
('1003', '4F'),
('1003', '5A'),
('1004', '6P'),
('1005', '7T');
```

Se nos creará la siguiente tabla:
|ISBN_libro|id_genero|
|:--------:|:-------:|
|1001|1D|
|1001|2R|
|1002|3S|
|1003|4F|
|1003|5A|
|1004|6P|
|1005|7T|

---
### Tabla Estudiante_Profesor

Creamos la tabla Estudiante_Profesor:

```sql
CREATE TABLE Estudiante_Profesor (
  DNI_estudiante VARCHAR(50) REFERENCES estudiante (DNI),
  DNI_profesor VARCHAR(50) REFERENCES profesor (DNI),
  PRIMARY KEY (DNI_estudiante, DNI_profesor)
);

```
Insertamos los datos:
```sql
INSERT INTO Estudiante_Profesor (DNI_estudiante, DNI_Profesor)
VALUES
('30098456A', '27654371J'),
('12343245N', '28084830N'),
('46477886M', '29167225M'),
('12345678T', '45678901A'),
('12579852L', '45658895L');
```

| DNI_estudiante | DNI_profesor |
|:--------------:|:------------:|
| 30098456A      | 27654371J    |
| 12343245N      | 28084830N    |
| 46477886M      | 29167225M    |
| 12345678T      | 45678901A    |
| 12579852L      | 45658895L    |

---
### Tabla Evento_InstalacionDeportiva

Creamos la tabla Evento_InstalacionDeportiva:
```sql
CREATE TABLE Evento_InstalacionDeportiva (
  id_evento VARCHAR(20) REFERENCES evento (id),  
  id_instalacion_deportiva VARCHAR(20) REFERENCES instalacion_deportiva (id),
  PRIMARY KEY (id_evento, id_instalacion_deportiva));
```
Insertamos los datos:
```sql
INSERT INTO Evento_InstalacionDeportiva (id_evento, id_instalacion_deportiva)
VALUES
('30098456A', '27654371J'),
('12343245N', '28084830N'),
('46477886M', '29167225M'),
('12345678T', '45678901A'),
('12579852L', '45658895L');
```
| id_evento | id_instalacion_deportiva |
|:---------:|:------------------------:|
| 001       | 011                      |
| 002       | 012                      |
| 003       | 013                      |
| 004       | 014                      |
| 005       | 015                      |

---
### Tabla Departamento_Programa_Academico
Creamos la tabla Departamento_Programa_Academico:
```sql
CREATE TABLE Departamento_Programa_Academico (
  id_departamento INTEGER REFERENCES departamento (id),
  id_programa_academico INTEGER REFERENCES programa_academico (id),
  PRIMARY KEY (id_departamento, id_programa_academico) );
```
Insertamos los datos:
```sql
INSERT INTO Departamento_Programa_Academico (id_departamento, id_programa_academico)
VALUES
('221', '231'),
('222', '232'),
('223', '233'),
('224', '234'),
('225', '235');
```
| id_departamento | id_programa_academico |
|:---------------:|:---------------------:|
| 221             | 231               |
| 222             | 232               |
| 223             | 233               |
| 224             | 234               |
| 125             | 235               |

---
### Tabla Estudiante_Beca
Creamos la tabla Estudiante_Beca:
```sql
CREATE TABLE Estudiante_Beca (
  DNI_estudiante TEXT REFERENCES estudiante (DNI),
  id_beca INTEGER REFERENCES beca (id),
  PRIMARY KEY (DNI_estudiante, id_beca) );
```
Insertamos los datos:
```sql
INSERT INTO Estudiante_Beca (DNI_estudiante, id_beca)
VALUES
('30098456A', '101'),
('12343245N', '102'),
('46477886M', '103'),
('12345678T', '104'),
('12579852L', '105');
```
| DNI_estudiante | id_beca |
|:--------------:|:-------:|
| 30098456A      | 101     |
| 12343246N      | 102     |
| 46477886M      | 103     |
| 12345679T      | 104     |
| 12579852L      | 105     |

---
### Tabla Asignatura_Curso
Creamos la tabla Asignatura_Curso:
```sql
CREATE TABLE Asignatura_Curso (
  id_asignatura INTEGER REFERENCES asignatura (id),
  id_curso INTEGER REFERENCES curso (id),
  PRIMARY KEY (id_asignatura, id_curso) );
```
Insertamos los datos:
```sql
INSERT INTO Asignatura_Curso (id_asignatura, id_curso) 
VALUES
('261', '301'),
('262', '302'),
('263', '303'),
('264', '304'),
('265', '305');
```
| id_asignatura | id_curso |
|:-------------:|:--------:|
| 261           | 301      |
| 262           | 302      |
| 263           | 303      |
| 264           | 304      iento de esta manera:|
| 265           | 305      |

---
### Tabla Aula_Curso

Creamos la tabla Aula_Curso:

```sql
CREATE TABLE Aula_Curso (
  id_aula INTEGER REFERENCES aula (id),
  id_curso INTEGER REFERENCES curso (id),
  PRIMARY KEY (id_aula, id_curso) );
```
Insertamos los datos:
```sql
INSERT INTO Aula_Curso (id_aula, id_curso) VALUES
('251', '301'),
('252', '302'),
('253', '303'),
('254', '304'),
('255', '305');
```
| id_aula | id_curso |
|:-------:|:--------:|
| 251     | 301      |
| 252     | 302      |
| 253     | 303      |
| 254     | 304      |
| 251     | 305      |

---
### Tabla Estudiante_Curso
Creamos la tabla Estudiante_Curso:
```sql
CREATE TABLE Estudiante_Curso (
  DNI_estudiante TEXT REFERENCES aula (DNI),
  id_curso INTEGER REFERENCES curso (id),
  PRIMARY KEY (DNI_estudiante, id_curso) );
```
Insertamos los datos:
```sql
INSERT INTO Estudiante_Curso (DNI_estudiante, id_curso)
VALUES
('30098456A', '301'),
('12343246N', '302'),
('46477886M', '303'),
('12345678T', '304'),
('12579852L', '305');
```
| DNI_estudiante | id_curso |
|:--------------:|:--------:|
| 30098456A      | 301      |
| 12343246N      | 302      |
| 46477886M      | 303      |
| 12345678T      | 304      |
| 12579852L      | 305      |

---
### Tabla Departamento_Empleado
Creamos la tabla Departamento_Empleado:
```sql
CREATE TABLE Departamento_Empleado (
  id_departamento INTEGER REFERENCES departamento (id),
  id_empleado INTEGER REFERENCES empleado (id),
  PRIMARY KEY (id_departamento, id_empleado)
);
```
Insertamos los datos:
```sql
INSERT INTO Departamento_Empleado (id_departamento, id_empleado)
VALUES
('221', '211'),
('222', '212'),
('223', '213'),
('224', '214'),
('225', '215');
```
| id_departamento | id_empleado |
|:---------------:|:-----------:|
| 221             | 211         |
| 222             | 212         |
| 223             | 213         |
| 224             | 214         |
| 225             | 215         |
</div>



## 5 Procedimientos:

### Procedimiento 1:
```sql
DELIMITER $
CREATE PROCEDURE InsertarNuevaDireccion(
    IN id_direccion INTEGER,select * from estudiante;
+-----------+--------+------------+-----------------------+
| DNI       | nombre | apellido   | id_programa_academico |
+-----------+--------+------------+-----------------------+
| 12343245N | Marco  | Expósito   |                   232 |
| 12345678T | Daniel | Guitérrez  |                   234 |
| 12579852L | Carla  | Perales    |                   235 |
| 20530861V | Carlos | Martínez   |                   234 |
| 30098456A | Juan   | Pérez      |                   231 |
| 46477886M | Alex   | Fernández  |                   233 |
| 47603352J | Carlos | García     |                   232 |
| 48822543H | Marta  | García     |                   235 |
| 93949478J | Lucía  | Rodríguez  |                   232 |
+-----------+--------+------------+-----------------------+
9 rows in set (0,00 sec)
    IN calle TEXT,
    IN numero INTEGER,
    IN piso INTEGER,
    IN codigo_postal INTEGER,
    IN provincia TEXT,
    IN municipio TEXT
)
BEGIN
    INSERT INTO direccion (id_direccion, calle, numero, piso, código_postal, provincia, municipio)
    VALUES (id_direccion, calle, numero, piso, codigo_postal, provincia, municipio);
END $
DELIMITER ;

-- Ejemplo:
CALL InsertarNuevaDireccion(23, 'Avenida Nueva Roca', 2, 4, 28001, 'Madrid', 'Mostoles');

select * from direccion;
+--------------+-------------------+--------+------+----------------+-------------+------------------+
| id_direccion | calle             | numero | piso | código_postal  | provincia   | municipio        |
+--------------+-------------------+--------+------+----------------+-------------+------------------+
|           10 | Cannon Street     |      6 |    1 |          40000 | Tenerife    | Santa Cruz       |
|           11 | Parque Placentero |     24 |    2 |          41000 | Madrid      | Móstoles         |
|           12 | Storage Avenue    |     48 |    3 |          50000 | Extremadura | Pisos Picados    |
|           13 | Pochinki          |     15 |    4 |          51000 | A Coruña    | Latifundio Letal |
|           14 | Garcilaso la Vega |     10 |    8 |          50000 | Extremadura | Pisos Picados    |
+--------------+-------------------+--------+------+----------------+-------------+------------------+

-- Después:

CALL InsertarNuevaDireccion(23, 'Avenida Nueva Roca', 2, 4, 28001, 'Madrid', 'Mostoles');
Query OK, 1 row affected (0,00 sec)

select * from direccion;
+--------------+--------------------+--------+------+----------------+-------------+------------------+
| id_direccion | calle              | numero | piso | código_postal  | provincia   | municipio        |
+--------------+--------------------+--------+------+----------------+-------------+------------------+
|           10 | Cannon Street      |      6 |    1 |          40000 | Tenerife    | Santa Cruz       |
|           11 | Parque Placentero  |     24 |    2 |          41000 | Madrid      | Móstoles         |
|           12 | Storage Avenue     |     48 |    3 |          50000 | Extremadura | Pisos Picados    |
|           13 | Pochinki           |     15 |    4 |          51000 | A Coruña    | Latifundio Letal |
|           14 | Garcilaso la Vega  |     10 |    8 |          50000 | Extremadura | Pisos Picados    |
|           23 | Avenida Nueva Roca |      2 |    4 |          28001 | Madrid      | Mostoles         |
+--------------+--------------------+--------+------+----------------+-------------+------------------+
6 rows in set (0,00 sec)

```
### Procedimiento 2:
```sql
DELIMITER //

CREATE PROCEDURE InsertarEstudianteAleatorio(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    
    WHILE i < cantidad DO
        SET @dni = CONCAT(FLOOR(10000000 + RAND() * 90000000), 
                          CHAR(FLOOR(65 + RAND() * 23)));

        SET @nombre = CASE FLOOR(1 + RAND() * 5)
            WHEN 1 THEN 'Luis'
            WHEN 2 THEN 'Ana'
            WHEN 3 THEN 'Marta'
            WHEN 4 THEN 'Carlos'
            ELSE 'Lucía'
            END;

        SET @apellido = CASE FLOOR(1 + RAND() * 5)
            WHEN 1 THEN 'García'
            WHEN 2 THEN 'López'
            WHEN 3 THEN 'Martínez'
            WHEN 4 THEN 'Sánchez'
            ELSE 'Rodríguez'
            END;

        SET @id_programa_academico = FLOOR(236 + RAND() * 5);

        INSERT INTO estudiante (DNI, nombre, apellido, id_programa_academico)
        VALUES (@dni, @nombre, @apellido, @id_programa_academico);

        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;



-- Antes:
select * from estudiante;
+-----------+--------+------------+-----------------------+
| DNI       | nombre | apellido   | id_programa_academico |
+-----------+--------+------------+-----------------------+
| 12343245N | Marco  | Expósito   |                   232 |
| 12345678T | Daniel | Guitérrez  |                   234 |
| 12579852L | Carla  | Perales    |                   235 |
| 30098456A | Juan   | Pérez      |                   231 |
| 46477886M | Alex   | Fernández  |                   233 |
+-----------+--------+------------+-----------------------+
5 rows in set (0,00 sec)

--Después:

CALL InsertarEstudianteAleatoria(4);
select * from estudiante;
+-----------+--------+------------+-----------------------+
| DNI       | nombre | apellido   | id_programa_academico |
+-----------+--------+------------+-----------------------+
| 12343245N | Marco  | Expósito   |                   232 |
| 12345678T | Daniel | Guitérrez  |                   234 |
| 12579852L | Carla  | Perales    |                   235 |
| 20530861V | Carlos | Martínez   |                   234 |
| 30098456A | Juan   | Pérez      |                   231 |
| 46477886M | Alex   | Fernández  |                   233 |
| 47603352J | Carlos | García     |                   232 |
| 48822543H | Marta  | García     |                   235 |
| 93949478J | Lucía  | Rodríguez  |                   232 |
+-----------+--------+------------+-----------------------+
9 rows in set (0,00 sec)

```

### Procedimiento 3:

```sql
DELIMITER //

CREATE PROCEDURE AgregarTelefonosAleatorios()
BEGIN
    DECLARE fin BOOLEAN DEFAULT FALSE;
    DECLARE dni_estudiante VARCHAR(20);
    DECLARE telefono VARCHAR(15);

    DECLARE cur CURSOR FOR
        SELECT DNI FROM estudiante;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = TRUE;

    OPEN cur;

    leer_registros: LOOP
        FETCH cur INTO dni_estudiante;
        IF fin THEN
            LEAVE leer_registros;
        END IF;

        SET telefono = CONCAT('+34', FLOOR(600000000 + RAND() * 699999999));

        UPDATE estudiante SET telefono = telefono WHERE DNI = dni_estudiante;
    END LOOP;

    CLOSE cur;
END //

DELIMITER ;

-- Antes:
select * from estudiante;
+-----------+--------+------------+-----------------------+
| DNI       | nombre | apellido   | id_programa_academico |
+-----------+--------+------------+-----------------------+
| 12343245N | Marco  | Expósito   |                   232 |
| 12345678T | Daniel | Guitérrez  |                   234 |
| 12579852L | Carla  | Perales    |                   235 |
| 20530861V | Carlos | Martínez   |                   234 |
| 30098456A | Juan   | Pérez      |                   231 |
| 46477886M | Alex   | Fernández  |                   233 |
| 47603352J | Carlos | García     |                   232 |
| 48822543H | Marta  | García     |                   235 |
| 93949478J | Lucía  | Rodríguez  |                   232 |
+-----------+--------+------------+-----------------------+
9 rows in set (0,00 sec)

-- Despues:
CALL AgregarTelefonosAleatorios();
Query OK, 0 rows affected (0,01 sec)

select * from estudiante;
+-----------+--------+------------+-----------------------+---------------+
| DNI       | nombre | apellido   | id_programa_academico | telefono      |
+-----------+--------+------------+-----------------------+---------------+
| 12343245N | Marco  | Expósito   |                   232 | +34647145670  |
| 12345678T | Daniel | Guitérrez  |                   234 | +34731328492  |
| 12579852L | Carla  | Perales    |                   235 | +341063622922 |
| 20530861V | Carlos | Martínez   |                   234 | +34631521675  |
| 30098456A | Juan   | Pérez      |                   231 | +341042986853 |
| 46477886M | Alex   | Fernández  |                   233 | +341041706935 |
| 47603352J | Carlos | García     |                   232 | +34906767811  |
| 48822543H | Marta  | García     |                   235 | +34723549608  |
| 93949478J | Lucía  | Rodríguez  |                   232 | +341292402069 |
+-----------+--------+------------+-----------------------+---------------+
9 rows in set (0,00 sec)

```

### Procedimiento 4:
```sql
DELIMITER //

CREATE PROCEDURE InsertarEmailEstudiante(
    IN email_texto TEXT,
    IN DNI_estudiante VARCHAR(20)
)
BEGIN
    DECLARE id_email INT;

    SET id_email = (SELECT COALESCE(MAX(id_email), 0) + 1 FROM email);

    INSERT INTO email (id_email, email, DNI_estudiante)
    VALUES (id_email, email_texto, DNI_estudiante);
END //

DELIMITER ;

-- Antes:
select * from email;
+----------+-------------------+----------------+
| id_email | email             | DNI_estudiante |
+----------+-------------------+----------------+
|    10001 | jp@gmail.com      | 30098456A      |
|    10002 | pj@gmail.com      | 30098456A      |
|    10003 | me@gmail.com      | 12343245N      |
|    10004 | em@gmail.com      | 12343245N      |
|    10005 | af@gmail.com      | 46477886M      |
|    10006 | dg@gmail.com      | 12345678T      |
|    10007 | cp@gmail.com      | 12579852L      |
+----------+-------------------+----------------+
7 rows in set (0,01 sec)

-- Despues: 
CALL InsertarEmailEstudiante('nuevo@example.com', '12345678T');
Query OK, 1 row affected (0,00 sec)

mysql> select * from email;
+----------+-------------------+----------------+
| id_email | email             | DNI_estudiante |
+----------+-------------------+----------------+
|        1 | nuevo@example.com | 12345678T      |
|    10001 | jp@gmail.com      | 30098456A      |
|    10002 | pj@gmail.com      | 30098456A      |
|    10003 | me@gmail.com      | 12343245N      |
|    10004 | em@gmail.com      | 12343245N      |
|    10005 | af@gmail.com      | 46477886M      |
|    10006 | dg@gmail.com      | 12345678T      |
|    10007 | cp@gmail.com      | 12579852L      |
+----------+-------------------+----------------+
8 rows in set (0,04 sec)
```
### Procedimiento 5: 
```sql
DELIMITER //

CREATE PROCEDURE InsertarProfesorNuevo(
    IN dni_profesor TEXT,
    IN nombre_profesor TEXT,
    IN apellido_profesor TEXT,
    IN id_ser_tutor INTEGER
)
BEGIN
    DECLARE id_profesor_aleatorio INT;
    DECLARE existe_profesor INT;

    SET id_profesor_aleatorio = FLOOR(100 + RAND() * 900); 
    SELECT COUNT(*) INTO existe_profesor FROM profesor WHERE id_profesor = id_profesor_aleatorio;

    WHILE existe_profesor > 0 DO
        SET id_profesor_aleatorio = FLOOR(100 + RAND() * 900); 
        SELECT COUNT(*) INTO existe_profesor FROM profesor WHERE id_profesor = id_profesor_aleatorio;
    END WHILE;

    INSERT INTO profesor (DNI, id_profesor, nombre, apellido, id_ser_tutor)
    VALUES (dni_profesor, id_profesor_aleatorio, nombre_profesor, apellido_profesor, id_ser_tutor);
END //

DELIMITER ;



-- Antes: 
select * from profesor;
+-----------+-------------+-----------+-----------+--------------+
| DNI       | id_profesor | nombre    | apellido  | id_ser_tutor |
+-----------+-------------+-----------+-----------+--------------+
| 27654371J |         101 | Manuel    | Rodriguez |            0 |
| 28084830N |         102 | Jaime     | Torres    |            1 |
| 29167225M |         103 | Verónica  | Hernandez |            0 |
| 45658895L |         105 | Juan      | Lopez     |            0 |
| 45678901A |         104 | María     | Perez     |            1 |
+-----------+-------------+-----------+-----------+--------------+
5 rows in set (0,02 sec)

-- Despues:
CALL InsertarProfesorNuevo('12345678Z', 'Mario', 'Gómez', 1);
Query OK, 1 row affected (0,00 sec)

select * from profesor;
+-----------+-------------+-----------+-----------+--------------+
| DNI       | id_profesor | nombre    | apellido  | id_ser_tutor |
+-----------+-------------+-----------+-----------+--------------+
| 12345678Z |         905 | Mario     | Gómez     |            1 |
| 27654371J |         101 | Manuel    | Rodriguez |            0 |
| 28084830N |         102 | Jaime     | Torres    |            1 |
| 29167225M |         103 | Verónica  | Hernandez |            0 |
| 45658895L |         105 | Juan      | Lopez     |            0 |
| 45678901A |         104 | María     | Perez     |            1 |
+-----------+-------------+-----------+-----------+--------------+
6 rows in set (0,00 sec)
```

## 5 Triggers:

### Trigger 1 y 2:
```sql
DELIMITER //

CREATE TRIGGER ActualizarEstadoNotaInsert
BEFORE INSERT ON nota
FOR EACH ROW
BEGIN
    IF NEW.nota <= 4 THEN
        SET NEW.estado = 'No aprueba';
    ELSE
        SET NEW.estado = 'Aprueba';
    END IF;
END //

CREATE TRIGGER ActualizarEstadoNotaUpdate
BEFORE UPDATE ON nota
FOR EACH ROW
BEGIN
    IF NEW.nota <= 4 THEN
        SET NEW.estado = 'No aprueba';
    ELSE
        SET NEW.estado = 'Aprueba';
    END IF;
END //

DELIMITER ;


-- Antes:
select * from nota;
+----+------+----------------+--------+
| id | nota | DNI_estudiante | estado |
+----+------+----------------+--------+
|  1 |    9 | 30098456A      | NULL   |
|  2 |    5 | 30098456A      | NULL   |
|  3 |    3 | 12343245N      | NULL   |
|  4 |   10 | 12343245N      | NULL   |
|  5 |    8 | 46477886M      | NULL   |
|  6 |    7 | 46477886M      | NULL   |
|  7 |    9 | 12345678T      | NULL   |
|  8 |    3 | 12345678T      | NULL   |
|  9 |    5 | 12579852L      | NULL   |
| 10 |    9 | 12579852L      | NULL   |
+----+------+----------------+--------+

-- Despues:
INSERT INTO nota (id, nota, DNI_estudiante)
VALUES ('011', 6, '12579852L');

INSERT INTO nota (id, nota, DNI_estudiante)
VALUES ('012', 3, '12579852L');


 select * from nota;
+----+------+----------------+------------+
| id | nota | DNI_estudiante | estado     |
+----+------+----------------+------------+
|  1 |    9 | 30098456A      | Aprueba    |
|  2 |    5 | 30098456A      | Aprueba    |
|  3 |    3 | 12343245N      | No aprueba |
|  4 |   10 | 12343245N      | Aprueba    |
|  5 |    8 | 46477886M      | Aprueba    |
|  6 |    7 | 46477886M      | Aprueba    |
|  7 |    9 | 12345678T      | Aprueba    |
|  8 |    3 | 12345678T      | No aprueba |
|  9 |    5 | 12579852L      | Aprueba    |
| 10 |    9 | 12579852L      | Aprueba    |
| 11 |    6 | 12579852L      | Aprueba    |
| 12 |    3 | 12579852L      | No aprueba |
+----+------+----------------+------------+
12 rows in set (0,01 sec)
```

### Trigger 3 y 4:
```sql
DELIMITER //

CREATE TRIGGER VerificarEmailInsert
BEFORE INSERT ON email
FOR EACH ROW
BEGIN
    SET NEW.estado = VerificarEstadoEmail(NEW.email);
END //

CREATE TRIGGER VerificarEmailUpdate
BEFORE UPDATE ON email
FOR EACH ROW
BEGIN
    SET NEW.estado = VerificarEstadoEmail(NEW.email);
END //

DELIMITER ;

-- Antes:
select * from email;
+----------+-------------------+----------------+--------+
| id_email | email             | DNI_estudiante | estado |
+----------+-------------------+----------------+--------+
|        1 | nuevo@example.com | 12345678T      | NULL   |
|    10001 | jp@gmail.com      | 30098456A      | NULL   |
|    10002 | pj@gmail.com      | 30098456A      | NULL   |
|    10003 | me@gmail.com      | 12343245N      | NULL   |
|    10004 | em@gmail.com      | 12343245N      | NULL   |
|    10005 | af@gmail.com      | 46477886M      | NULL   |
|    10006 | dg@gmail.com      | 12345678T      | NULL   |
|    10007 | cp@gmail.com      | 12579852L      | NULL   |
+----------+-------------------+----------------+--------+
8 rows in set (0,00 sec)

-- Despues:
select * from email;
+----------+-------------------+----------------+------------+
| id_email | email             | DNI_estudiante | estado     |
+----------+-------------------+----------------+------------+
|        1 | nuevo@example.com | 12345678T      | No Válido  |
|    10001 | jp@gmail.com      | 30098456A      | Válido     |
|    10002 | pj@gmail.com      | 30098456A      | Válido     |
|    10003 | me@gmail.com      | 12343245N      | Válido     |
|    10004 | em@gmail.com      | 12343245N      | Válido     |
|    10005 | af@gmail.com      | 46477886M      | Válido     |
|    10006 | dg@gmail.com      | 12345678T      | Válido     |
|    10007 | cp@gmail.com      | 12579852L      | Válido     |
+----------+-------------------+----------------+------------+
8 rows in set (0,00 sec)
```

### Trigger 5:
```sql
DELIMITER $$
CREATE TRIGGER validar_id_profesor
BEFORE INSERT ON profesor
FOR EACH ROW
BEGIN
    IF CHAR_LENGTH(NEW.id_profesor) > 3 THEN
        SET NEW.id_profesor = FLOOR(100 + RAND() * 100);
    END IF;
END$$
DELIMITER ;

-- Antes:
select * from profesor;
+-----------+-------------+-----------+-----------+--------------+
| DNI       | id_profesor | nombre    | apellido  | id_ser_tutor |
+-----------+-------------+-----------+-----------+--------------+
| 12345678Z |         905 | Mario     | Gómez     |            1 |
| 27654371J |         101 | Manuel    | Rodriguez |            0 |
| 28084830N |         102 | Jaime     | Torres    |            1 |
| 29167225M |         103 | Verónica  | Hernandez |            0 |
| 45658895L |         105 | Juan      | Lopez     |            0 |
| 45678901A |         104 | María     | Perez     |            1 |
+-----------+-------------+-----------+-----------+--------------+

--Despues:
-- Caso que no cumple:
INSERT INTO profesor (DNI, id_profesor, nombre, apellido, id_ser_tutor) VALUES ('12345678P', '1100', 'Marcos', 'Gutierrez', '0');

-- Caso que cumple:
INSERT INTO profesor (DNI, id_profesor, nombre, apellido, id_ser_tutor) VALUES ('12345678L', '110', 'Carlos', 'Gutierrez', '0');

SELECT * FROM profesor;
+-----------+-------------+-----------+-----------+--------------+
| DNI       | id_profesor | nombre    | apellido  | id_ser_tutor |
+-----------+-------------+-----------+-----------+--------------+
| 12345678L |         110 | Carlos    | Gutierrez |            0 | 
| 12345678P |         194 | Marcos    | Gutierrez |            0 |
| 12345678Z |         905 | Mario     | Gómez     |            1 |
| 27654371J |         101 | Manuel    | Rodriguez |            0 |
| 28084830N |         102 | Jaime     | Torres    |            1 |
| 29167225M |         103 | Verónica  | Hernandez |            0 |
| 45658895L |         105 | Juan      | Lopez     |            0 |
| 45678901A |         104 | María     | Perez     |            1 |
+-----------+-------------+-----------+-----------+--------------+
```

## 5 Funciones:

### Funcion 1:
```sql
DELIMITER //

CREATE FUNCTION VerificarEstadoEmail(email VARCHAR(255)) 
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    IF email NOT LIKE '%@gmail.com' THEN
        RETURN 'No Válido';
    ELSE
        RETURN 'Válido';
    END IF;
END //

DELIMITER ;

-- Funcion utilizada en los triggers 3 y 4
```

### Funcion 2:
```sql
DELIMITER //

CREATE FUNCTION ActualizarEstadoNotas(nota INT) RETURNS INT
DETERMINISTIC
BEGIN
      IF nota <= 4 THEN
          RETURN 'No aprueba'
      ELSE
          RETURN 'Aprueba';
      END IF;
END //

DELIMITER ;

-- Funcion utilizada en los triggers 1 y 2
```

### Funcion 3:
```sql
DELIMITER $$

CREATE FUNCTION CalcularMediaNotas() RETURNS DECIMAL(5,2) DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(5,2);
    DECLARE cantidad INT;
    
    SELECT SUM(nota) INTO total FROM nota;
    
    SELECT COUNT(*) INTO cantidad FROM nota;
    
    IF cantidad > 0 THEN
        RETURN total / cantidad;
    ELSE
        RETURN NULL;
    END IF;
END$$

DELIMITER ;

-- Resultado 
select * from nota;
+----+------+----------------+------------+
| id | nota | DNI_estudiante | estado     |
+----+------+----------------+------------+
|  1 |    9 | 30098456A      | Aprueba    |
|  2 |    5 | 30098456A      | Aprueba    |
|  3 |    3 | 12343245N      | No aprueba |
|  4 |   10 | 12343245N      | Aprueba    |
|  5 |    8 | 46477886M      | Aprueba    |
|  6 |    7 | 46477886M      | Aprueba    |
|  7 |    9 | 12345678T      | Aprueba    |
|  8 |    3 | 12345678T      | No aprueba |
|  9 |    5 | 12579852L      | Aprueba    |
| 10 |    9 | 12579852L      | Aprueba    |
| 11 |    6 | 12579852L      | Aprueba    |
| 12 |    3 | 12579852L      | No aprueba |
+----+------+----------------+------------+

SELECT CalcularMediaNotas() AS media_notas;
+-------------+
| media_notas |
+-------------+
|        6.42 |
+-------------+
1 row in set, 1 warning (0,01 sec)

```

### Funcion 4:
```sql
DELIMITER $$
CREATE FUNCTION ContarEstudiantes() RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
    DECLARE estudiantes_no_aprueban INT;
    DECLARE estudiantes_aprueban INT;
    DECLARE resultado VARCHAR(50);
    
    SELECT COUNT(nota) INTO estudiantes_no_aprueban FROM nota WHERE estado = 'No aprueba';
    
    SELECT COUNT(nota) INTO estudiantes_aprueban FROM nota WHERE estado = 'Aprueba';
    
    SET resultado = CONCAT('No aprueban: ', estudiantes_no_aprueban, ', Aprueban: ', estudiantes_aprueban);
    
    RETURN resultado;
END;
$$
DELIMITER ;

-- Resultado 
select * from nota;
+----+------+----------------+------------+
| id | nota | DNI_estudiante | estado     |
+----+------+----------------+------------+
|  1 |    9 | 30098456A      | Aprueba    |
|  2 |    5 | 30098456A      | Aprueba    |
|  3 |    3 | 12343245N      | No aprueba |
|  4 |   10 | 12343245N      | Aprueba    |
|  5 |    8 | 46477886M      | Aprueba    |
|  6 |    7 | 46477886M      | Aprueba    |
|  7 |    9 | 12345678T      | Aprueba    |
|  8 |    3 | 12345678T      | No aprueba |
|  9 |    5 | 12579852L      | Aprueba    |
| 10 |    9 | 12579852L      | Aprueba    |
| 11 |    6 | 12579852L      | Aprueba    |
| 12 |    3 | 12579852L      | No aprueba |
+----+------+----------------+------------+

SELECT ContarEstudiantes() as resultados;
+-----------------------------+
| resultados                  |
+-----------------------------+
| No aprueban: 3, Aprueban: 9 |
+-----------------------------+

```

### Funcion 5:
```sql
DELIMITER $$

CREATE FUNCTION ContarProfesoresTutores() RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
    DECLARE num_tutores INT;
    DECLARE num_no_tutores INT;
    DECLARE resultado VARCHAR(100);

    SELECT COUNT(id_ser_tutor) INTO num_tutores FROM profesor WHERE id_ser_tutor = 1;
    SELECT COUNT(id_ser_tutor) INTO num_no_tutores FROM profesor WHERE id_ser_tutor = 0;

    SET resultado = CONCAT('Profesores tutores: ', num_tutores, ', Profesores no tutores: ', num_no_tutores);

    RETURN resultado;
END$$

DELIMITER ;

-- Resultado: 
SELECT * FROM profesor;
+-----------+-------------+-----------+-----------+--------------+
| DNI       | id_profesor | nombre    | apellido  | id_ser_tutor |
+-----------+-------------+-----------+-----------+--------------+
| 12345678L |         110 | Carlos    | Gutierrez |            0 | 
| 12345678P |         194 | Marcos    | Gutierrez |            0 |
| 12345678Z |         905 | Mario     | Gómez     |            1 |
| 27654371J |         101 | Manuel    | Rodriguez |            0 |
| 28084830N |         102 | Jaime     | Torres    |            1 |
| 29167225M |         103 | Verónica  | Hernandez |            0 |
| 45658895L |         105 | Juan      | Lopez     |            0 |
| 45678901A |         104 | María     | Perez     |            1 |
+-----------+-------------+-----------+-----------+--------------+

SELECT ContarProfesoresTutores() as resultado;
+-------------------------------------------------+
| resultado                                       |
+-------------------------------------------------+
| Profesores tutores: 4, Profesores no tutores: 6 |
+-------------------------------------------------+
```




