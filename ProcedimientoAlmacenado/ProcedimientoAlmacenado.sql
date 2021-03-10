CREATE PROC p_alquiler
@id_peli int
AS
SELECT TOP 1
alquiler_id,
cliente_nombres,
pelicula_titulo,
alquiler_fechaDevolucion,
alquiler_pagoAdelantado,
alquiler_pagoFinal,
detalle_alquiler_precioTotal,
alquiler_EstadoPaga	
FROM dbo.Alquiler INNER JOIN dbo.Cliente ON alquiler_cliente = cliente_id
				  INNER JOIN dbo.DetalleAlquiler ON detalle_alquiler_id = alquiler_detalleAlquiler
				  INNER JOIN dbo.Pelicula ON pelicula_id = detalle_alquiler_pelicula
			WHERE detalle_alquiler_pelicula = @id_peli 
			ORDER BY alquiler_id DESC



exec p_alquiler '1'; /*EJECUTA EL PROCEDIMIENTO ALMACENADO*/


