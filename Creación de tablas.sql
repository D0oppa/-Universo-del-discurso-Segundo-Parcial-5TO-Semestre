create table Categoria(
categoria_id 				int  			PRIMARY KEY,
categoria_nombre 			varchar(45)
);
create table Direccion(
direccion_id				smallint 			PRIMARY KEY, 
direccion_ciudad			varchar(25),
direccion_calle				varchar(25)
);
create table Cliente(
cliente_id					smallint 			PRIMARY KEY,
cliente_nombres				varchar(45),
cliente_apellidos			varchar(45),
cliente_cedula				varchar(15),
cliente_telefono			varchar(15),
cliente_email				varchar(45),
cliente_direccion			smallint,
	CONSTRAINT cliente_direccion_fk 
	FOREIGN KEY(cliente_direccion) 
	REFERENCES Direccion(direccion_id)
	ON DELETE SET NULL ON UPDATE CASCADE
);
create table Pelicula(	
pelicula_id 				smallint 				PRIMARY KEY,
pelicula_titulo				varchar(45),
pelicula_duracion			int,
pelicula_descripcion		varchar(45),
pelicula_año 				varchar(20),
pelicula_categoria			int,
pelicula_idioma				varchar(20),
pelicula_edadMinima 		varchar(20),
pelicula_director 			varchar(45),
pelicula_existencias		int,
	
	CONSTRAINT pelicula_categoria_fk 
	FOREIGN KEY(pelicula_categoria) 
	REFERENCES Categoria(categoria_id)
	ON DELETE SET NULL ON UPDATE CASCADE	
);

create table DetalleAlquiler(
detalle_alquiler_id 				smallint				PRIMARY KEY,
detalle_alquiler_precioTotal		float,
detalle_alquiler_cantidad			int,
detalle_alquiler_pelicula			smallint,

	CONSTRAINT alguiler_pelicula_fk
	FOREIGN KEY(detalle_alquiler_pelicula) 
	REFERENCES Pelicula(pelicula_id)
	ON DELETE SET NULL ON UPDATE CASCADE
	
);


create table Alquiler(
alquiler_id									smallint			PRIMARY KEY,
alquiler_cliente							smallint,
alquiler_fechaAlquiler						date,
alquiler_fechaDevolucion					date,
alquiler_detalleAlquiler					smallint,
alquiler_pagoAdelantado 					float,
alquiler_pagoFinal							float				NULL,
alquiler_estado								varchar(25),
alquiler_EstadoPaga							varchar(25),

	CONSTRAINT alquiler_cliente_fk
	FOREIGN KEY(alquiler_cliente) 
	REFERENCES Cliente(cliente_id)
	ON DELETE SET NULL ON UPDATE CASCADE,
	
	CONSTRAINT alguiler_detalle_fk
	FOREIGN KEY(alquiler_detalleAlquiler) 
	REFERENCES DetalleAlquiler(detalle_alquiler_id)
	ON DELETE SET NULL ON UPDATE CASCADE
);