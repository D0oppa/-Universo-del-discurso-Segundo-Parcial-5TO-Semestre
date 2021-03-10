CREATE TRIGGER R_Pelicula
ON DetalleAlquiler FOR INSERT
AS
SET NOCOUNT ON
UPDATE Pelicula SET pelicula_existencias = pelicula_existencias - inserted.detalle_alquiler_cantidad FROM inserted
inner join Pelicula ON pelicula_id = detalle_alquiler_pelicula
GO


