-- Listar los coches vendidos con sus modelos y precios, junto con los nombres de los clientes que los compraron.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. ¿Qué es lo que no me han pedido?
select co.modelo, co.precio, cli.nombre from coches as co, clientes as cli, ventas as ve where cli.id_cliente=ve.id_cliente and ve.id_coche=co.id_coche;
/**
┌────────────────┬─────────┬─────────────────┐
│     modelo     │ precio  │     nombre      │
├────────────────┼─────────┼─────────────────┤
│ Sedán 2022     │ 25000.0 │ Juan Pérez      │
│ Hatchback 2021 │ 22000.0 │ María Gómez     │
│ SUV 2023       │ 30000.0 │ Carlos López    │
│ Coupé 2022     │ 28000.0 │ Ana Martínez    │
│ Camioneta 2023 │ 32000.0 │ Pedro Rodríguez │
│ Compacto 2021  │ 20000.0 │ Laura Sánchez   │
│ Híbrido 2022   │ 27000.0 │ Miguel González │
│ Deportivo 2023 │ 35000.0 │ Isabel Díaz     │
│ Eléctrico 2021 │ 40000.0 │ Elena Torres    │
│ Sedán 2022     │ 25000.0 │ Juan Pérez      │
│ Hatchback 2021 │ 22000.0 │ María Gómez     │
│ SUV 2023       │ 30000.0 │ Carlos López    │
│ Coupé 2022     │ 28000.0 │ Ana Martínez    │
│ Camioneta 2023 │ 32000.0 │ Pedro Rodríguez │
│ Compacto 2021  │ 20000.0 │ Laura Sánchez   │
│ Híbrido 2022   │ 27000.0 │ Miguel González │
│ Deportivo 2023 │ 35000.0 │ Isabel Díaz     │
│ Eléctrico 2021 │ 40000.0 │ Elena Torres    │
└────────────────┴─────────┴─────────────────┘
**/
-- Encontrar los clientes que han comprado coches con precios superiores al promedio de todos los coches vendidos.
  -- Cosas que debo de tener en cuenta:
    -- Precios superiores.
    -- Obtener la media. AVG(precio)
 select cli.* from clientes as cli, coches as co, ventas as ve where co.precio>(select AVG(precio) from coches) and cli.id_cliente=ve.id_cliente and co.id_coche=ve.id_coche;
/**
┌────────────┬─────────────────┬──────┬────────────────┐
│ id_cliente │     nombre      │ edad │   direccion    │
├────────────┼─────────────────┼──────┼────────────────┤
│ 3          │ Carlos López    │ 35   │ Calle C #789   │
│ 5          │ Pedro Rodríguez │ 40   │ Calle E #234   │
│ 8          │ Isabel Díaz     │ 38   │ Avenida H #111 │
│ 10         │ Elena Torres    │ 29   │ Avenida J #333 │
└────────────┴─────────────────┴──────┴────────────────┘
**/
-- Mostrar los modelos de coches y sus precios que no han sido vendidos aún:

  -- Cosas que debo de tener en cuenta:
    -- Coches que han sido vendidos.
    -- Quiero los coches que no han sido vendidos. NOT id_coche IN ventas

-- Calcular el total gastado por todos los clientes en coches:
  -- Cosas que debo de tener en cuenta:
    -- Me estan pidiendo la suma total de todos los coches vendidos, NO de aquellos que aún no se han vendido.
SELECT SUM(precio) AS total FROM coches;
/**
┌───────────────┐
│     total     │
├───────────────┤
│ 290000.0      │
└───────────────┘
**/
-- Listar los coches vendidos junto con la fecha de venta y el nombre del cliente, ordenados por fecha de venta de forma descendente:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. ¿Por qué campo tengo que ordenadar. Es uno o más campos?

-- Encontrar el modelo de coche más caro que ha sido reparado al menos una vez.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. MAX

SELECT modelo FROM coches WHERE precio = (SELECT MAX(precio) FROM coches);
/**
┌────────────────┐
│     modelo     │
├────────────────┤
│ Eléctrico 2021 │
└────────────────┘
**/
-- Mostrar los clientes que han comprado al menos un coche (un coche o más) y la cantidad de coches comprados.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT

-- Encontrar los clientes que han comprado coches de la marca 'Toyota':
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. Like | regexp | =. Tabla normalizada ?.

SELECT nombre
FROM clientes
WHERE id_cliente IN (SELECT id_cliente FROM ventas WHERE id_coche IN (SELECT id_coche FROM coches WHERE marca = 'Toyota'));
/**
┌────────────┐
│   nombre   │
├────────────┤
│ Juan Pérez │
└────────────┘
*/
-- Calcular el promedio de edad de los clientes que han comprado coches de más de 25,000.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. 
SELECT AVG(edad) AS edad_promedio
FROM clientes
WHERE id_cliente IN (SELECT id_cliente FROM coches WHERE precio > 25000);
/**
┌───────────────┐
│ edad_promedio │
├───────────────┤
│ 31.7          │
└───────────────┘
**/
-- Mostrar los modelos de coches y sus precios que fueron comprados por clientes mayores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.
SELECT coches.modelo, ventas.id_coche FROM coches, ventas WHERE coches.id_coche = ventas.id_coche AND ventas.id_cliente IN (SELECT id_cliente FROM clientes WHERE edad > 30);
/**
┌────────────────┬──────────┐
│     modelo     │ id_coche │
├────────────────┼──────────┤
│ SUV 2023       │ 3        │
│ Camioneta 2023 │ 5        │
│ Compacto 2021  │ 6        │
│ Deportivo 2023 │ 8        │
└────────────────┴──────────┘
**/
-- Encontrar los coches vendidos en el año 2022 junto con la cantidad total de ventas en ese año.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.

-- Listar los coches cuyos precios son mayores que el precio promedio de coches vendidos a clientes menores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. AVG
SELECT modelo FROM coches WHERE precio > (SELECT AVG(ventas.id_coche) FROM ventas WHERE id_cliente IN (SELECT id_cliente FROM clientes WHERE edad < 30));
/**
┌────────────────┐
│     modelo     │
├────────────────┤
│ Sedán 2022     │
│ Hatchback 2021 │
│ SUV 2023       │
│ Coupé 2022     │
│ Camioneta 2023 │
│ Compacto 2021  │
│ Híbrido 2022   │
│ Deportivo 2023 │
│ Pickup 2022    │
│ Eléctrico 2021 │
└────────────────┘
**/
-- Calcular el total de ventas por marca de coche, ordenado de forma descendente por el total de ventas:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT| DESC|ASC precio
SELECT coches.marca, COUNT(*) AS total_ventas FROM coches, ventas WHERE coches.id_coche = ventas.id_coche GROUP BY coches.marca ORDER BY total_ventas DESC;
/**
┌────────────┬──────────────┐
│   marca    │ total_ventas │
├────────────┼──────────────┤
│ Volkswagen │ 1            │
│ Toyota     │ 1            │
│ Tesla      │ 1            │
│ Nissan     │ 1            │
│ Mazda      │ 1            │
│ Hyundai    │ 1            │
│ Honda      │ 1            │
│ Ford       │ 1            │
│ Chevrolet  │ 1            │
└────────────┴──────────────┘
**/