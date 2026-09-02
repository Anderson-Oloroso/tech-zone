# Análisis de requerimientos

## Problema
Con el crecimiento del comercio digital y la alta demanda de dispositivos electrónicos, la empresa ha notado la necesidad de mejorar la gestión de su inventario y ventas. Hasta ahora, han llevado el control de productos y transacciones en hojas de cálculo, lo que ha generado problemas como:

🔹 **Errores en el control de stock:** No saben con certeza qué productos están por agotarse, lo que ha llevado a problemas de desabastecimiento o acumulación innecesaria de productos en bodega.

🔹 **Dificultades en el seguimiento de ventas:** No cuentan con un sistema eficiente para analizar qué productos se venden más, en qué períodos del año hay mayor demanda o quiénes son sus clientes más frecuentes.

🔹 **Gestión manual de proveedores:** Los pedidos a proveedores se han realizado sin un historial claro de compras y ventas, dificultando la negociación de mejores precios y la planificación del abastecimiento.

🔹 **Falta de automatización en el registro de compras:** Cada vez que un cliente realiza una compra, los empleados deben registrar manualmente los productos vendidos y actualizar el inventario, lo que consume tiempo y es propenso a errores.

## Solución 
> La decisión tomada para resolver estos problemas es _La implementación de una base de datos en PostgreSQL_ que permita gestionar de manera eficiente su inventario, las ventas, los clientes y los proveedores.

## Entidades identificadas
- productos: Almacenará los datos de los productos
    _Campos:_ producto_id, nombre, categoria_id, precio, stock, proveedor_id
- clientes: Almacenará y llevará un control sobre los clientes
    _Campos:_ cliente_id, nombre, apellido, email, telefono
- ventas:  Control sobre las ventas
    _Campos:_ venta_id, detalle_venta_id, cliente_id
- proveedores: El negocio guardará sus proveedores en base a los productos
    _Campos:_ proveedor_id, nombre, apellido, producto_id, email, telefono.

    ### Tabla auxiliar
    - detalle_venta: Para evitar reduncancias en las ventas de los productos y sus cantidades.
        _Campos:_ detalle_venta_id, producto_id, cliente_id, cantidad 

## Relaciones y cardinalidades
- **clientes-ventas: (1:N)** La empresa podrá realizar múltiples ventas hacia un solo cliente, pero no le pueden realizar la misma venta a múltiples clientes.

- **ventas-detalle_ventas: (1:N)** Una venta puede tener múltiples detalles de los productos a vender, y esos detalles corresponden a una sola venta.

- **productos-detalle_ventas (1:N)** Un producto puede tener varios detalles de ventas, pero los mismos no corresponderán al mismo pedido a uno solo.

- **productos-proveedores (1:N)** Actualmente la emprese cuenta con un proveedor por producto, pero a medida que esta se expande la necesidad se vuelve más grande. Por ende puede sernecesario que uno o más proveedores abastezcan los productos.


## Hechos de la base de datos
- Moneda guatemalteca (Q)
- Un producto puede ser abastecido por varios proveedores
- Base de datos PostgreSQL
- Base con fines de expansión de la empresa
- Los precios y demás es manejarán a 2 decimales.