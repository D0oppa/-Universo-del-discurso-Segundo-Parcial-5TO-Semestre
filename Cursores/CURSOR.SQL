DECLARE cr_pagos CURSOR FOR
SELECT 
alquiler_pagoAdelantado,
alquiler_pagoFinal,
detalle_alquiler_precioTotal,
alquiler_EstadoPaga	
FROM Alquiler INNER JOIN Cliente ON alquiler_cliente = cliente_id
			  INNER JOIN DetalleAlquiler ON detalle_alquiler_id = alquiler_detalleAlquiler
DECLARE 
@alquilerpagoAdelantado float,
@alquilerpagoFinal float,
@detallealquiler_precioTotal float,
@alquilerEstadoPaga varchar(25)
OPEN cr_pagos /*Abrir cursor*/
FETCH NEXT FROM cr_pagos INTO 
@alquilerpagoAdelantado,
@alquilerpagoFinal,
@detallealquiler_precioTotal,
@alquilerEstadoPaga 

WHILE(@@FETCH_STATUS = 0)
begin
	if @alquilerEstadoPaga = 'No Pagado'
		begin
	UPDATE
	Alquiler
	SET alquiler_EstadoPaga = 'Pagado'
	FROM(SELECT detalle_alquiler_precioTotal FROM DetalleAlquiler)AS t1 
	WHERE (alquiler_pagoAdelantado + alquiler_pagoFinal) = detalle_alquiler_precioTotal
	end
		FETCH NEXT FROM cr_pagos INTO 
		@alquilerpagoAdelantado,
		@alquilerpagoFinal,
		@detallealquiler_precioTotal,
		@alquilerEstadoPaga 
END
CLOSE cr_pagos
DEALLOCATE cr_pagos

