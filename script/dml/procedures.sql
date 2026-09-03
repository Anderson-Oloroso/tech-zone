CREATE PROCEDURE sp_crear_venta(p_cliente_id INT, p_detalle INT, p_precio NUMERIC(8,2))
LANGUAGE plpgsql AS $$
DECLARE mensaje VARCHAR(100);
RETURNS VARCHAR(100);
BEGIN

    IF p_cliente_id <> (SELECT cliente_id FROM clientes WHERE cliente_id = p_cliente_id) THEN 
        mensaje :='Cliente inexistente';
        RETURN;
    END IF;

    IF p_detalle <> (SELECT detalle_venta_id FROM detalle_venta WHERE detalle_venta_id = p_detalle) THEN
        mensaje := 'Detalle de venta inexistente';
        RETURN;
    END IF;

    INSERT INTO ventas(cliente_id, detalle_venta_id, precio_final)
        VALUES
            (p_cliente_id, p_detalle, p_precio);
    
    mensaje:= 'Venta creada';
END;
$$;