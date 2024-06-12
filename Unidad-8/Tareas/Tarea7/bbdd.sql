CREATE DATABASE salario;
USE salario;
CREATE TABLE persona (
        id VARCHAR(30) PRIMARY KEY,
        nombre VARCHAR(100),
        salario_base INT,
        subsidio INT,
        salud VARCHAR(100),
        pension INT,
        bono VARCHAR(100),
        integral VARCHAR(100)
);


