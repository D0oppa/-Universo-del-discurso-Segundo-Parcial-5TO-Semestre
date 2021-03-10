SELECT
pelicula_titulo,
COUNT(cliente_nombres) AS CantidadAlquilada
FROM Alquiler INNER JOIN Cliente ON alquiler_cliente = cliente_id
	    INNER JOIN DetalleAlquiler ON detalle_alquiler_id = alquiler_detalleAlquiler
	    INNER JOIN Pelicula ON pelicula_id = detalle_alquiler_pelicula
	GROUP BY
		pelicula_titulo
	ORDER BY CantidadAlquilada desc