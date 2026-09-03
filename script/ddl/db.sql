CREATE DATABASE techzone;

\c techzone


CREATE TABLE categorias(
    categoria_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE proveedores(
    proveedor_id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    telefono VARCHAR(8)
);

CREATE TABLE productos(
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    categoria_id INT NOT NULL REFERENCES categorias(categoria_id),
    proveedor_id INT NOT NULL REFERENCES proveedores(proveedor_id),
    precio NUMERIC(8,2) NOT NULL CHECK(precio > 0),
    stock INT NOT NULL CHECK(stock >= 0)
);

CREATE TABLE clientes(
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    telefono VARCHAR(8) NOT NULL
);

CREATE TABLE ventas(
    venta_id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL REFERENCES clientes(cliente_id),
    fecha_venta TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE detalle_venta(
    detalle_venta_id SERIAL PRIMARY KEY,
    venta_id INT NOT NULL REFERENCES ventas(venta_id),
    producto_id INT NOT NULL REFERENCES productos(producto_id),
    cantidad INT NOT NULL CHECK(cantidad > 0),
    precio_unitario NUMERIC(8,2) NOT NULL CHECK(precio_unitario > 0)
);