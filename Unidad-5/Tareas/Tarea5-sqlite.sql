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
SELECT * FROM autor WHERE nombre REGEXP '[aeiouAEIOU].*[aeiouAEIOU]';
/**
┌────┬─────────────────┐
│ id │     nombre      │
├────┼─────────────────┤
│ 1  │ J.K. Rowling    │
│ 2  │ Stephen King    │
│ 3  │ George Orwell   │
│ 4  │ Jane Austen     │
│ 5  │ Agatha Christie │
│ 6  │ J.K. Rowling    │
│ 7  │ Stephen King    │
│ 8  │ George Orwell   │
│ 9  │ Jane Austen     │
│ 10 │ Agatha Christie │
└────┴─────────────────┘
**/
-- Libros con precios que tienen dos dígitos decimales exactos.
SELECT * FROM libro WHERE precio REGEXP '\\.[0-9]{2}$';      
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
SELECT * FROM autor WHERE nombre REGEXP '^.{5}$';
-- Seleccionar los libros cuya editorial es diferente de "EditorialX":
SELECT * FROM libro WHERE editorial not REGEXP 'EditorialX';
/**
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| codigo |              titulo               | autor_id |                  editorial                  | precio |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons                     | 20.99  |
| 2      | To Kill a Mockingbird             | 7        | J.B. Lippincott & Co.                       | 15.95  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company                   | 18.75  |
| 4      | One Hundred Years of Solitude     | 9        | Harper & Row                                | 22.5   |
| 5      | Brave New World                   | 3        | Chatto & Windus                             | 17.99  |
| 6      | The Hobbit                        | 10       | George Allen & Unwin                        | 24.99  |
| 7      | The Lord of the Rings             | 10       | George Allen & Unwin                        | 35.5   |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles                               | 28.99  |
| 9      | The Odyssey                       | 12       | Homer                                       | 14.95  |
| 10     | The Iliad                         | 12       | Homer                                       | 14.95  |
| 11     | Moby-Dick                         | 13       | Harper & Brothers                           | 19.99  |
| 12     | The Road                          | 14       | Alfred A. Knopf                             | 16.75  |
| 13     | The Grapes of Wrath               | 15       | The Viking Press                            | 21.5   |
| 14     | Wuthering Heights                 | 16       | Emily Brontë                                | 12.99  |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons                     | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                                      | 27.99  |
| 17     | The Picture of Dorian Gray        | 19       | Ward, Lock, and Company                     | 14.5   |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes                               | 16.99  |
| 19     | Frankenstein                      | 21       | Lackington, Hughes, Harding, Mavor, & Jones | 13.25  |
| 20     | Alice's Adventures in Wonderland  | 22       | Macmillan                                   | 11.5   |
| 21     | The Prince                        | 23       | Niccolò Machiavelli                         | 10.99  |
| 22     | Don Quixote                       | 24       | Francisco de Robles                         | 26.75  |
| 23     | The Divine Comedy                 | 25       | Dante Alighieri                             | 20.5   |
| 24     | Anna Karenina                     | 26       | The Russian Messenger                       | 23.99  |
| 25     | Les Misérables                    | 27       | A. Lacroix, Verboeckhoven & Cie.            | 29.75  |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers                        | 14.99  |
| 27     | The Wind in the Willows           | 29       | Methuen & Co.                               | 17.5   |
| 28     | War and Peace                     | 26       | The Russian Messenger                       | 33.25  |
| 29     | Crime and Punishment              | 30       | The Russian Messenger                       | 19.99  |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
**/
-- Obtener todos los autores cuyo nombre contiene al menos una vocal:
select * from autor where nombre regexp '[aeiouAEIUO]';
/**
┌────┬─────────────────┐
│ id │     nombre      │
├────┼─────────────────┤
│ 1  │ J.K. Rowling    │
│ 2  │ Stephen King    │
│ 3  │ George Orwell   │
│ 4  │ Jane Austen     │
│ 5  │ Agatha Christie │
│ 6  │ J.K. Rowling    │
│ 7  │ Stephen King    │
│ 8  │ George Orwell   │
│ 9  │ Jane Austen     │
│ 10 │ Agatha Christie │
└────┴─────────────────┘
**/
-- Seleccionar los libros cuyo título comienza con una letra mayúscula:
select * from libro where titulo regexp '^[A-Z]';
/**
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| codigo |              titulo               | autor_id |                  editorial                  | precio |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons                     | 20.99  |
| 2      | To Kill a Mockingbird             | 7        | J.B. Lippincott & Co.                       | 15.95  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company                   | 18.75  |
| 4      | One Hundred Years of Solitude     | 9        | Harper & Row                                | 22.5   |
| 5      | Brave New World                   | 3        | Chatto & Windus                             | 17.99  |
| 6      | The Hobbit                        | 10       | George Allen & Unwin                        | 24.99  |
| 7      | The Lord of the Rings             | 10       | George Allen & Unwin                        | 35.5   |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles                               | 28.99  |
| 9      | The Odyssey                       | 12       | Homer                                       | 14.95  |
| 10     | The Iliad                         | 12       | Homer                                       | 14.95  |
| 11     | Moby-Dick                         | 13       | Harper & Brothers                           | 19.99  |
| 12     | The Road                          | 14       | Alfred A. Knopf                             | 16.75  |
| 13     | The Grapes of Wrath               | 15       | The Viking Press                            | 21.5   |
| 14     | Wuthering Heights                 | 16       | Emily Brontë                                | 12.99  |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons                     | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                                      | 27.99  |
| 17     | The Picture of Dorian Gray        | 19       | Ward, Lock, and Company                     | 14.5   |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes                               | 16.99  |
| 19     | Frankenstein                      | 21       | Lackington, Hughes, Harding, Mavor, & Jones | 13.25  |
| 20     | Alice's Adventures in Wonderland  | 22       | Macmillan                                   | 11.5   |
| 21     | The Prince                        | 23       | Niccolò Machiavelli                         | 10.99  |
| 22     | Don Quixote                       | 24       | Francisco de Robles                         | 26.75  |
| 23     | The Divine Comedy                 | 25       | Dante Alighieri                             | 20.5   |
| 24     | Anna Karenina                     | 26       | The Russian Messenger                       | 23.99  |
| 25     | Les Misérables                    | 27       | A. Lacroix, Verboeckhoven & Cie.            | 29.75  |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers                        | 14.99  |
| 27     | The Wind in the Willows           | 29       | Methuen & Co.                               | 17.5   |
| 28     | War and Peace                     | 26       | The Russian Messenger                       | 33.25  |
| 29     | Crime and Punishment              | 30       | The Russian Messenger                       | 19.99  |
+--------+-----------------------------------+----------+---------------------------------------------+--------+
**/
-- Obtener todos los autores cuyo nombre no contiene la letra "r":
select * from autor where nombre not regexp '[r]'; 
/**
+----+--------------+
| id |    nombre    |
+----+--------------+
| 1  | J.K. Rowling |
| 2  | Stephen King |
| 4  | Jane Austen  |
+----+--------------+
**/

-- Seleccionar los libros cuya editorial empieza con la letra "P":
select * from libro where editorial regexp '^P'
/**
+--------+---------------------------+----------+-----------+--------+
| codigo |          titulo           | autor_id | editorial | precio |
+--------+---------------------------+----------+-----------+--------+
| 16     | The Count of Monte Cristo | 18       | Pétion    | 27.99  |
+--------+---------------------------+----------+-----------+--------+
**/

-- Obtener todos los autores cuyo nombre tiene exactamente 6 caracteres:
select * from autor where nombre regexp '^......$';
-- No da ningun resultado dado que no hay un nombre que tenca exactamee 6 caracteres

-- Seleccionar los libros cuyo título contiene al menos un número:
select * from libro where titulo regexp '\\[0-9]$';
-- No da ningun resultado dado que no hay ninguno que cumpla los requisitos dela consulta

-- Obtener todos los autores cuyo nombre inicia con una vocal:
select * from autor where nombre regexp '[^AEIUO]';
/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 1  | J.K. Rowling    |
| 2  | Stephen King    |
| 3  | George Orwell   |
| 4  | Jane Austen     |
| 5  | Agatha Christie |
+----+-----------------+
**/
-- Obtener todos los autores cuyo nombre no contiene espacios en blanco:
select * from autor where nombre not regexp \s;
-- No da ningun resultado dado que no hay ninguno que cumpla los requisitos dela consulta

-- Seleccionar los libros cuyo título termina con una vocal:
SELECT titulo from libro where regexp '[AEIUO$]';
-- Obtener todos los autores cuyo nombre contiene la secuencia "er":

-- Seleccionar los libros cuyo título empieza con la palabra "The":
select * from libro where titulo regexp '^The';
/**
+--------+-----------------------------------+----------+---------------------------+--------+
| codigo |              titulo               | autor_id |         editorial         | precio |
+--------+-----------------------------------+----------+---------------------------+--------+
| 1      | The Great Gatsby                  | 6        | Charles Scribner's Sons   | 20.99  |
| 3      | The Catcher in the Rye            | 8        | Little, Brown and Company | 18.75  |
| 6      | The Hobbit                        | 10       | George Allen & Unwin      | 24.99  |
| 7      | The Lord of the Rings             | 10       | George Allen & Unwin      | 35.5   |
| 8      | The Chronicles of Narnia          | 11       | Geoffrey Bles             | 28.99  |
| 9      | The Odyssey                       | 12       | Homer                     | 14.95  |
| 10     | The Iliad                         | 12       | Homer                     | 14.95  |
| 12     | The Road                          | 14       | Alfred A. Knopf           | 16.75  |
| 13     | The Grapes of Wrath               | 15       | The Viking Press          | 21.5   |
| 15     | The Old Man and the Sea           | 17       | Charles Scribner's Sons   | 18.95  |
| 16     | The Count of Monte Cristo         | 18       | Pétion                    | 27.99  |
| 17     | The Picture of Dorian Gray        | 19       | Ward, Lock, and Company   | 14.5   |
| 18     | The Adventures of Sherlock Holmes | 20       | George Newnes             | 16.99  |
| 21     | The Prince                        | 23       | Niccolò Machiavelli       | 10.99  |
| 23     | The Divine Comedy                 | 25       | Dante Alighieri           | 20.5   |
| 26     | The Jungle Book                   | 28       | Macmillan Publishers      | 14.99  |
| 27     | The Wind in the Willows           | 29       | Methuen & Co.             | 17.5   |
+--------+-----------------------------------+----------+---------------------------+--------+
**/
-- Obtener todos los autores cuyo nombre tiene al menos una letra mayúscula:
select * from autor where nombre regexp '[A-Z]+';
/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 1  | J.K. Rowling    |
| 2  | Stephen King    |
| 3  | George Orwell   |
| 4  | Jane Austen     |
| 5  | Agatha Christie |
+----+-----------------+

**/
-- Seleccionar los libros cuyo precio es un número decimal con exactamente dos decimales:
select * from libro where precio REGEXP '\\.[0-9]{2}$';
-- No da ningun resultado dado que no hay ninguno que cumpla los requisitos dela consulta

-- Obtener todos los autores cuyo nombre no contiene números:
SELECT * FROM autor WHERE nombre not REGEXP '[0-9]';
/**
┌────┬─────────────────┐
│ id │     nombre      │
├────┼─────────────────┤
│ 1  │ J.K. Rowling    │
│ 2  │ Stephen King    │
│ 3  │ George Orwell   │
│ 4  │ Jane Austen     │
│ 5  │ Agatha Christie │
│ 6  │ J.K. Rowling    │
│ 7  │ Stephen King    │
│ 8  │ George Orwell   │
│ 9  │ Jane Austen     │
│ 10 │ Agatha Christie │
└────┴─────────────────┘
**/
-- Seleccionar los libros cuyo título contiene al menos tres vocales:

-- Obtener todos los autores cuyo nombre inicia con una consonante:
SELECT * FROM autor WHERE nombre not regexp '^[AEIOU]';
/**
+----+---------------+
| id |    nombre     |
+----+---------------+
| 1  | J.K. Rowling  |
| 2  | Stephen King  |
| 3  | George Orwell |
| 4  | Jane Austen   |
+----+---------------+
**/
-- Seleccionar los libros cuyo título no contiene la palabra "Science":
SELECT * FROM libro WHERE titulo not REGEXP 'Science';
/**
┌────────┬───────────────────────────────────┬──────────┬─────────────────────────────────────────────┬────────┐
│ codigo │              titulo               │ autor_id │                  editorial                  │ precio │
├────────┼───────────────────────────────────┼──────────┼─────────────────────────────────────────────┼────────┤
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │
│ 4      │ One Hundred Years of Solitude     │ 9        │ Harper & Row                                │ 22.5   │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │
│ 6      │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │
│ 7      │ The Lord of the Rings             │ 10       │ George Allen & Unwin                        │ 35.5   │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │
│ 9      │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │
│ 10     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │
│ 11     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │
│ 12     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │
│ 13     │ The Grapes of Wrath               │ 15       │ The Viking Press                            │ 21.5   │
│ 14     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │
│ 17     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company                     │ 14.5   │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │
│ 19     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │
│ 20     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                                   │ 11.5   │
│ 21     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │
│ 22     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │
│ 23     │ The Divine Comedy                 │ 25       │ Dante Alighieri                             │ 20.5   │
│ 24     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │
│ 25     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │
│ 27     │ The Wind in the Willows           │ 29       │ Methuen & Co.                               │ 17.5   │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │
│ 30     │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │
│ 31     │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │
│ 32     │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │
│ 33     │ One Hundred Years of Solitude     │ 9        │ Harper & Row                                │ 22.5   │
│ 34     │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │
│ 35     │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │
│ 36     │ The Lord of the Rings             │ 10       │ George Allen & Unwin                        │ 35.5   │
│ 37     │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │
│ 38     │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │
│ 39     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │
│ 40     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │
│ 41     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │
│ 42     │ The Grapes of Wrath               │ 15       │ The Viking Press                            │ 21.5   │
│ 43     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │
│ 44     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │
│ 45     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │
│ 46     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company                     │ 14.5   │
│ 47     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │
│ 48     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │
│ 49     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                                   │ 11.5   │
│ 50     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │
│ 51     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │
│ 52     │ The Divine Comedy                 │ 25       │ Dante Alighieri                             │ 20.5   │
│ 53     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │
│ 54     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │
│ 55     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │
│ 56     │ The Wind in the Willows           │ 29       │ Methuen & Co.                               │ 17.5   │
│ 57     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │
│ 58     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │
└────────┴───────────────────────────────────┴──────────┴─────────────────────────────────────────────┴────────┘
**/
-- Obtener todos los autores cuyo nombre tiene al menos una letra repetida consecutivamente:
SELECT * FROM autor WHERE nombre regexp '[a-zA-Z]{2}';
/**
+----+-----------------+
| id |     nombre      |
+----+-----------------+
| 1  | J.K. Rowling    |
| 2  | Stephen King    |
| 3  | George Orwell   |
| 4  | Jane Austen     |
| 5  | Agatha Christie |
+----+-----------------+

**/
-- Obtener todos los autores cuyo nombre empieza con "M" o termina con "n":
SELECT * FROM autor WHERE nombre regexp '^M|n$';
-- No da ningun resultado dado que no hay ninguno que cumpla los requisitos dela consulta


-- Obtener todos los autores cuyo nombre no contiene caracteres especiales:
