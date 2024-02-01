-- Selección de libros cuyo título comienza con "H".
select titulo from libro where titulo regexp '^H';
-- no da ningun resultado dado que no hay ninguno que comience con la H

-- Libros escritos por autores cuyos nombres terminan con "ing".


-- Libros con títulos que contienen la palabra "and" en cualquier posición.
select titulo from libro where titulo regexp 'and';
/**
+----------------------------------+
|              titulo              |
+----------------------------------+
| The Old Man and the Sea          |
| Alice's Adventures in Wonderland |
| War and Peace                    |
| Crime and Punishment             |
+----------------------------------+
**/

-- Libros cuyo título comienza con una vocal.
SELECT * FROM libro WHERE titulo REGEXP '^[aeiouAEIOU]';
/**
+--------+----------------------------------+----------+-----------------------+--------+
| codigo |              titulo              | autor_id |       editorial       | precio |
+--------+----------------------------------+----------+-----------------------+--------+
| 4      | One Hundred Years of Solitude    | 9        | Harper & Row          | 22.5   |
| 20     | Alice's Adventures in Wonderland | 22       | Macmillan             | 11.5   |
| 24     | Anna Karenina                    | 26       | The Russian Messenger | 23.99  |
+--------+----------------------------------+----------+-----------------------+--------+
**/

-- Libros cuyo autor tiene al menos una vocal repetida.

-- Libros con precios que tienen dos dígitos decimales exactos.
SELECT * FROM libro WHERE precio REGEXP '\\.[0-9]{2}$';        ?????
-- Libros cuyos títulos tienen al menos tres palabras.
SELECT * FROM libro WHERE titulo LIKE '% % %';
/**
+--------+-----------------------------------+----------+---------------------------+--------+
| codigo |              titulo               | autor_id |         editorial         | precio |
+--------+-----------------------------------+----------+---------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons   | 20.99  |
| 2      | To Kill a Mockingbird             | 7        | J.B. Lippincott & Co.     | 15.95  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company | 18.75  |
| 4      | One Hundred Years of Solitude     | 9        | Harper & Row              | 22.5   |
| 5      | Brave New World                   | 3        | Chatto & Windus           | 17.99  |
| 7      | The Lord of the Rings             | 10       | George Allen & Unwin      | 35.5   |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles             | 28.99  |
| 13     | The Grapes of Wrath               | 15       | The Viking Press          | 21.5   |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons   | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                    | 27.99  |
| 17     | The Picture of Dorian Gray        | 19       | Ward, Lock, and Company   | 14.5   |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes             | 16.99  |
| 20     | Alice's Adventures in Wonderland  | 22       | Macmillan                 | 11.5   |
| 23     | The Divine Comedy                 | 25       | Dante Alighieri           | 20.5   |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers      | 14.99  |
| 27     | The Wind in the Willows           | 29       | Methuen & Co.             | 17.5   |
| 28     | War and Peace                     | 26       | The Russian Messenger     | 33.25  |
| 29     | Crime and Punishment              | 30       | The Russian Messenger     | 19.99  |
+--------+-----------------------------------+----------+---------------------------+--------+
**/

-- Obtener todos los autores cuyo nombre empieza con la letra "A":
SELECT * FROM autor WHERE nombre REGEXP '^A';
/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 5  | Agatha Christie |
+----+-----------------+
**/

-- Seleccionar los libros cuyo título contiene la palabra "SQL":
SELECT * FROM libro WHERE titulo REGEXP 'SQL';
-- No da ningun resultado porque no existe ningun nombre que contenga SQL

-- Obtener todos los autores cuyo nombre termina con "ez":
SELECT * FROM autor where nombre regexp 'ez$';
--No da ningun resultado porque no existe ningun nombre que termine en ez

-- Obtener todos los autores cuyo nombre tiene al menos 5 caracteres:

-- Seleccionar los libros cuya editorial es diferente de "EditorialX":

-- Obtener todos los autores cuyo nombre contiene al menos una vocal:

-- Seleccionar los libros cuyo título comienza con una letra mayúscula:

-- Obtener todos los autores cuyo nombre no contiene la letra "r":

-- Seleccionar los libros cuya editorial empieza con la letra "P":

-- Obtener todos los autores cuyo nombre tiene exactamente 6 caracteres:

-- Seleccionar los libros cuyo título contiene al menos un número:

-- Obtener todos los autores cuyo nombre inicia con una vocal:

-- Obtener todos los autores cuyo nombre no contiene espacios en blanco:

-- Seleccionar los libros cuyo título termina con una vocal:

-- Obtener todos los autores cuyo nombre contiene la secuencia "er":

-- Seleccionar los libros cuyo título empieza con la palabra "The":

-- Obtener todos los autores cuyo nombre tiene al menos una letra mayúscula:

-- Seleccionar los libros cuyo precio es un número decimal con exactamente dos decimales:

-- Obtener todos los autores cuyo nombre no contiene números:

-- Seleccionar los libros cuyo título contiene al menos tres vocales:

-- Obtener todos los autores cuyo nombre inicia con una consonante:

-- Seleccionar los libros cuyo título no contiene la palabra "Science":

-- Obtener todos los autores cuyo nombre tiene al menos una letra repetida consecutivamente:

-- Obtener todos los autores cuyo nombre empieza con "M" o termina con "n":

-- Obtener todos los autores cuyo nombre no contiene caracteres especiales: