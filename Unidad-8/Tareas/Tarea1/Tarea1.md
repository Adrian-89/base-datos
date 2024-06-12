## Crea la BBDD
```sql
CREATE DATABASE IF NOT EXISTS SimpleDB;

USE SimpleDB;

CREATE TABLE IF NOT EXISTS Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);
```

## Realiza la inserción de algunos datos de prueba.
```sql

INSERT INTO Users (UserName, Email) VALUES ('Juan', 'juan@example.com');
INSERT INTO Users (UserName, Email) VALUES ('María', 'maria@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Pedro', 'pedro@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Diego', 'diego@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Manolo', 'manolo@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Ana', 'ana@example.com');


INSERT INTO Products (ProductName, Price) VALUES ('Producto 1', 10.99);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 2', 20.50);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 3', 15.75);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 4', 10.75);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 5', 14.85);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 6', 12.10);


```



## Crea procedimientos almacenados para realizar operaciones como insertar un nuevo usuario, actualizar el nombre de un usuario, etc.
### Procedimiento para insertar un nuevo usuario.
```sql
DELIMITER $$ 
CREATE procedure insert_user(in user_name VARCHAR(25), in email VARCHAR(50))
BEGIN
INSERT INTO Users (UserName, Email) VALUES (user_name, email);
END $$

DELIMITER ;



--llamamos a la funcion
CALL insert_user('Raquel', 'raquel@example.com');
Query OK, 1 row affected (0,01 sec)

mysql> select * from Users;
+--------+----------+--------------------+
| UserID | UserName | Email              |
+--------+----------+--------------------+
|      1 | Juan     | juan@example.com   |
|      2 | María    | maria@example.com  |
|      3 | Pedro    | pedro@example.com  |
|      4 | Diego    | diego@example.com  |
|      5 | Manolo   | manolo@example.com |
|      6 | Ana      | ana@example.com    |
|      7 | Raquel   | raquel@example.com |
+--------+----------+--------------------+
```
### Procedimiento para actualizar el nombre de un usuario.
```sql
DELIMITER $$ 
CREATE procedure update_user(in user_name VARCHAR(25), in email VARCHAR(50))
BEGIN
UPDATE Users set UserName='user_name' where UserName='user_name';
END $$

DELIMITER ;
```


