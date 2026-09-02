INSERT INTO categorias(nombre)
    VALUES ('PC'),
            ('Software'),
            ('Hardware'),
            ('Antivirus');

INSERT INTO productos(nombre, categoria_id, precio, stock)
    VALUES ('Lenovo PC', 1, 5000, 100),
        ('Disco duro', 3, 200, 50),
        ('USSD', 3, 150, 50),
        ('Office', 2, 150, 300);

INSERT INTO proveedores(nombre, apellido, producto_id, email, telefono)
    VALUES  
        ('Ana', 'Parro', 1, 'a.parro@correo.com', 12356987),
        ('Juan', 'Lopez', 2, 'j.lopez@correo.com', 45678912),
        ('Davis', 'Castaño', 3, 'd.castaño@correo.com', 45693258),
        ('Lucia', 'Morgan', 4, 'l.morgan@correo.com', 14725836);


INSERT INTO clientes(nombre, apellido, email, telefono)
    VALUES  
        ('Ana', 'Castro', 'a.castro@correo.com', 14587256),
        ('Luis', 'Mora', 'l.mora@correo.com', 45698712),
        ('Julia', 'Montez', 'j.montes@correo.com', 12369548);

INSERT INTO detalle_venta(producto_id, cantidad, subtotal)
    VALUES
        (1, 2, 1000),
        (2, 3, 600);

INSERT INTO ventas(cliente_id, detalle_venta_id, precio_final)
    VALUES
        (1, 1, 1000),
        (2, 2, 600);