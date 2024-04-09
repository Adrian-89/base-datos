Realiza cada una de las siguientes consultas:
/**
    Actores que tienen de primer nombre Scarlett.
select first_name from actor where first_name = 'Scarlett';
+------------+
| first_name |
+------------+
| SCARLETT   |
| SCARLETT   |
+------------+
2 rows in set (0,00 sec)
    Actores que tienen de apellido Johansson.
    select last_name from actor where last_name = 'Johansson';
+-----------+
| last_name |
+-----------+
| JOHANSSON |
| JOHANSSON |
| JOHANSSON |
+-----------+
3 rows in set (0,00 sec)
    Actores que contengan una O en su nombre.
    select * from actor where first_name regexp '[Oo]';
+----------+-------------+--------------+---------------------+
| actor_id | first_name  | last_name    | last_update         |
+----------+-------------+--------------+---------------------+
|        1 | PENELOPE    | GUINESS      | 2006-02-15 04:34:33 |
|        5 | JOHNNY      | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
|        9 | JOE         | SWANK        | 2006-02-15 04:34:33 |
|       11 | ZERO        | CAGE         | 2006-02-15 04:34:33 |
|       19 | BOB         | FAWCETT      | 2006-02-15 04:34:33 |
|       24 | CAMERON     | STREEP       | 2006-02-15 04:34:33 |
|       28 | WOODY       | HOFFMAN      | 2006-02-15 04:34:33 |
|       38 | TOM         | MCKELLEN     | 2006-02-15 04:34:33 |
|       39 | GOLDIE      | BRODY        | 2006-02-15 04:34:33 |
|       40 | JOHNNY      | CAGE         | 2006-02-15 04:34:33 |
|       41 | JODIE       | DEGENERES    | 2006-02-15 04:34:33 |
|       42 | TOM         | MIRANDA      | 2006-02-15 04:34:33 |
|       54 | PENELOPE    | PINKETT      | 2006-02-15 04:34:33 |
|       63 | CAMERON     | WRAY         | 2006-02-15 04:34:33 |
|       78 | GROUCHO     | SINATRA      | 2006-02-15 04:34:33 |
|       82 | WOODY       | JOLIE        | 2006-02-15 04:34:33 |
|       91 | CHRISTOPHER | BERRY        | 2006-02-15 04:34:33 |
|      104 | PENELOPE    | CRONYN       | 2006-02-15 04:34:33 |
|      106 | GROUCHO     | DUNST        | 2006-02-15 04:34:33 |
|      111 | CAMERON     | ZELLWEGER    | 2006-02-15 04:34:33 |
|      113 | MORGAN      | HOPKINS      | 2006-02-15 04:34:33 |
|      114 | MORGAN      | MCDORMAND    | 2006-02-15 04:34:33 |
|      115 | HARRISON    | BALE         | 2006-02-15 04:34:33 |
|      120 | PENELOPE    | MONROE       | 2006-02-15 04:34:33 |
|      137 | MORGAN      | WILLIAMS     | 2006-02-15 04:34:33 |
|      140 | WHOOPI      | HURT         | 2006-02-15 04:34:33 |
|      151 | GEOFFREY    | HESTON       | 2006-02-15 04:34:33 |
|      162 | OPRAH       | KILMER       | 2006-02-15 04:34:33 |
|      163 | CHRISTOPHER | WEST         | 2006-02-15 04:34:33 |
|      171 | OLYMPIA     | PFEIFFER     | 2006-02-15 04:34:33 |
|      172 | GROUCHO     | WILLIAMS     | 2006-02-15 04:34:33 |
|      176 | JON         | CHASE        | 2006-02-15 04:34:33 |
|      188 | ROCK        | DUKAKIS      | 2006-02-15 04:34:33 |
|      191 | GREGORY     | GOODING      | 2006-02-15 04:34:33 |
|      192 | JOHN        | SUVARI       | 2006-02-15 04:34:33 |
|      200 | THORA       | TEMPLE       | 2006-02-15 04:34:33 |
+----------+-------------+--------------+---------------------+
36 rows in set (0,00 sec)
    Actores que contengan una O en su nombre y en una A en su apellido.
    select * from actor where first_name regexp '[Oo]' and  last_name regexp '[Aa]';

    Actores que contengan dos O en su nombre y en una A en su apellido.
    select * from actor where first_name regexp '[Oo]' and  last_name regexp
 '[Aa]';
+----------+------------+--------------+---------------------+
| actor_id | first_name | last_name    | last_update         |
+----------+------------+--------------+---------------------+
|        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
|        9 | JOE        | SWANK        | 2006-02-15 04:34:33 |
|       11 | ZERO       | CAGE         | 2006-02-15 04:34:33 |
|       19 | BOB        | FAWCETT      | 2006-02-15 04:34:33 |
|       28 | WOODY      | HOFFMAN      | 2006-02-15 04:34:33 |
|       40 | JOHNNY     | CAGE         | 2006-02-15 04:34:33 |
|       42 | TOM        | MIRANDA      | 2006-02-15 04:34:33 |
|       63 | CAMERON    | WRAY         | 2006-02-15 04:34:33 |
|       78 | GROUCHO    | SINATRA      | 2006-02-15 04:34:33 |
|      114 | MORGAN     | MCDORMAND    | 2006-02-15 04:34:33 |
|      115 | HARRISON   | BALE         | 2006-02-15 04:34:33 |
|      137 | MORGAN     | WILLIAMS     | 2006-02-15 04:34:33 |
|      172 | GROUCHO    | WILLIAMS     | 2006-02-15 04:34:33 |
|      176 | JON        | CHASE        | 2006-02-15 04:34:33 |
|      188 | ROCK       | DUKAKIS      | 2006-02-15 04:34:33 |
|      192 | JOHN       | SUVARI       | 2006-02-15 04:34:33 |
+----------+------------+--------------+---------------------+
16 rows in set (0,00 sec)
    Actores donde su tercera letra sea B.
    select * from actor where first_name regexp '^..b';
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|       15 | CUBA       | OLIVIER   | 2006-02-15 04:34:33 |
|       19 | BOB        | FAWCETT   | 2006-02-15 04:34:33 |
|      118 | CUBA       | ALLEN     | 2006-02-15 04:34:33 |
|      125 | ALBERT     | NOLTE     | 2006-02-15 04:34:33 |
|      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
|      182 | DEBBIE     | AKROYD    | 2006-02-15 04:34:33 |
|      189 | CUBA       | BIRCH     | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
7 rows in set (0,00 sec)
    Ciudades que empiezan por a.
     select * from city where city regexp '^A';
+---------+-------------------------+------------+---------------------+
| city_id | city                    | country_id | last_update         |
+---------+-------------------------+------------+---------------------+
|       1 | A Coruña (La Coruña)    |         87 | 2006-02-15 04:45:25 |
|       2 | Abha                    |         82 | 2006-02-15 04:45:25 |
|       3 | Abu Dhabi               |        101 | 2006-02-15 04:45:25 |
|       4 | Acuña                   |         60 | 2006-02-15 04:45:25 |
|       5 | Adana                   |         97 | 2006-02-15 04:45:25 |
|       6 | Addis Abeba             |         31 | 2006-02-15 04:45:25 |
|       7 | Aden                    |        107 | 2006-02-15 04:45:25 |
|       8 | Adoni                   |         44 | 2006-02-15 04:45:25 |
|       9 | Ahmadnagar              |         44 | 2006-02-15 04:45:25 |
|      10 | Akishima                |         50 | 2006-02-15 04:45:25 |
|      11 | Akron                   |        103 | 2006-02-15 04:45:25 |
|      12 | al-Ayn                  |        101 | 2006-02-15 04:45:25 |
|      13 | al-Hawiya               |         82 | 2006-02-15 04:45:25 |
|      14 | al-Manama               |         11 | 2006-02-15 04:45:25 |
|      15 | al-Qadarif              |         89 | 2006-02-15 04:45:25 |
|      16 | al-Qatif                |         82 | 2006-02-15 04:45:25 |
|      17 | Alessandria             |         49 | 2006-02-15 04:45:25 |
|      18 | Allappuzha (Alleppey)   |         44 | 2006-02-15 04:45:25 |
|      19 | Allende                 |         60 | 2006-02-15 04:45:25 |
|      20 | Almirante Brown         |          6 | 2006-02-15 04:45:25 |
|      21 | Alvorada                |         15 | 2006-02-15 04:45:25 |
|      22 | Ambattur                |         44 | 2006-02-15 04:45:25 |
|      23 | Amersfoort              |         67 | 2006-02-15 04:45:25 |
|      24 | Amroha                  |         44 | 2006-02-15 04:45:25 |
|      25 | Angra dos Reis          |         15 | 2006-02-15 04:45:25 |
|      26 | Anápolis                |         15 | 2006-02-15 04:45:25 |
|      27 | Antofagasta             |         22 | 2006-02-15 04:45:25 |
|      28 | Aparecida de Goiânia    |         15 | 2006-02-15 04:45:25 |
|      29 | Apeldoorn               |         67 | 2006-02-15 04:45:25 |
|      30 | Araçatuba               |         15 | 2006-02-15 04:45:25 |
|      31 | Arak                    |         46 | 2006-02-15 04:45:25 |
|      32 | Arecibo                 |         77 | 2006-02-15 04:45:25 |
|      33 | Arlington               |        103 | 2006-02-15 04:45:25 |
|      34 | Ashdod                  |         48 | 2006-02-15 04:45:25 |
|      35 | Ashgabat                |         98 | 2006-02-15 04:45:25 |
|      36 | Ashqelon                |         48 | 2006-02-15 04:45:25 |
|      37 | Asunción                |         73 | 2006-02-15 04:45:25 |
|      38 | Athenai                 |         39 | 2006-02-15 04:45:25 |
|      39 | Atšinsk                 |         80 | 2006-02-15 04:45:25 |
|      40 | Atlixco                 |         60 | 2006-02-15 04:45:25 |
|      41 | Augusta-Richmond County |        103 | 2006-02-15 04:45:25 |
|      42 | Aurora                  |        103 | 2006-02-15 04:45:25 |
|      43 | Avellaneda              |          6 | 2006-02-15 04:45:25 |
+---------+-------------------------+------------+---------------------+
43 rows in set (0,00 sec)
    Ciudades que acaban por s.
    select * from city where city regexp 's$';
+---------+----------------------------+------------+---------------------+
| city_id | city                       | country_id | last_update         |
+---------+----------------------------+------------+---------------------+
|      25 | Angra dos Reis             |         15 | 2006-02-15 04:45:25 |
|      26 | Anápolis                   |         15 | 2006-02-15 04:45:25 |
|      79 | Bilbays                    |         29 | 2006-02-15 04:45:25 |
|     102 | Caracas                    |        104 | 2006-02-15 04:45:25 |
|     118 | Ciomas                     |         45 | 2006-02-15 04:45:25 |
|     120 | Citrus Heights             |        103 | 2006-02-15 04:45:25 |
|     125 | Coatzacoalcos              |         60 | 2006-02-15 04:45:25 |
|     135 | Dallas                     |        103 | 2006-02-15 04:45:25 |
|     137 | Daugavpils                 |         54 | 2006-02-15 04:45:25 |
|     147 | Dos Quebradas              |         24 | 2006-02-15 04:45:25 |
|     190 | Águas Lindas de Goiás      |         15 | 2006-02-15 04:45:25 |
|     212 | Huejutla de Reyes          |         60 | 2006-02-15 04:45:25 |
|     221 | Imus                       |         75 | 2006-02-15 04:45:25 |
|     238 | Jelets                     |         80 | 2006-02-15 04:45:25 |
|     266 | Kilis                      |         97 | 2006-02-15 04:45:25 |
|     297 | Le Mans                    |         34 | 2006-02-15 04:45:25 |
|     330 | Matamoros                  |         60 | 2006-02-15 04:45:25 |
|     333 | Memphis                    |        103 | 2006-02-15 04:45:25 |
|     391 | Ozamis                     |         75 | 2006-02-15 04:45:25 |
|     401 | Patras                     |         39 | 2006-02-15 04:45:25 |
|     413 | Poços de Caldas            |         15 | 2006-02-15 04:45:25 |
|     424 | Quilmes                    |          6 | 2006-02-15 04:45:25 |
|     441 | Saint Louis                |        103 | 2006-02-15 04:45:25 |
|     442 | Saint-Denis                |         79 | 2006-02-15 04:45:25 |
|     446 | Salinas                    |        103 | 2006-02-15 04:45:25 |
|     460 | Santiago de los Caballeros |         27 | 2006-02-15 04:45:25 |
|     482 | Sivas                      |         97 | 2006-02-15 04:45:25 |
|     497 | Springs                    |         85 | 2006-02-15 04:45:25 |
|     499 | Sterling Heights           |        103 | 2006-02-15 04:45:25 |
|     529 | Tarsus                     |         97 | 2006-02-15 04:45:25 |
|     570 | Vilnius                    |         56 | 2006-02-15 04:45:25 |
+---------+----------------------------+------------+---------------------+
31 rows in set (0,00 sec)
    Ciudades del country 61.
    select * from city where country_id = 61 and city.city_id=country.country_id;
    Ciudades del country Spain.
    select * from city where country_id = 87;
+---------+-------------------------+------------+---------------------+
| city_id | city                    | country_id | last_update         |
+---------+-------------------------+------------+---------------------+
|       1 | A Coruña (La Coruña)    |         87 | 2006-02-15 04:45:25 |
|     146 | Donostia-San Sebastián  |         87 | 2006-02-15 04:45:25 |
|     181 | Gijón                   |         87 | 2006-02-15 04:45:25 |
|     388 | Ourense (Orense)        |         87 | 2006-02-15 04:45:25 |
|     459 | Santiago de Compostela  |         87 | 2006-02-15 04:45:25 |
+---------+-------------------------+------------+---------------------+
5 rows in set (0,00 sec)
    Ciudades con nombres compuestos.
    
    Películas con una duración entre 80 y 100.
     select * from film where length between 80 and 100;
+---------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+--------+------------------+--------+--------------------------------------------------------+---------------------+
| film_id | title                   | description                                                                                                                    | release_year | language_id | original_language_id | rental_duration | rental_rate | length | replacement_cost | rating | special_features                                       | last_update         |
+---------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+--------+------------------+--------+--------------------------------------------------------+---------------------+
|       1 | ACADEMY DINOSAUR        | A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies                               |         2006 |           1 |                 NULL |               6 |        0.99 |     86 |            20.99 | PG     | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|      14 | ALICE FANTASIA          | A Emotional Drama of a A Shark And a Database Administrator who must Vanquish a Pioneer in Soviet Georgia                      |         2006 |           1 |                 NULL |               6 |        0.99 |     94 |            23.99 | NC-17  | Trailers,Deleted Scenes,Behind the Scenes              | 2006-02-15 05:03:42 |
|      17 | ALONE TRIP              | A Fast-Paced Character Study of a Composer And a Dog who must Outgun a Boat in An Abandoned Fun House                          |         2006 |           1 |                 NULL |               3 |        0.99 |     82 |            14.99 | R      | Trailers,Behind the Scenes                             | 2006-02-15 05:03:42 |
|      22 | AMISTAD MIDSUMMER       | A Emotional Character Study of a Dentist And a Crocodile who must Meet a Sumo Wrestler in California                           |         2006 |           1 |                 NULL |               6 |        2.99 |     85 |            10.99 | G      | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|      23 | ANACONDA CONFESSIONS    | A Lacklusture Display of a Dentist And a Dentist who must Fight a Girl in Australia                                            |         2006 |           1 |                 NULL |               3 |        0.99 |     92 |             9.99 | R      | Trailers,Deleted Scenes                                | 2006-02-15 05:03:42 |
|      26 | ANNIE IDENTITY          | A Amazing Panorama of a Pastry Chef And a Boat who must Escape a Woman in An Abandoned Amusement Park                          |         2006 |           1 |                 NULL |               3 |        0.99 |     86 |            15.99 | G      | Commentaries,Deleted Scenes                            | 2006-02-15 05:03:42 |
|      28 | ANTHEM LUKE             | A Touching Panorama of a Waitress And a Woman who must Outrace a Dog in An Abandoned Amusement Park                            |         2006 |           1 |                 NULL |               5 |        4.99 |     91 |            16.99 | PG-13  | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|      30 | ANYTHING SAVANNAH       | A Epic Story of a Pastry Chef And a Woman who must Chase a Feminist in An Abandoned Fun House                                  |         2006 |           1 |                 NULL |               4 |        2.99 |     82 |            27.99 | R      | Trailers,Deleted Scenes,Behind the Scenes              | 2006-02-15 05:03:42 |
|      31 | APACHE DIVINE           | A Awe-Inspiring Reflection of a Pastry Chef And a Teacher who must Overcome a Sumo Wrestler in A U-Boat                        |         2006 |           1 |                 NULL |               5 |        4.99 |     92 |            16.99 | NC-17  | Commentaries,Deleted Scenes,Behind the Scenes          | 2006-02-15 05:03:42 |
|      39 | ARMAGEDDON LOST         | A Fast-Paced Tale of a Boat And a Teacher who must Succumb a Composer in An Abandoned Mine Shaft                               |         2006 |           1 |                 NULL |               5 |        0.99 |     99 |            10.99 | G      | Trailers                                               | 2006-02-15 05:03:42 |
|      45 | ATTRACTION NEWTON       | A Astounding Panorama of a Composer And a Frisbee who must Reach a Husband in Ancient Japan                                    |         2006 |           1 |                 NULL |               5 |        4.99 |     83 |            14.99 | PG-13  | Trailers,Behind the Scenes                             | 2006-02-15 05:03:42 |
|      53 | BANG KWAI               | A Epic Drama of a Madman And a Cat who must Face a A Shark in An Abandoned Amusement Park                                      |         2006 |           1 |                 NULL |               5 |        2.99 |     87 |            25.99 | NC-17  | Commentaries,Deleted Scenes,Behind the Scenes          | 2006-02-15 05:03:42 |
|      57 | BASIC EASY              | A Stunning Epistle of a Man And a Husband who must Reach a Mad Scientist in A Jet Boat                                         |         2006 |           1 |                 NULL |               4 |        2.99 |     90 |            18.99 | PG-13  | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|      60 | BEAST HUNCHBACK         | A Awe-Inspiring Epistle of a Student And a Squirrel who must Defeat a Boy in Ancient China                                     |         2006 |           1 |                 NULL |               3 |        4.99 |     89 |            22.99 | R      | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|      65 | BEHAVIOR RUNAWAY        | A Unbelieveable Drama of a Student And a Husband who must Outrace a Sumo Wrestler in Berlin                                    |         2006 |           1 |                 NULL |               3 |        4.99 |    100 |            20.99 | PG     | Trailers,Deleted Scenes,Behind the Scenes              | 2006-02-15 05:03:42 |
|      69 | BEVERLY OUTLAW          | A Fanciful Documentary of a Womanizer And a Boat who must Defeat a Madman in The First Manned Space Station                    |         2006 |           1 |                 NULL |               3 |        2.99 |     85 |            21.99 | R      | Trailers                                               | 2006-02-15 05:03:42 |
|      71 | BILKO ANONYMOUS         | A Emotional Reflection of a Teacher And a Man who must Meet a Cat in The First Manned Space Station                            |         2006 |           1 |                 NULL |               3 |        4.99 |    100 |            25.99 | PG-13  | Commentaries,Deleted Scenes,Behind the Scenes          | 2006-02-15 05:03:42 |
|      72 | BILL OTHERS             | A Stunning Saga of a Mad Scientist And a Forensic Psychologist who must Challenge a Squirrel in A MySQL Convention             |         2006 |           1 |                 NULL |               6 |        2.99 |     93 |            12.99 | PG     | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|      78 | BLACKOUT PRIVATE        | A Intrepid Yarn of a Pastry Chef And a Mad Scientist who must Challenge a Secret Agent in Ancient Japan                        |         2006 |           1 |                 NULL |               7 |        2.99 |     85 |            12.99 | PG     | Trailers,Deleted Scenes                                | 2006-02-15 05:03:42 |
|      91 | BOUND CHEAPER           | A Thrilling Panorama of a Database Administrator And a Astronaut who must Challenge a Lumberjack in A Baloon                   |         2006 |           1 |                 NULL |               5 |        0.99 |     98 |            17.99 | PG     | Behind the Scenes                                      | 2006-02-15 05:03:42 |
|     109 | BUTTERFLY CHOCOLAT      | A Fateful Story of a Girl And a Composer who must Conquer a Husband in A Shark Tank                                            |         2006 |           1 |                 NULL |               3 |        0.99 |     89 |            17.99 | G      | Behind the Scenes                                      | 2006-02-15 05:03:42 |
|     118 | CANYON STOCK            | A Thoughtful Reflection of a Waitress And a Feminist who must Escape a Squirrel in A Manhattan Penthouse                       |         2006 |           1 |                 NULL |               7 |        0.99 |     85 |            26.99 | R      | Trailers,Deleted Scenes                                | 2006-02-15 05:03:42 |
|     120 | CARIBBEAN LIBERTY       | A Fanciful Tale of a Pioneer And a Technical Writer who must Outgun a Pioneer in A Shark Tank                                  |         2006 |           1 |                 NULL |               3 |        4.99 |     92 |            16.99 | NC-17  | Commentaries,Deleted Scenes                            | 2006-02-15 05:03:42 |
|     123 | CASABLANCA SUPER        | A Amazing Panorama of a Crocodile And a Forensic Psychologist who must Pursue a Secret Agent in The First Manned Space Station |         2006 |           1 |                 NULL |               6 |        4.99 |     85 |            22.99 | G      | Trailers,Deleted Scenes,Behind the Scenes              | 2006-02-15 05:03:42 |
|     140 | CHEAPER CLYDE           | A Emotional Character Study of a Pioneer And a Girl who must Discover a Dog in Ancient Japan                                   |         2006 |           1 |                 NULL |               6 |        0.99 |     87 |            23.99 | G      | Trailers,Commentaries,Behind the Scenes                | 2006-02-15 05:03:42 |
|     152 | CIRCUS YOUTH            | A Thoughtful Drama of a Pastry Chef And a Dentist who must Pursue a Girl in A Baloon                                           |         2006 |           1 |                 NULL |               5 |        2.99 |     90 |            13.99 | PG-13  | Trailers,Deleted Scenes,Behind the Scenes              | 2006-02-15 05:03:42 |
|     154 | CLASH FREDDY            | A Amazing Yarn of a Composer And a Squirrel who must Escape a Astronaut in Australia                                           |         2006 |           1 |                 NULL |               6 |        2.99 |     81 |            12.99 | G      | Commentaries,Deleted Scenes                            | 2006-02-15 05:03:42 |
|     162 | CLUELESS BUCKET         | A Taut Tale of a Car And a Pioneer who must Conquer a Sumo Wrestler in An Abandoned Fun House                                  |         2006 |           1 |                 NULL |               4 |        2.99 |     95 |            13.99 | R      | Trailers,Deleted Scenes,Behind the Scenes              | 2006-02-15 05:03:42 |
|     176 | CONGENIALITY QUEST      | A Touching Documentary of a Cat And a Pastry Chef who must Find a Lumberjack in A Baloon                                       |         2006 |           1 |                 NULL |               6 |        0.99 |     87 |            21.99 | PG-13  | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|     184 | CORE SUIT               | A Unbelieveable Tale of a Car And a Explorer who must Confront a Boat in A Manhattan Penthouse                                 |         2006 |           1 |                 NULL |               3 |        2.99 |     92 |            24.99 | PG-13  | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|     203 | DAISY MENAGERIE         | A Fast-Paced Saga of a Pastry Chef And a Monkey who must Sink a Composer in Ancient India                                      |         2006 |           1 |                 NULL |               5 |        4.99 |     84 |             9.99 | G      | Trailers,Commentaries,Behind the Scenes                | 2006-02-15 05:03:42 |
|     208 | DARES PLUTO             | A Fateful Story of a Robot And a Dentist who must Defeat a Astronaut in New Orleans                                            |         2006 |           1 |                 NULL |               7 |        2.99 |     89 |            16.99 | PG-13  | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|     209 | DARKNESS WAR            | A Touching Documentary of a Husband And a Hunter who must Escape a Boy in The Sahara Desert                                    |         2006 |           1 |                 NULL |               6 |        2.99 |     99 |            24.99 | NC-17  | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|     221 | DELIVERANCE MULHOLLAND  | A Astounding Saga of a Monkey And a Moose who must Conquer a Butler in A Shark Tank                                            |         2006 |           1 |                 NULL |               4 |        0.99 |    100 |             9.99 | R      | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|     224 | DESPERATE TRAINSPOTTING | A Epic Yarn of a Forensic Psychologist And a Teacher who must Face a Lumberjack in California                                  |         2006 |           1 |                 NULL |               7 |        4.99 |     81 |            29.99 | G      | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|     227 | DETAILS PACKER          | A Epic Saga of a Waitress And a Composer who must Face a Boat in A U-Boat                                                      |         2006 |           1 |                 NULL |               4 |        4.99 |     88 |            17.99 | R      | Commentaries,Deleted Scenes                            | 2006-02-15 05:03:42 |
|     229 | DEVIL DESIRE            | A Beautiful Reflection of a Monkey And a Dentist who must Face a Database Administrator in Ancient Japan                       |         2006 |           1 |                 NULL |               6 |        4.99 |     87 |            12.99 | R      | Trailers,Behind the Scenes                             | 2006-02-15 05:03:42 |
|     234 | DISTURBING SCARFACE     | A Lacklusture Display of a Crocodile And a Butler who must Overcome a Monkey in A U-Boat                                       |         2006 |           1 |                 NULL |               6 |        2.99 |     94 |            27.99 | R      | Trailers,Behind the Scenes                             | 2006-02-15 05:03:42 |
|     236 | DIVINE RESURRECTION     | A Boring Character Study of a Man And a Womanizer who must Succumb a Teacher in An Abandoned Amusement Park                    |         2006 |           1 |                 NULL |               4 |        2.99 |    100 |            19.99 | R      | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     258 | DRUMS DYNAMITE          | A Epic Display of a Crocodile And a Crocodile who must Confront a Dog in An Abandoned Amusement Park                           |         2006 |           1 |                 NULL |               6 |        0.99 |     96 |            11.99 | PG     | Trailers                                               | 2006-02-15 05:03:42 |
|     268 | EARLY HOME              | A Amazing Panorama of a Mad Scientist And a Husband who must Meet a Woman in The Outback                                       |         2006 |           1 |                 NULL |               6 |        4.99 |     96 |            27.99 | NC-17  | Trailers,Commentaries,Behind the Scenes                | 2006-02-15 05:03:42 |
|     269 | EARRING INSTINCT        | A Stunning Character Study of a Dentist And a Mad Cow who must Find a Teacher in Nigeria                                       |         2006 |           1 |                 NULL |               3 |        0.99 |     98 |            22.99 | R      | Behind the Scenes                                      | 2006-02-15 05:03:42 |
|     270 | EARTH VISION            | A Stunning Drama of a Butler And a Madman who must Outrace a Womanizer in Ancient India                                        |         2006 |           1 |                 NULL |               7 |        0.99 |     85 |            29.99 | NC-17  | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
|     275 | EGYPT TENENBAUMS        | A Intrepid Story of a Madman And a Secret Agent who must Outrace a Astronaut in An Abandoned Amusement Park                    |         2006 |           1 |                 NULL |               3 |        0.99 |     85 |            11.99 | PG     | Commentaries,Deleted Scenes,Behind the Scenes          | 2006-02-15 05:03:42 |
|     282 | ENCOUNTERS CURTAIN      | A Insightful Epistle of a Pastry Chef And a Womanizer who must Build a Boat in New Orleans                                     |         2006 |           1 |                 NULL |               5 |        0.99 |     92 |            20.99 | NC-17  | Trailers                                               | 2006-02-15 05:03:42 |
|     283 | ENDING CROWDS           | A Unbelieveable Display of a Dentist And a Madman who must Vanquish a Squirrel in Berlin                                       |         2006 |           1 |                 NULL |               6 |        0.99 |     85 |            10.99 | NC-17  | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|     295 | EXPENDABLE STALLION     | A Amazing Character Study of a Mad Cow And a Squirrel who must Discover a Hunter in A U-Boat                                   |         2006 |           1 |                 NULL |               3 |        0.99 |     97 |            14.99 | PG     | Trailers,Behind the Scenes                             | 2006-02-15 05:03:42 |
|     305 | FATAL HAUNTED           | A Beautiful Drama of a Student And a Secret Agent who must Confront a Dentist in Ancient Japan                                 |         2006 |           1 |                 NULL |               6 |        2.99 |     91 |            24.99 | PG     | Trailers,Behind the Scenes                             | 2006-02-15 05:03:42 |
|     309 | FEUD FROGMEN            | A Brilliant Reflection of a Database Administrator And a Mad Cow who must Chase a Woman in The Canadian Rockies                |         2006 |           1 |                 NULL |               6 |        0.99 |     98 |            29.99 | R      | Trailers,Commentaries,Deleted Scenes,Behind the Scenes | 2006-02-15 05:03:42 |
|     314 | FIGHT JAWBREAKER        | A Intrepid Panorama of a Womanizer And a Girl who must Escape a Girl in A Manhattan Penthouse                                  |         2006 |           1 |                 NULL |               3 |        0.99 |     91 |            13.99 | R      | Trailers,Commentaries,Deleted Scenes,Behind the Scenes | 2006-02-15 05:03:42 |
|     320 | FLAMINGOS CONNECTICUT   | A Fast-Paced Reflection of a Composer And a Composer who must Meet a Cat in The Sahara Desert                                  |         2006 |           1 |                 NULL |               4 |        4.99 |     80 |            28.99 | PG-13  | Trailers                                               | 2006-02-15 05:03:42 |
|     322 | FLATLINERS KILLER       | A Taut Display of a Secret Agent And a Waitress who must Sink a Robot in An Abandoned Mine Shaft                               |         2006 |           1 |                 NULL |               5 |        2.99 |    100 |            29.99 | G      | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
|     331 | FORWARD TEMPLE          | A Astounding Display of a Forensic Psychologist And a Mad Scientist who must Challenge a Girl in New Orleans                   |         2006 |           1 |                 NULL |               6 |        2.99 |     90 |            25.99 | NC-17  | Trailers,Commentaries,Behind the Scenes                | 2006-02-15 05:03:42 |
|     336 | FRENCH HOLIDAY          | A Thrilling Epistle of a Dog And a Feminist who must Kill a Madman in Berlin                                                   |         2006 |           1 |                 NULL |               5 |        4.99 |     99 |            22.99 | PG     | Behind the Scenes                                      | 2006-02-15 05:03:42 |
|     341 | FROST HEAD              | A Amazing Reflection of a Lumberjack And a Cat who must Discover a Husband in A MySQL Convention                               |         2006 |           1 |                 NULL |               5 |        0.99 |     82 |            13.99 | PG     | Trailers,Deleted Scenes                                | 2006-02-15 05:03:42 |
|     342 | FUGITIVE MAGUIRE        | A Taut Epistle of a Feminist And a Sumo Wrestler who must Battle a Crocodile in Australia                                      |         2006 |           1 |                 NULL |               7 |        4.99 |     83 |            28.99 | R      | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
|     343 | FULL FLATLINERS         | A Beautiful Documentary of a Astronaut And a Moose who must Pursue a Monkey in A Shark Tank                                    |         2006 |           1 |                 NULL |               6 |        2.99 |     94 |            14.99 | PG     | Trailers,Deleted Scenes                                | 2006-02-15 05:03:42 |
|     348 | GANDHI KWAI             | A Thoughtful Display of a Mad Scientist And a Secret Agent who must Chase a Boat in Berlin                                     |         2006 |           1 |                 NULL |               7 |        0.99 |     86 |             9.99 | PG-13  | Trailers                                               | 2006-02-15 05:03:42 |
|     350 | GARDEN ISLAND           | A Unbelieveable Character Study of a Womanizer And a Madman who must Reach a Man in The Outback                                |         2006 |           1 |                 NULL |               3 |        4.99 |     80 |            21.99 | G      | Trailers,Behind the Scenes                             | 2006-02-15 05:03:42 |
|     354 | GHOST GROUNDHOG         | A Brilliant Panorama of a Madman And a Composer who must Succumb a Car in Ancient India                                        |         2006 |           1 |                 NULL |               6 |        4.99 |     85 |            18.99 | G      | Trailers,Commentaries,Deleted Scenes,Behind the Scenes | 2006-02-15 05:03:42 |
|     361 | GLEAMING JAWBREAKER     | A Amazing Display of a Composer And a Forensic Psychologist who must Discover a Car in The Canadian Rockies                    |         2006 |           1 |                 NULL |               5 |        2.99 |     89 |            25.99 | NC-17  | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     366 | GOLDFINGER SENSIBILITY  | A Insightful Drama of a Mad Scientist And a Hunter who must Defeat a Pastry Chef in New Orleans                                |         2006 |           1 |                 NULL |               3 |        0.99 |     93 |            29.99 | G      | Trailers,Commentaries,Behind the Scenes                | 2006-02-15 05:03:42 |
|     368 | GONE TROUBLE            | A Insightful Character Study of a Mad Cow And a Forensic Psychologist who must Conquer a A Shark in A Manhattan Penthouse      |         2006 |           1 |                 NULL |               7 |        2.99 |     84 |            20.99 | R      | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|     375 | GRAIL FRANKENSTEIN      | A Unbelieveable Saga of a Teacher And a Monkey who must Fight a Girl in An Abandoned Mine Shaft                                |         2006 |           1 |                 NULL |               4 |        2.99 |     85 |            17.99 | NC-17  | Commentaries,Deleted Scenes,Behind the Scenes          | 2006-02-15 05:03:42 |
|     378 | GREATEST NORTH          | A Astounding Character Study of a Secret Agent And a Robot who must Build a A Shark in Berlin                                  |         2006 |           1 |                 NULL |               5 |        2.99 |     93 |            24.99 | NC-17  | Trailers,Commentaries,Behind the Scenes                | 2006-02-15 05:03:42 |
|     387 | GUN BONNIE              | A Boring Display of a Sumo Wrestler And a Husband who must Build a Waitress in The Gulf of Mexico                              |         2006 |           1 |                 NULL |               7 |        0.99 |    100 |            27.99 | G      | Behind the Scenes                                      | 2006-02-15 05:03:42 |
|     390 | GUYS FALCON             | A Boring Story of a Woman And a Feminist who must Redeem a Squirrel in A U-Boat                                                |         2006 |           1 |                 NULL |               4 |        4.99 |     84 |            20.99 | R      | Trailers,Commentaries,Behind the Scenes                | 2006-02-15 05:03:42 |
|     399 | HAPPINESS UNITED        | A Action-Packed Panorama of a Husband And a Feminist who must Meet a Forensic Psychologist in Ancient Japan                    |         2006 |           1 |                 NULL |               6 |        2.99 |    100 |            23.99 | G      | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|     415 | HIGH ENCINO             | A Fateful Saga of a Waitress And a Hunter who must Outrace a Sumo Wrestler in Australia                                        |         2006 |           1 |                 NULL |               3 |        2.99 |     84 |            23.99 | R      | Trailers,Commentaries,Behind the Scenes                | 2006-02-15 05:03:42 |
|     417 | HILLS NEIGHBORS         | A Epic Display of a Hunter And a Feminist who must Sink a Car in A U-Boat                                                      |         2006 |           1 |                 NULL |               5 |        0.99 |     93 |            29.99 | G      | Trailers,Commentaries,Deleted Scenes,Behind the Scenes | 2006-02-15 05:03:42 |
|     425 | HOLY TADPOLE            | A Action-Packed Display of a Feminist And a Pioneer who must Pursue a Dog in A Baloon Factory                                  |         2006 |           1 |                 NULL |               6 |        0.99 |     88 |            20.99 | R      | Behind the Scenes                                      | 2006-02-15 05:03:42 |
|     429 | HONEY TIES              | A Taut Story of a Waitress And a Crocodile who must Outrace a Lumberjack in A Shark Tank                                       |         2006 |           1 |                 NULL |               3 |        0.99 |     84 |            29.99 | R      | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
|     433 | HORN WORKING            | A Stunning Display of a Mad Scientist And a Technical Writer who must Succumb a Monkey in A Shark Tank                         |         2006 |           1 |                 NULL |               4 |        2.99 |     95 |            23.99 | PG     | Trailers                                               | 2006-02-15 05:03:42 |
|     444 | HUSTLER PARTY           | A Emotional Reflection of a Sumo Wrestler And a Monkey who must Conquer a Robot in The Sahara Desert                           |         2006 |           1 |                 NULL |               3 |        4.99 |     83 |            22.99 | NC-17  | Trailers,Commentaries,Behind the Scenes                | 2006-02-15 05:03:42 |
|     445 | HYDE DOCTOR             | A Fanciful Documentary of a Boy And a Woman who must Redeem a Womanizer in A Jet Boat                                          |         2006 |           1 |                 NULL |               5 |        2.99 |    100 |            11.99 | G      | Trailers,Deleted Scenes                                | 2006-02-15 05:03:42 |
|     450 | IDOLS SNATCHERS         | A Insightful Drama of a Car And a Composer who must Fight a Man in A Monastery                                                 |         2006 |           1 |                 NULL |               5 |        2.99 |     84 |            29.99 | NC-17  | Trailers                                               | 2006-02-15 05:03:42 |
|     468 | INVASION CYCLONE        | A Lacklusture Character Study of a Mad Scientist And a Womanizer who must Outrace a Explorer in A Monastery                    |         2006 |           1 |                 NULL |               5 |        2.99 |     97 |            12.99 | PG     | Trailers,Deleted Scenes                                | 2006-02-15 05:03:42 |
|     471 | ISLAND EXORCIST         | A Fanciful Panorama of a Technical Writer And a Boy who must Find a Dentist in An Abandoned Fun House                          |         2006 |           1 |                 NULL |               7 |        2.99 |     84 |            23.99 | NC-17  | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     480 | JEEPERS WEDDING         | A Astounding Display of a Composer And a Dog who must Kill a Pastry Chef in Soviet Georgia                                     |         2006 |           1 |                 NULL |               3 |        2.99 |     84 |            29.99 | R      | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
|     493 | KANE EXORCIST           | A Epic Documentary of a Composer And a Robot who must Overcome a Car in Berlin                                                 |         2006 |           1 |                 NULL |               5 |        0.99 |     92 |            18.99 | R      | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     520 | LICENSE WEEKEND         | A Insightful Story of a Man And a Husband who must Overcome a Madman in A Monastery                                            |         2006 |           1 |                 NULL |               7 |        2.99 |     91 |            28.99 | NC-17  | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|     527 | LOLA AGENT              | A Astounding Tale of a Mad Scientist And a Husband who must Redeem a Database Administrator in Ancient Japan                   |         2006 |           1 |                 NULL |               4 |        4.99 |     85 |            24.99 | PG     | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     532 | LOSER HUSTLER           | A Stunning Drama of a Robot And a Feminist who must Outgun a Butler in Nigeria                                                 |         2006 |           1 |                 NULL |               5 |        4.99 |     80 |            28.99 | PG     | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|     533 | LOST BIRD               | A Emotional Character Study of a Robot And a A Shark who must Defeat a Technical Writer in A Manhattan Penthouse               |         2006 |           1 |                 NULL |               4 |        2.99 |     98 |            21.99 | PG-13  | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|     540 | LUCKY FLYING            | A Lacklusture Character Study of a A Shark And a Man who must Find a Forensic Psychologist in A U-Boat                         |         2006 |           1 |                 NULL |               7 |        2.99 |     97 |            10.99 | PG-13  | Trailers,Commentaries,Behind the Scenes                | 2006-02-15 05:03:42 |
|     546 | MADRE GABLES            | A Intrepid Panorama of a Sumo Wrestler And a Forensic Psychologist who must Discover a Moose in The First Manned Space Station |         2006 |           1 |                 NULL |               7 |        2.99 |     98 |            27.99 | PG-13  | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
|     567 | MEET CHOCOLATE          | A Boring Documentary of a Dentist And a Butler who must Confront a Monkey in A MySQL Convention                                |         2006 |           1 |                 NULL |               3 |        2.99 |     80 |            26.99 | G      | Trailers                                               | 2006-02-15 05:03:42 |
|     574 | MIDNIGHT WESTWARD       | A Taut Reflection of a Husband And a A Shark who must Redeem a Pastry Chef in A Monastery                                      |         2006 |           1 |                 NULL |               3 |        0.99 |     86 |            19.99 | G      | Trailers,Deleted Scenes                                | 2006-02-15 05:03:42 |
|     595 | MOON BUNCH              | A Beautiful Tale of a Astronaut And a Mad Cow who must Challenge a Cat in A Baloon Factory                                     |         2006 |           1 |                 NULL |               7 |        0.99 |     83 |            20.99 | PG     | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|     613 | MYSTIC TRUMAN           | A Epic Yarn of a Teacher And a Hunter who must Outgun a Explorer in Soviet Georgia                                             |         2006 |           1 |                 NULL |               5 |        0.99 |     92 |            19.99 | NC-17  | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|     616 | NATIONAL STORY          | A Taut Epistle of a Mad Scientist And a Girl who must Escape a Monkey in California                                            |         2006 |           1 |                 NULL |               4 |        2.99 |     92 |            19.99 | NC-17  | Trailers                                               | 2006-02-15 05:03:42 |
|     625 | NONE SPIKING            | A Boring Reflection of a Secret Agent And a Astronaut who must Face a Composer in A Manhattan Penthouse                        |         2006 |           1 |                 NULL |               3 |        0.99 |     83 |            18.99 | NC-17  | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     639 | OPPOSITE NECKLACE       | A Fateful Epistle of a Crocodile And a Moose who must Kill a Explorer in Nigeria                                               |         2006 |           1 |                 NULL |               7 |        4.99 |     92 |             9.99 | PG     | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|     649 | OZ LIAISONS             | A Epic Yarn of a Mad Scientist And a Cat who must Confront a Womanizer in A Baloon Factory                                     |         2006 |           1 |                 NULL |               4 |        2.99 |     85 |            14.99 | R      | Commentaries,Deleted Scenes,Behind the Scenes          | 2006-02-15 05:03:42 |
|     651 | PACKER MADIGAN          | A Epic Display of a Sumo Wrestler And a Forensic Psychologist who must Build a Woman in An Abandoned Amusement Park            |         2006 |           1 |                 NULL |               3 |        0.99 |     84 |            20.99 | PG-13  | Trailers                                               | 2006-02-15 05:03:42 |
|     654 | PANKY SUBMARINE         | A Touching Documentary of a Dentist And a Sumo Wrestler who must Overcome a Boy in The Gulf of Mexico                          |         2006 |           1 |                 NULL |               4 |        4.99 |     93 |            19.99 | G      | Trailers,Commentaries,Deleted Scenes,Behind the Scenes | 2006-02-15 05:03:42 |
|     663 | PATIENT SISTER          | A Emotional Epistle of a Squirrel And a Robot who must Confront a Lumberjack in Soviet Georgia                                 |         2006 |           1 |                 NULL |               7 |        0.99 |     99 |            29.99 | NC-17  | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     668 | PEAK FOREVER            | A Insightful Reflection of a Boat And a Secret Agent who must Vanquish a Astronaut in An Abandoned Mine Shaft                  |         2006 |           1 |                 NULL |               7 |        4.99 |     80 |            25.99 | PG     | Trailers,Commentaries,Deleted Scenes,Behind the Scenes | 2006-02-15 05:03:42 |
|     671 | PERDITION FARGO         | A Fast-Paced Story of a Car And a Cat who must Outgun a Hunter in Berlin                                                       |         2006 |           1 |                 NULL |               7 |        4.99 |     99 |            27.99 | NC-17  | Trailers,Behind the Scenes                             | 2006-02-15 05:03:42 |
|     672 | PERFECT GROOVE          | A Thrilling Yarn of a Dog And a Dog who must Build a Husband in A Baloon                                                       |         2006 |           1 |                 NULL |               7 |        2.99 |     82 |            17.99 | PG-13  | Commentaries,Deleted Scenes,Behind the Scenes          | 2006-02-15 05:03:42 |
|     674 | PET HAUNTING            | A Unbelieveable Reflection of a Explorer And a Boat who must Conquer a Woman in California                                     |         2006 |           1 |                 NULL |               3 |        0.99 |     99 |            11.99 | PG     | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     681 | PIRATES ROXANNE         | A Stunning Drama of a Woman And a Lumberjack who must Overcome a A Shark in The Canadian Rockies                               |         2006 |           1 |                 NULL |               4 |        0.99 |    100 |            20.99 | PG     | Commentaries,Deleted Scenes                            | 2006-02-15 05:03:42 |
|     686 | PLUTO OLEANDER          | A Action-Packed Reflection of a Car And a Moose who must Outgun a Car in A Shark Tank                                          |         2006 |           1 |                 NULL |               5 |        4.99 |     84 |             9.99 | R      | Behind the Scenes                                      | 2006-02-15 05:03:42 |
|     694 | PREJUDICE OLEANDER      | A Epic Saga of a Boy And a Dentist who must Outrace a Madman in A U-Boat                                                       |         2006 |           1 |                 NULL |               6 |        4.99 |     98 |            15.99 | PG-13  | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
|     702 | PULP BEVERLY            | A Unbelieveable Display of a Dog And a Crocodile who must Outrace a Man in Nigeria                                             |         2006 |           1 |                 NULL |               4 |        2.99 |     89 |            12.99 | G      | Trailers,Behind the Scenes                             | 2006-02-15 05:03:42 |
|     703 | PUNK DIVORCE            | A Fast-Paced Tale of a Pastry Chef And a Boat who must Face a Frisbee in The Canadian Rockies                                  |         2006 |           1 |                 NULL |               6 |        4.99 |    100 |            18.99 | PG     | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
|     705 | PURPLE MOVIE            | A Boring Display of a Pastry Chef And a Sumo Wrestler who must Discover a Frisbee in An Abandoned Amusement Park               |         2006 |           1 |                 NULL |               4 |        2.99 |     88 |             9.99 | R      | Commentaries,Deleted Scenes                            | 2006-02-15 05:03:42 |
|     712 | RAIDERS ANTITRUST       | A Amazing Drama of a Teacher And a Feminist who must Meet a Woman in The First Manned Space Station                            |         2006 |           1 |                 NULL |               4 |        0.99 |     82 |            11.99 | PG-13  | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|     717 | REAR TRADING            | A Awe-Inspiring Reflection of a Forensic Psychologist And a Secret Agent who must Succumb a Pastry Chef in Soviet Georgia      |         2006 |           1 |                 NULL |               6 |        0.99 |     97 |            23.99 | NC-17  | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
|     723 | REIGN GENTLEMEN         | A Emotional Yarn of a Composer And a Man who must Escape a Butler in The Gulf of Mexico                                        |         2006 |           1 |                 NULL |               3 |        2.99 |     82 |            29.99 | PG-13  | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|     741 | ROMAN PUNK              | A Thoughtful Panorama of a Mad Cow And a Student who must Battle a Forensic Psychologist in Berlin                             |         2006 |           1 |                 NULL |               7 |        0.99 |     81 |            28.99 | NC-17  | Trailers                                               | 2006-02-15 05:03:42 |
|     744 | ROOTS REMEMBER          | A Brilliant Drama of a Mad Cow And a Hunter who must Escape a Hunter in Berlin                                                 |         2006 |           1 |                 NULL |               4 |        0.99 |     89 |            23.99 | PG-13  | Commentaries,Deleted Scenes,Behind the Scenes          | 2006-02-15 05:03:42 |
|     755 | SABRINA MIDNIGHT        | A Emotional Story of a Squirrel And a Crocodile who must Succumb a Husband in The Sahara Desert                                |         2006 |           1 |                 NULL |               5 |        4.99 |     99 |            11.99 | PG     | Trailers,Behind the Scenes                             | 2006-02-15 05:03:42 |
|     756 | SADDLE ANTITRUST        | A Stunning Epistle of a Feminist And a A Shark who must Battle a Woman in An Abandoned Fun House                               |         2006 |           1 |                 NULL |               7 |        2.99 |     80 |            10.99 | PG-13  | Trailers,Deleted Scenes                                | 2006-02-15 05:03:42 |
|     766 | SAVANNAH TOWN           | A Awe-Inspiring Tale of a Astronaut And a Database Administrator who must Chase a Secret Agent in The Gulf of Mexico           |         2006 |           1 |                 NULL |               5 |        0.99 |     84 |            25.99 | PG-13  | Commentaries,Deleted Scenes,Behind the Scenes          | 2006-02-15 05:03:42 |
|     772 | SEA VIRGIN              | A Fast-Paced Documentary of a Technical Writer And a Pastry Chef who must Escape a Moose in A U-Boat                           |         2006 |           1 |                 NULL |               4 |        2.99 |     80 |            24.99 | PG     | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|     776 | SECRET GROUNDHOG        | A Astounding Story of a Cat And a Database Administrator who must Build a Technical Writer in New Orleans                      |         2006 |           1 |                 NULL |               6 |        4.99 |     90 |            11.99 | PG     | Commentaries,Deleted Scenes                            | 2006-02-15 05:03:42 |
|     780 | SENSIBILITY REAR        | A Emotional Tale of a Robot And a Sumo Wrestler who must Redeem a Pastry Chef in A Baloon Factory                              |         2006 |           1 |                 NULL |               7 |        4.99 |     98 |            15.99 | PG     | Behind the Scenes                                      | 2006-02-15 05:03:42 |
|     783 | SHANE DARKNESS          | A Action-Packed Saga of a Moose And a Lumberjack who must Find a Woman in Berlin                                               |         2006 |           1 |                 NULL |               5 |        2.99 |     93 |            22.99 | PG     | Commentaries,Deleted Scenes                            | 2006-02-15 05:03:42 |
|     785 | SHAWSHANK BUBBLE        | A Lacklusture Story of a Moose And a Monkey who must Confront a Butler in An Abandoned Amusement Park                          |         2006 |           1 |                 NULL |               6 |        4.99 |     80 |            20.99 | PG     | Commentaries,Deleted Scenes                            | 2006-02-15 05:03:42 |
|     807 | SLEUTH ORIENT           | A Fateful Character Study of a Husband And a Dog who must Find a Feminist in Ancient India                                     |         2006 |           1 |                 NULL |               4 |        0.99 |     87 |            25.99 | NC-17  | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|     808 | SLING LUKE              | A Intrepid Character Study of a Robot And a Monkey who must Reach a Secret Agent in An Abandoned Amusement Park                |         2006 |           1 |                 NULL |               5 |        0.99 |     84 |            10.99 | R      | Behind the Scenes                                      | 2006-02-15 05:03:42 |
|     837 | STAGE WORLD             | A Lacklusture Panorama of a Woman And a Frisbee who must Chase a Crocodile in A Jet Boat                                       |         2006 |           1 |                 NULL |               4 |        2.99 |     85 |            19.99 | PG     | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|     846 | STING PERSONAL          | A Fanciful Drama of a Frisbee And a Dog who must Fight a Madman in A Jet Boat                                                  |         2006 |           1 |                 NULL |               3 |        4.99 |     93 |             9.99 | NC-17  | Commentaries,Deleted Scenes,Behind the Scenes          | 2006-02-15 05:03:42 |
|     848 | STONE FIRE              | A Intrepid Drama of a Astronaut And a Crocodile who must Find a Boat in Soviet Georgia                                         |         2006 |           1 |                 NULL |               3 |        0.99 |     94 |            19.99 | G      | Trailers                                               | 2006-02-15 05:03:42 |
|     860 | SUICIDES SILENCE        | A Emotional Character Study of a Car And a Girl who must Face a Composer in A U-Boat                                           |         2006 |           1 |                 NULL |               4 |        4.99 |     93 |            13.99 | G      | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|     864 | SUNDANCE INVASION       | A Epic Drama of a Lumberjack And a Explorer who must Confront a Hunter in A Baloon Factory                                     |         2006 |           1 |                 NULL |               5 |        0.99 |     92 |            21.99 | NC-17  | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|     876 | TARZAN VIDEOTAPE        | A Fast-Paced Display of a Lumberjack And a Mad Scientist who must Succumb a Sumo Wrestler in The Sahara Desert                 |         2006 |           1 |                 NULL |               3 |        2.99 |     91 |            11.99 | PG-13  | Trailers                                               | 2006-02-15 05:03:42 |
|     882 | TENENBAUMS COMMAND      | A Taut Display of a Pioneer And a Man who must Reach a Girl in The Gulf of Mexico                                              |         2006 |           1 |                 NULL |               4 |        0.99 |     99 |            24.99 | PG-13  | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     884 | TERMINATOR CLUB         | A Touching Story of a Crocodile And a Girl who must Sink a Man in The Gulf of Mexico                                           |         2006 |           1 |                 NULL |               5 |        4.99 |     88 |            11.99 | R      | Trailers,Deleted Scenes,Behind the Scenes              | 2006-02-15 05:03:42 |
|     893 | TITANS JERK             | A Unbelieveable Panorama of a Feminist And a Sumo Wrestler who must Challenge a Technical Writer in Ancient China              |         2006 |           1 |                 NULL |               4 |        4.99 |     91 |            11.99 | PG     | Behind the Scenes                                      | 2006-02-15 05:03:42 |
|     910 | TREATMENT JEKYLL        | A Boring Story of a Teacher And a Student who must Outgun a Cat in An Abandoned Mine Shaft                                     |         2006 |           1 |                 NULL |               3 |        0.99 |     87 |            19.99 | PG     | Trailers,Deleted Scenes,Behind the Scenes              | 2006-02-15 05:03:42 |
|     915 | TRUMAN CRAZY            | A Thrilling Epistle of a Moose And a Boy who must Meet a Database Administrator in A Monastery                                 |         2006 |           1 |                 NULL |               7 |        4.99 |     92 |             9.99 | G      | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     916 | TURN STAR               | A Stunning Tale of a Man And a Monkey who must Chase a Student in New Orleans                                                  |         2006 |           1 |                 NULL |               3 |        2.99 |     80 |            10.99 | G      | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|     919 | TYCOON GATHERING        | A Emotional Display of a Husband And a A Shark who must Succumb a Madman in A Manhattan Penthouse                              |         2006 |           1 |                 NULL |               3 |        4.99 |     82 |            17.99 | G      | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
|     928 | UPTOWN YOUNG            | A Fateful Documentary of a Dog And a Hunter who must Pursue a Teacher in An Abandoned Amusement Park                           |         2006 |           1 |                 NULL |               5 |        2.99 |     84 |            16.99 | PG     | Commentaries                                           | 2006-02-15 05:03:42 |
|     937 | VARSITY TRIP            | A Action-Packed Character Study of a Astronaut And a Explorer who must Reach a Monkey in A MySQL Convention                    |         2006 |           1 |                 NULL |               7 |        2.99 |     85 |            14.99 | NC-17  | Commentaries,Deleted Scenes                            | 2006-02-15 05:03:42 |
|     939 | VERTIGO NORTHWEST       | A Unbelieveable Display of a Mad Scientist And a Mad Scientist who must Outgun a Mad Cow in Ancient Japan                      |         2006 |           1 |                 NULL |               4 |        2.99 |     90 |            17.99 | R      | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|     957 | WAR NOTTING             | A Boring Drama of a Teacher And a Sumo Wrestler who must Challenge a Secret Agent in The Canadian Rockies                      |         2006 |           1 |                 NULL |               7 |        4.99 |     80 |            26.99 | G      | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|     959 | WARLOCK WEREWOLF        | A Astounding Yarn of a Pioneer And a Crocodile who must Defeat a A Shark in The Outback                                        |         2006 |           1 |                 NULL |               6 |        2.99 |     83 |            10.99 | G      | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|     962 | WASTELAND DIVINE        | A Fanciful Story of a Database Administrator And a Womanizer who must Fight a Database Administrator in Ancient China          |         2006 |           1 |                 NULL |               7 |        2.99 |     85 |            18.99 | PG     | Trailers,Deleted Scenes,Behind the Scenes              | 2006-02-15 05:03:42 |
|     977 | WINDOW SIDE             | A Astounding Character Study of a Womanizer And a Hunter who must Escape a Robot in A Monastery                                |         2006 |           1 |                 NULL |               3 |        2.99 |     85 |            25.99 | R      | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|     978 | WISDOM WORKER           | A Unbelieveable Saga of a Forensic Psychologist And a Student who must Face a Squirrel in The First Manned Space Station       |         2006 |           1 |                 NULL |               3 |        0.99 |     98 |            12.99 | R      | Deleted Scenes,Behind the Scenes                       | 2006-02-15 05:03:42 |
|     979 | WITCHES PANIC           | A Awe-Inspiring Drama of a Secret Agent And a Hunter who must Fight a Moose in Nigeria                                         |         2006 |           1 |                 NULL |               6 |        4.99 |    100 |            10.99 | NC-17  | Commentaries,Behind the Scenes                         | 2006-02-15 05:03:42 |
|     986 | WONKA SEA               | A Brilliant Saga of a Boat And a Mad Scientist who must Meet a Moose in Ancient India                                          |         2006 |           1 |                 NULL |               6 |        2.99 |     85 |            24.99 | NC-17  | Trailers,Commentaries                                  | 2006-02-15 05:03:42 |
|     994 | WYOMING STORM           | A Awe-Inspiring Panorama of a Robot And a Boat who must Overcome a Feminist in A U-Boat                                        |         2006 |           1 |                 NULL |               6 |        4.99 |    100 |            29.99 | PG-13  | Deleted Scenes                                         | 2006-02-15 05:03:42 |
|     995 | YENTL IDAHO             | A Amazing Display of a Robot And a Astronaut who must Fight a Womanizer in Berlin                                              |         2006 |           1 |                 NULL |               5 |        4.99 |     86 |            11.99 | R      | Trailers,Commentaries,Deleted Scenes                   | 2006-02-15 05:03:42 |
+---------+-------------------------+--------------------------------------------------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+--------+------------------+--------+--------------------------------------------------------+---------------------+
147 rows in set (0,01 sec)
    Peliculas con un rental_rate entre 1 y 3.
    Películas con un titulo de más de 12 letras.
    Peliculas con un rating de PG o G.
    Peliculas que no tengan un rating de NC-17.
    Peliculas con un rating PG y duracion de más de 120.
    ¿Cuantos actores hay?
    ¿Cuántas ciudades tiene el country Spain?
    ¿Cuántos countries hay que empiezan por a?
    Media de duración de peliculas con PG.
    Suma de rental_rate de todas las peliculas.
    Pelicula con mayor duración.
    Película con menor duración.
    Mostrar las ciudades del country Spain (multitabla).
    Mostrar el nombre de la película y el nombre de los actores.
    Mostrar el nombre de la película y el de sus categorías.
    Mostrar el country, la ciudad y dirección de cada miembro del staff.
    Mostrar el country, la ciudad y dirección de cada customer.
    Numero de películas de cada rating
    Cuantas películas ha realizado el actor ED CHASE.
    Media de duración de las películas cada categoría.
**/