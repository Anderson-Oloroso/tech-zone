CREATE DATABASE techzone;

\c techzone

CREATE TABLE categorias(
    categoria_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE productos(
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    categoria_id INT REFERENCES categorias(categoria_id) ON DELETE,
    precio NUMERIC(8,2) NOT NULL CHECK(precio > 0),
    stock INT CHECK(stock > 0)
);

CREATE TABLE proveedores(
    proveedor_id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30),
    producto_id INT REFERENCES productos(producto_id) ON DELETE CASCADE,
    email VARCHAR(50) UNIQUE NOT NULL,
    telefono VARCHAR(8)
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
    cliente_id INT NOT NULL REFERENCES clientes(cliente_id) ON DELETE CASCADE,
    detalle_venta_id INT NOT NULL REFERENCES detalle_venta(detalle_venta_id) ON DELETE CASCADE,
    precio_final NUMERIC(8,2) NOT NULL
);

CREATE TABLE detalle_venta(
    detalle_venta_id SERIAL PRIMARY KEY,
    producto_id INT NOT NULL REFERENCES productos(producto_id) ON DELETE CASCADE,
    cantidad INT CHECK(cantidad > 0),
    subtotal NUMERIC(8,2)
);