INSERT INTO categorias(nombre)
VALUES
    ('Computadoras'),
    ('Software'),
    ('Almacenamiento'),
    ('Accesorios'),
    ('Redes');


INSERT INTO proveedores(nombre,apellido,email,telefono)
VALUES
    ('Ana', 'Parro', 'a.parro@correo.com', '12356987'),
    ('Juan', 'Lopez', 'j.lopez@correo.com', '45678912'),
    ('Davis', 'Castaño', 'd.castano@correo.com', '45693258'),
    ('Lucia', 'Morgan', 'l.morgan@correo.com', '14725836'),
    ('Pedro', 'Ramirez', 'p.ramirez@correo.com', '78945612'),
    ('Sofia', 'Torres', 's.torres@correo.com', '32165498'),
    ('Carlos', 'Mendez', 'c.mendez@correo.com', '98712345'),
    ('Laura', 'Gomez', 'l.gomez@correo.com', '74125896'),
    ('Miguel', 'Rojas', 'm.rojas@correo.com', '85236914');


INSERT INTO productos(nombre,categoria_id,proveedor_id,precio,stock)
VALUES
    ('Lenovo PC', 1, 1, 5000.00, 100),
    ('Disco duro', 3, 2, 200.00, 50),
    ('USSD', 3, 3, 150.00, 50),
    ('Office', 2, 4, 150.00, 300),
    ('Teclado mecánico', 4, 5, 85.00, 40),
    ('Mouse inalámbrico', 4, 6, 35.00, 75),
    ('Monitor LED 24 pulgadas', 1, 7, 850.00, 25),
    ('Memoria RAM 16GB', 3, 8, 320.00, 30),
    ('Router inalámbrico', 5, 9, 180.00, 20);


INSERT INTO clientes(nombre,apellido,email,telefono)
VALUES
    ('Ana', 'Castro', 'a.castro@correo.com', '14587256'),
    ('Luis', 'Mora', 'l.mora@correo.com', '45698712'),
    ('Julia', 'Montez', 'j.montes@correo.com', '12369548'),
    ('Mario', 'Perez', 'm.perez@correo.com', '78963214'),
    ('Elena', 'Santos', 'e.santos@correo.com', '25874136'),
    ('Diego', 'Vega', 'd.vega@correo.com', '36985214'),
    ('Rosa', 'Navarro', 'r.navarro@correo.com', '14736925'),
    ('Andres', 'Silva', 'a.silva@correo.com', '95175324');


INSERT INTO ventas(cliente_id)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7);


INSERT INTO detalle_venta(venta_id,producto_id,cantidad,precio_unitario)
VALUES
    (1, 1, 2, 5000.00),
    (2, 2, 3, 200.00),
    (3, 3, 2, 150.00),
    (4, 4, 1, 150.00),
    (5, 5, 2, 85.00),
    (6, 6, 3, 35.00),
    (7, 7, 1, 850.00);
