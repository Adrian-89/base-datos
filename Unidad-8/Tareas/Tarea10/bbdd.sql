DROP DATABASE test;

CREATE DATABASE test;

Use test;

CREATE TABLE alumnos ( 
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido1 VARCHAR(100),
    apellido2 VARCHAR(100),
    nota INT
);


CREATE TABLE log_cambios_email (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_alumno INT, 
    fecha_hora DATETIME, 
    old_email VARCHAR(100),
    new_email VARCHAR(100)
);
