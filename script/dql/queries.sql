-- Q 1
SELECT * FROM productos 
    WHERE stock < 5;

-- Q2
SELECT SUM(precio_final) FROM ventas;

-- Q3
SELECT COUNT(*), nombre, apellido, email 
    FROM clientes
    GROUP BY nombre, apellido, email
    ORDER BY COUNT(*) DESC
    LIMIT 1;

-- Q4
SELECT COUNT(*), nombre, precio, categoria_id
    FROM productos
    GROUP BY nombre, precio, categoria_id
    ORDER BY COUNT(*) DESC
    LIMIT 1;

SELECT COUNT(*), nombre, apellido, email 
    FROM clientes
    GROUP BY nombre, apellido, email
    HAVING COUNT(*) <= 0
    ORDER BY COUNT(*) DESC;

    
