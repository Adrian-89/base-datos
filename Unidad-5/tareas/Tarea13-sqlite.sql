--Consultas de una única tabla

    --Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.
select nombre, apellido1, apellido2 from persona order by nombre, apellido1, apellido2 DESC;
/** corregir
┌───────────┬────────────┬────────────┐
│  nombre   │ apellido1  │ apellido2  │
├───────────┼────────────┼────────────┤
│ Alejandro │ Kohler     │ Schoen     │
│ Alfredo   │ Stiedemann │ Morissette │
│ Antonio   │ Domínguez  │ Guerrero   │
│ Antonio   │ Fahey      │ Considine  │
│ Carmen    │ Streich    │ Hirthe     │
│ Cristina  │ Lemke      │ Rutherford │
│ Daniel    │ Herman     │ Pacocha    │
│ David     │ Schmidt    │ Fisher     │
│ Esther    │ Spencer    │ Lakin      │
│ Francesca │ Schowalter │ Muller     │
│ Guillermo │ Ruecker    │ Upton      │
│ Inma      │ Lakin      │ Yundt      │
│ Irene     │ Hernández  │ Martínez   │
│ Ismael    │ Strosin    │ Turcotte   │
│ José      │ Koss       │ Bayer      │
│ Juan      │ Gutiérrez  │ López      │
│ Juan      │ Saez       │ Vega       │
│ Manolo    │ Hamill     │ Kozey      │
│ Micaela   │ Monahan    │ Murray     │
│ Pedro     │ Heller     │ Pagac      │
│ Ramón     │ Herzog     │ Tremblay   │
│ Salvador  │ Sánchez    │ Pérez      │
│ Sonia     │ Gea        │ Ruiz       │
│ Zoe       │ Ramirez    │ Gea        │
└───────────┴────────────┴────────────┘
**/
 --Averigua el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos.
SELECT nombre, apellido1, apellido2 FROM persona WHERE telefono IS NULL;
/**
┌───────────┬────────────┬───────────┐
│  nombre   │ apellido1  │ apellido2 │
├───────────┼────────────┼───────────┤
│ Pedro     │ Heller     │ Pagac     │
│ Ismael    │ Strosin    │ Turcotte  │
│ Esther    │ Spencer    │ Lakin     │
│ Carmen    │ Streich    │ Hirthe    │
│ Antonio   │ Fahey      │ Considine │
│ Guillermo │ Ruecker    │ Upton     │
│ Francesca │ Schowalter │ Muller    │
└───────────┴────────────┴───────────┘
**/
--  Devuelve el listado de los alumnos que nacieron en 1999.

select * from persona where tipo='alumno' and fecha_nacimiento regexp('1999');
/**
┌────┬───────────┬─────────┬───────────┬───────────┬─────────┬─────────────────┬───────────┬──────────────────┬──────┬────────┐
│ id │    nif    │ nombre  │ apellido1 │ apellido2 │ ciudad  │    direccion    │ telefono  │ fecha_nacimiento │ sexo │  tipo  │
├────┼───────────┼─────────┼───────────┼───────────┼─────────┼─────────────────┼───────────┼──────────────────┼──────┼────────┤
│ 7  │ 97258166K │ Ismael  │ Strosin   │ Turcotte  │ Almería │ C/ Neptuno      │           │ 1999/05/24       │ H    │ alumno │
│ 22 │ 41491230N │ Antonio │ Domínguez │ Guerrero  │ Almería │ C/ Cabo de Gata │ 626652498 │ 1999/02/11       │ H    │ alumno │
└────┴───────────┴─────────┴───────────┴───────────┴─────────┴─────────────────┴───────────┴──────────────────┴──────┴────────┘
**/
--  Devuelve el listado de profesores que no han dado de alta su número de teléfono en la base de datos y además su nif termina en K.

--  Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.
SELECT * FROM asignatura WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;
/**
┌────┬───────────────────────────────────────────┬──────────┬─────────────┬───────┬──────────────┬─────────────┬──────────┐
│ id │                  nombre                   │ creditos │    tipo     │ curso │ cuatrimestre │ id_profesor │ id_grado │
├────┼───────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 72 │ Bases moleculares del desarrollo vegetal  │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
│ 73 │ Fisiología animal                         │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
│ 74 │ Metabolismo y biosíntesis de biomoléculas │ 6.0      │ obligatoria │ 3     │ 1            │             │ 7        │
│ 75 │ Operaciones de separación                 │ 6.0      │ obligatoria │ 3     │ 1            │             │ 7        │
│ 76 │ Patología molecular de plantas            │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
│ 77 │ Técnicas instrumentales básicas           │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
└────┴───────────────────────────────────────────┴──────────┴─────────────┴───────┴──────────────┴─────────────┴──────────┘
**/
--  Devuelve un listado con los datos de todas las alumnas que se han matriculado alguna vez en el Grado en Ingeniería Informática (Plan 2015).

--  Devuelve un listado con todas las asignaturas ofertadas en el Grado en Ingeniería Informática (Plan 2015).
    select a.* from asignatura as a join grado as g on a.id_grado=g.id where g.nombre REGEXP 'Informática';
    /**
    ┌────┬────────────────────────────────────────────────────────────────────────┬──────────┬─────────────┬───────┬──────────────┬─────────────┬──────────┐
    │ id │                                 nombre                                 │ creditos │    tipo     │ curso │ cuatrimestre │ id_profesor │ id_grado │
    ├────┼────────────────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
    │ 1  │ Álgegra lineal y matemática discreta                                   │ 6.0      │ básica      │ 1     │ 1            │ 3           │ 4        │
    │ 2  │ Cálculo                                                                │ 6.0      │ básica      │ 1     │ 1            │ 14          │ 4        │
    │ 3  │ Física para informática                                                │ 6.0      │ básica      │ 1     │ 1            │ 3           │ 4        │
    │ 4  │ Introducción a la programación                                         │ 6.0      │ básica      │ 1     │ 1            │ 14          │ 4        │
    │ 5  │ Organización y gestión de empresas                                     │ 6.0      │ básica      │ 1     │ 1            │ 3           │ 4        │
    │ 6  │ Estadística                                                            │ 6.0      │ básica      │ 1     │ 2            │ 14          │ 4        │
    │ 7  │ Estructura y tecnología de computadores                                │ 6.0      │ básica      │ 1     │ 2            │ 3           │ 4        │
    │ 8  │ Fundamentos de electrónica                                             │ 6.0      │ básica      │ 1     │ 2            │ 14          │ 4        │
    │ 9  │ Lógica y algorítmica                                                   │ 6.0      │ básica      │ 1     │ 2            │ 3           │ 4        │
    │ 10 │ Metodología de la programación                                         │ 6.0      │ básica      │ 1     │ 2            │ 14          │ 4        │
    │ 11 │ Arquitectura de Computadores                                           │ 6.0      │ básica      │ 2     │ 1            │ 3           │ 4        │
    │ 12 │ Estructura de Datos y Algoritmos I                                     │ 6.0      │ obligatoria │ 2     │ 1            │ 3           │ 4        │
    │ 13 │ Ingeniería del Software                                                │ 6.0      │ obligatoria │ 2     │ 1            │ 14          │ 4        │
    │ 14 │ Sistemas Inteligentes                                                  │ 6.0      │ obligatoria │ 2     │ 1            │ 3           │ 4        │
    │ 15 │ Sistemas Operativos                                                    │ 6.0      │ obligatoria │ 2     │ 1            │ 14          │ 4        │
    │ 16 │ Bases de Datos                                                         │ 6.0      │ básica      │ 2     │ 2            │ 14          │ 4        │
    │ 17 │ Estructura de Datos y Algoritmos II                                    │ 6.0      │ obligatoria │ 2     │ 2            │ 14          │ 4        │
    │ 18 │ Fundamentos de Redes de Computadores                                   │ 6.0      │ obligatoria │ 2     │ 2            │ 3           │ 4        │
    │ 19 │ Planificación y Gestión de Proyectos Informáticos                      │ 6.0      │ obligatoria │ 2     │ 2            │ 3           │ 4        │
    │ 20 │ Programación de Servicios Software                                     │ 6.0      │ obligatoria │ 2     │ 2            │ 14          │ 4        │
    │ 21 │ Desarrollo de interfaces de usuario                                    │ 6.0      │ obligatoria │ 3     │ 1            │ 14          │ 4        │
    │ 22 │ Ingeniería de Requisitos                                               │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 23 │ Integración de las Tecnologías de la Información en las Organizaciones │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 24 │ Modelado y Diseño del Software 1                                       │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 25 │ Multiprocesadores                                                      │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 26 │ Seguridad y cumplimiento normativo                                     │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 27 │ Sistema de Información para las Organizaciones                         │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 28 │ Tecnologías web                                                        │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 29 │ Teoría de códigos y criptografía                                       │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 30 │ Administración de bases de datos                                       │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 31 │ Herramientas y Métodos de Ingeniería del Software                      │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 32 │ Informática industrial y robótica                                      │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 33 │ Ingeniería de Sistemas de Información                                  │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 34 │ Modelado y Diseño del Software 2                                       │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 35 │ Negocio Electrónico                                                    │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 36 │ Periféricos e interfaces                                               │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 37 │ Sistemas de tiempo real                                                │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 38 │ Tecnologías de acceso a red                                            │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 39 │ Tratamiento digital de imágenes                                        │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 40 │ Administración de redes y sistemas operativos                          │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 41 │ Almacenes de Datos                                                     │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 42 │ Fiabilidad y Gestión de Riesgos                                        │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 43 │ Líneas de Productos Software                                           │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 44 │ Procesos de Ingeniería del Software 1                                  │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 45 │ Tecnologías multimedia                                                 │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 46 │ Análisis y planificación de las TI                                     │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    │ 47 │ Desarrollo Rápido de Aplicaciones                                      │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    │ 48 │ Gestión de la Calidad y de la Innovación Tecnológica                   │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    │ 49 │ Inteligencia del Negocio                                               │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    │ 50 │ Procesos de Ingeniería del Software 2                                  │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    │ 51 │ Seguridad Informática                                                  │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    └────┴────────────────────────────────────────────────────────────────────────┴──────────┴─────────────┴───────┴──────────────┴─────────────┴──────────┘
    **/


--  Devuelve un listado de los profesores junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.
SELECT p.apellido1, p.apellido2, p.nombre, d.nombre AS nombre_departamento FROM persona WHERE tipo='profesor' JOIN departamentos d ON p.id_departamento = d.id ORDER BY p.apellido1 ASC, p.apellido2 ASC, p.nombre ASC;

--  Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif 26902806M.
SELECT a.nombre, c.ano_inicio, c.ano_fin FROM asignaturas a JOIN cursos c ON a.id_curso = c.id JOIN matriculas m ON a.id = m.id_asignatura JOIN alumnos al ON m.id_alumno = al.id WHERE al.nif = '26902806M';

--  Devuelve un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).
SELECT DISTINCT d.nombre FROM departamentos d JOIN profesores p ON d.id = p.id_departamento JOIN asignaturas a ON p.id = a.id_profesor JOIN grados g ON a.id_grado = g.id WHERE g.nombre = 'Ingeniería Informática' AND g.plan = 2015;

--  Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.
SELECT al.* FROM alumnos al JOIN matriculas m ON al.id = m.id_alumno JOIN cursos c ON m.id_curso = c.id WHERE c.anyo_inicio = 2018 AND c.anyo_fin = 2019;

-- Consultas Multitabla (WHERE)

--  Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre.
SELECT d.nombre AS nombre_departamento, p.apellido1, p.apellido2, p.nombre FROM persona where tipo='profesor' LEFT JOIN departamentos d ON p.id_departamento = d.id ORDER BY d.nombre ASC, p.apellido1 ASC, p.apellido2 ASC, p.nombre ASC;

--  Devuelve un listado con los profesores que no están asociados a un departamento.
SELECT p.nombre, p.apellido1, p.apellido2 FROM profesores p WHERE p.id_departamento IS NULL;


--  Devuelve un listado con los departamentos que no tienen profesores asociados.
SELECT d.nombre FROM departamentos d LEFT JOIN profesores p ON d.id = p.id_departamento GROUP BY d.nombre HAVING COUNT(p.id) = 0;


-- Devuelve un listado con los profesores que no imparten ninguna asignatura.
SELECT p.nombre, p.apellido1, p.apellido2 FROM profesores p LEFT JOIN asignaturas a ON p.id = a.id_profesor GROUP BY p.nombre, p.apellido1, p.apellido2 HAVING COUNT(a.id) = 0;


-- Devuelve un listado con las asignaturas que no tienen un profesor asignado.
SELECT nombre FROM asignatura WHERE a.id_profesor IS NULL;

-- Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. El resultado debe mostrar el nombre del departamento y el nombre de la asignatura queno se haya impartido nunca.
SELECT d.nombre AS nombre_departamento, a.nombre AS nombre_asignatura FROM departamento d JOIN asignatura a ON d.id = a.id_departamento LEFT JOIN curso c ON a.id = c.id_asignatura WHERE c.id_asignatura IS NULL;


--Consultas multitabla (Join)


-- Devuelve el número total de alumnas que hay.

select * from persona where sexo='M' and tipo='alumno';
/**
┌────┬───────────┬────────┬───────────┬───────────┬─────────┬────────────────────┬───────────┬──────────────────┬──────┬────────┐
│ id │    nif    │ nombre │ apellido1 │ apellido2 │ ciudad  │     direccion      │ telefono  │ fecha_nacimiento │ sexo │  tipo  │
├────┼───────────┼────────┼───────────┼───────────┼─────────┼────────────────────┼───────────┼──────────────────┼──────┼────────┤
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
└────┴───────────┴────────┴───────────┴───────────┴─────────┴────────────────────┴───────────┴──────────────────┴──────┴────────┘
**/
-- Calcula cuántos alumnos nacieron en 1999.

select * from persona where tipo='alumno' and fecha_nacimiento regexp('1999');
/**
┌────┬───────────┬─────────┬───────────┬───────────┬─────────┬─────────────────┬───────────┬──────────────────┬──────┬────────┐
│ id │    nif    │ nombre  │ apellido1 │ apellido2 │ ciudad  │    direccion    │ telefono  │ fecha_nacimiento │ sexo │  tipo  │
├────┼───────────┼─────────┼───────────┼───────────┼─────────┼─────────────────┼───────────┼──────────────────┼──────┼────────┤
│ 7  │ 97258166K │ Ismael  │ Strosin   │ Turcotte  │ Almería │ C/ Neptuno      │           │ 1999/05/24       │ H    │ alumno │
│ 22 │ 41491230N │ Antonio │ Domínguez │ Guerrero  │ Almería │ C/ Cabo de Gata │ 626652498 │ 1999/02/11       │ H    │ alumno │
└────┴───────────┴─────────┴───────────┴───────────┴─────────┴─────────────────┴───────────┴──────────────────┴──────┴────────┘
**/
-- Calcula cuántos profesores hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.
SELECT d.nombre, COUNT(p.id) AS numero_de_profesores FROM departamentos d JOIN profesores p ON d.id = p.id_departamento GROUP BY d.nombre HAVING COUNT(p.id) > 0 ORDER BY COUNT(p.id) DESC;

-- Devuelve un listado con todos los departamentos y el número de profesores que hay en cada uno de ellos. Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también tienen que aparecer en el listado.
SELECT d.nombre, COUNT(p.id) AS numero_de_profesores FROM departamentos d LEFT JOIN profesores p ON d.id = p.id_departamento GROUP BY d.nombre ORDER BY COUNT(p.id) DESC;

-- Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.
SELECT g.nombre, COUNT(a.id) AS numero_asignaturas FROM grado g JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre HAVING COUNT(a.id) > 40 ORDER BY COUNT(a.id) DESC;
/**
┌─────────────────────────────────────────────┬───────────────────────┐
│                   nombre                    │   numero_asignaturas  │
├─────────────────────────────────────────────┼───────────────────────┤
│ Grado en Ingeniería Informática (Plan 2015) │ 51                    │
└─────────────────────────────────────────────┴───────────────────────┘
**/
-- Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.
SELECT g.nombre, COUNT(a.id) AS numero_de_asignaturas FROM grado g JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre HAVING COUNT(a.id) > 40 ORDER BY COUNT(a.id) DESC;
/**
┌─────────────────────────────────────────────┬───────────────────────┐
│                   nombre                    │ numero_de_asignaturas │
├─────────────────────────────────────────────┼───────────────────────┤
│ Grado en Ingeniería Informática (Plan 2015) │ 51                    │
└─────────────────────────────────────────────┴───────────────────────┘
**/
-- Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura. El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo. Ordene el resultado de mayor a menor por el número total de crédidos.
SELECT g.nombre, a.tipo, SUM(a.creditos) AS total_creditos FROM grado g JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre, a.tipo ORDER BY SUM(a.creditos) DESC;
/**
┌─────────────────────────────────────────────┬─────────────┬────────────────┐
│                   nombre                    │    tipo     │ total_creditos │
├─────────────────────────────────────────────┼─────────────┼────────────────┤
│ Grado en Ingeniería Informática (Plan 2015) │ optativa    │ 180.0          │
│ Grado en Biotecnología (Plan 2015)          │ obligatoria │ 120.0          │
│ Grado en Ingeniería Informática (Plan 2015) │ básica      │ 72.0           │
│ Grado en Biotecnología (Plan 2015)          │ básica      │ 60.0           │
│ Grado en Ingeniería Informática (Plan 2015) │ obligatoria │ 54.0           │
└─────────────────────────────────────────────┴─────────────┴────────────────┘
**/

-- Devuelve un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares. El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados.
SELECT c.anyo_inicio, COUNT(DISTINCT al.id) AS numero_de_alumnos FROM curso_escolar c JOIN alumno_se_matricula_asignatura m ON c.id = m.id_curso JOIN persona al ON m.id_alumno = al.id GROUP BY c.anyo_inicio;

-- Devuelve un listado con el número de asignaturas que imparte cada profesor. El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. El resultado estará ordenado de mayor a menor por el número de asignaturas.
SELECT p.id, p.nombre, p.apellido1, p.apellido2, COUNT(a.id) AS numero_de_asignaturas FROM persona p LEFT JOIN asignatura a ON p.id = a.id_profesor GROUP BY p.id, p.nombre, p.apellido1, p.apellido2 ORDER BY COUNT(a.id) DESC;
/**
┌────┬───────────┬────────────┬────────────┬───────────────────────┐
│ id │  nombre   │ apellido1  │ apellido2  │ numero_de_asignaturas │
├────┼───────────┼────────────┼────────────┼───────────────────────┤
│ 14 │ Manolo    │ Hamill     │ Kozey      │ 11                    │
│ 3  │ Zoe       │ Ramirez    │ Gea        │ 10                    │
│ 1  │ Salvador  │ Sánchez    │ Pérez      │ 0                     │
│ 2  │ Juan      │ Saez       │ Vega       │ 0                     │
│ 4  │ Pedro     │ Heller     │ Pagac      │ 0                     │
│ 5  │ David     │ Schmidt    │ Fisher     │ 0                     │
│ 6  │ José      │ Koss       │ Bayer      │ 0                     │
│ 7  │ Ismael    │ Strosin    │ Turcotte   │ 0                     │
│ 8  │ Cristina  │ Lemke      │ Rutherford │ 0                     │
│ 9  │ Ramón     │ Herzog     │ Tremblay   │ 0                     │
│ 10 │ Esther    │ Spencer    │ Lakin      │ 0                     │
│ 11 │ Daniel    │ Herman     │ Pacocha    │ 0                     │
│ 12 │ Carmen    │ Streich    │ Hirthe     │ 0                     │
│ 13 │ Alfredo   │ Stiedemann │ Morissette │ 0                     │
│ 15 │ Alejandro │ Kohler     │ Schoen     │ 0                     │
│ 16 │ Antonio   │ Fahey      │ Considine  │ 0                     │
│ 17 │ Guillermo │ Ruecker    │ Upton      │ 0                     │
│ 18 │ Micaela   │ Monahan    │ Murray     │ 0                     │
│ 19 │ Inma      │ Lakin      │ Yundt      │ 0                     │
│ 20 │ Francesca │ Schowalter │ Muller     │ 0                     │
│ 21 │ Juan      │ Gutiérrez  │ López      │ 0                     │
│ 22 │ Antonio   │ Domínguez  │ Guerrero   │ 0                     │
│ 23 │ Irene     │ Hernández  │ Martínez   │ 0                     │
│ 24 │ Sonia     │ Gea        │ Ruiz       │ 0                     │
└────┴───────────┴────────────┴────────────┴───────────────────────┘
**/





--Subconsultas

-- Devuelve todos los datos del alumno más joven.

-- Devuelve un listado con los profesores que no están asociados a un departamento.

-- Devuelve un listado con los departamentos que no tienen profesores asociados.

-- Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.
Select * p.nombre from persona as p
JOIN profesor as pr on p.id=pr.id_profesor
where pr.id_profesor not in
(select DISTINCT(id_profesor) from asignatura a.id_profesor=pr.id_profesor); 
-- Devuelve un listado con las asignaturas que no tienen un profesor asignado.

-- Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.



    




















--Subconsultas

    --Devuelve todos los datos del alumno más joven.
SELECT * from persona WHERE tipo='alumno' and fecha_nacimiento = (SELECT MAX(fecha_nacimiento) from persona where tipo='alumno');  
/**
┌────┬───────────┬────────┬───────────┬───────────┬─────────┬───────────────────┬──────────┬──────────────────┬──────┬────────┐
│ id │    nif    │ nombre │ apellido1 │ apellido2 │ ciudad  │     direccion     │ telefono │ fecha_nacimiento │ sexo │  tipo  │
├────┼───────────┼────────┼───────────┼───────────┼─────────┼───────────────────┼──────────┼──────────────────┼──────┼────────┤
│ 4  │ 17105885A │ Pedro  │ Heller    │ Pagac     │ Almería │ C/ Estrella fugaz │          │ 2000/10/05       │ H    │ alumno │
└────┴───────────┴────────┴───────────┴───────────┴─────────┴───────────────────┴──────────┴──────────────────┴──────┴────────┘
**/
    --Devuelve un listado con los profesores que no están asociados a un departamento.
SELECT p.* from profesor p WHERE NOT EXISTS (SELECT * from departamento d where d.id = p.id_departamento);

    --Devuelve un listado con los departamentos que no tienen profesores asociados.
SELECT * from departamento d WHERE NOT EXISTS (SELECT * from profesor p where p.id_departamento = d.id);
/**
┌────┬─────────────────────┐
│ id │       nombre        │
├────┼─────────────────────┤
│ 7  │ Filología           │
│ 8  │ Derecho             │
│ 9  │ Biología y Geología │
└────┴─────────────────────┘
**/
    --Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.

SELECT p.nombre from persona as p JOIN profesor as pr on p.id=pr.id_profesor where pr.id_profesor not in (SELECT distinct (id_profesor) from asignatura a WHERE a.id_profesor=pr.id_profesor);
/**
┌───────────┐
│  nombre   │
├───────────┤
│ David     │
│ Cristina  │
│ Esther    │
│ Carmen    │
│ Alfredo   │
│ Alejandro │
│ Antonio   │
│ Guillermo │
│ Micaela   │
│ Francesca │
└───────────┘
**/
    --Devuelve un listado con las asignaturas que no tienen un profesor asignado.
SELECT a.nombre from asignatura a WHERE id  IN (SELECT a.id from asignatura where id_profesor is NULL);
/**
────────────────────────────────────────────────────────────────────────┐
│                                 nombre                                 │
├────────────────────────────────────────────────────────────────────────┤
│ Álgegra lineal y matemática discreta                                   │
│ Cálculo                                                                │
│ Física para informática                                                │
│ Introducción a la programación                                         │
│ Organización y gestión de empresas                                     │
│ Estadística                                                            │
│ Estructura y tecnología de computadores                                │
│ Fundamentos de electrónica                                             │
│ Lógica y algorítmica                                                   │
│ Metodología de la programación                                         │
│ Arquitectura de Computadores                                           │
│ Estructura de Datos y Algoritmos I                                     │
│ Ingeniería del Software                                                │
│ Sistemas Inteligentes                                                  │
│ Sistemas Operativos                                                    │
│ Bases de Datos                                                         │
│ Estructura de Datos y Algoritmos II                                    │
│ Fundamentos de Redes de Computadores                                   │
│ Planificación y Gestión de Proyectos Informáticos                      │
│ Programación de Servicios Software                                     │
│ Desarrollo de interfaces de usuario                                    │
│ Ingeniería de Requisitos                                               │
│ Integración de las Tecnologías de la Información en las Organizaciones │
│ Modelado y Diseño del Software 1                                       │
│ Multiprocesadores                                                      │
│ Seguridad y cumplimiento normativo                                     │
│ Sistema de Información para las Organizaciones                         │
│ Tecnologías web                                                        │
│ Teoría de códigos y criptografía                                       │
│ Administración de bases de datos                                       │
│ Herramientas y Métodos de Ingeniería del Software                      │
│ Informática industrial y robótica                                      │
│ Ingeniería de Sistemas de Información                                  │
│ Modelado y Diseño del Software 2                                       │
│ Negocio Electrónico                                                    │
│ Periféricos e interfaces                                               │
│ Sistemas de tiempo real                                                │
│ Tecnologías de acceso a red                                            │
│ Tratamiento digital de imágenes                                        │
│ Administración de redes y sistemas operativos                          │
│ Almacenes de Datos                                                     │
│ Fiabilidad y Gestión de Riesgos                                        │
│ Líneas de Productos Software                                           │
│ Procesos de Ingeniería del Software 1                                  │
│ Tecnologías multimedia                                                 │
│ Análisis y planificación de las TI                                     │
│ Desarrollo Rápido de Aplicaciones                                      │
│ Gestión de la Calidad y de la Innovación Tecnológica                   │
│ Inteligencia del Negocio                                               │
│ Procesos de Ingeniería del Software 2                                  │
│ Seguridad Informática                                                  │
│ Biologia celular                                                       │
│ Física                                                                 │
│ Matemáticas I                                                          │
│ Química general                                                        │
│ Química orgánica                                                       │
│ Biología vegetal y animal                                              │
│ Bioquímica                                                             │
│ Genética                                                               │
│ Matemáticas II                                                         │
│ Microbiología                                                          │
│ Botánica agrícola                                                      │
│ Fisiología vegetal                                                     │
│ Genética molecular                                                     │
│ Ingeniería bioquímica                                                  │
│ Termodinámica y cinética química aplicada                              │
│ Biorreactores                                                          │
│ Biotecnología microbiana                                               │
│ Ingeniería genética                                                    │
│ Inmunología                                                            │
│ Virología                                                              │
│ Bases moleculares del desarrollo vegetal                               │
│ Fisiología animal                                                      │
│ Metabolismo y biosíntesis de biomoléculas                              │
│ Operaciones de separación                                              │
│ Patología molecular de plantas                                         │
│ Técnicas instrumentales básicas                                        │
│ Bioinformática                                                         │
│ Biotecnología de los productos hortofrutículas                         │
│ Biotecnología vegetal                                                  │
│ Genómica y proteómica                                                  │
│ Procesos biotecnológicos                                               │
│ Técnicas instrumentales avanzadas                                      │
└────────────────────────────────────────────────────────────────────────┘
**/
    --Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.
    select d.* from departamento as d where d.id not in(SELECT d.* from departamento as d join profesor as p on d.id=p.id_departamento join asignatura as a on p.id_profesor=a.id_profesor)
/**
┌────┬─────────────────────┐
│ id │       nombre        │
├────┼─────────────────────┤
│ 2  │ Matemáticas         │
│ 3  │ Economía y Empresa  │
│ 4  │ Educación           │
│ 5  │ Agronomía           │
│ 6  │ Química y Física    │
│ 7  │ Filología           │
│ 8  │ Derecho             │
│ 9  │ Biología y Geología │
└────┴─────────────────────┘
**/