##calcular precio total pedido
```sql
/** Dado un código de pedido la función debe calcular la suma total del pedido. Tenga en cuenta que un pedido puede contener varios productos diferentes y varias cantidades de cada producto.
Parámetros de entrada: codigo_pedido (INT)
Parámetros de salida: El precio total del pedido (FLOAT) **/
DELIMITER $$
CREATE FUNCTION calcular_precio_total(
    cod_pedido INT
)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE precio_total FLOAT;
    SELECT SUM(d.cantidad * d.precio_unidad) INTO precio_total FROM
    detalle_pedido as d WHERE d.codigo_pedido = cod_pedido;
    RETURN precio_total;
END $$
DELIMITER ;

 select calcular_precio_total(2) ;
+---------------------------------+
| calcular_precio_total(4)        |
+---------------------------------+
|                            2624 |
+---------------------------------+
```