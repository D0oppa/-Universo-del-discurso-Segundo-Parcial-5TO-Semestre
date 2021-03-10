
INSERT INTO Categoria VALUES (1,'Terror');
INSERT INTO Categoria VALUES (2,'Drama');
INSERT INTO Categoria VALUES (3,'Vida Cotidiana');
INSERT INTO Categoria VALUES (4,'Suspenso');
INSERT INTO Categoria VALUES (5,'Romance');
INSERT INTO Categoria VALUES (6,'Thriller');
INSERT INTO Categoria VALUES (7,'Acción');
INSERT INTO Categoria VALUES (8,'Crimen');
INSERT INTO Categoria VALUES (9,'Infantil');


INSERT INTO Direccion 
	   VALUES(1,'Manta','Flavio Reyes');
INSERT INTO Direccion
	   VALUES(2,'Manta','Jipijapa');
INSERT INTO Direccion
	   VALUES(3,'Quito','7 cruces');
INSERT INTO Direccion
	   VALUES(4,'Quito','García Moreno');

INSERT INTO Cliente
	   VALUES(1,'Juan Pablo','Rodriguez Zambrano','1350641479','0992815128','rdzPablo19@gmail.com',1);
	   INSERT INTO Cliente
	   VALUES(2,'José María','Perez Perez','145084120','0998541587','pp_12Jose@gmail.com',2);
	   INSERT INTO Cliente 
	   VALUES(3,'David Alejandro','García Lopez','1356401508','0995418756','davidalejandro@gmail.com',3);
	   INSERT INTO Cliente
	   VALUES(4,'Daniela Alejandra','Noboa Alvarado','1350641479','0992815128','danielalj1@gmail.com',1);
	   INSERT INTO Cliente
	   VALUES(5,'Antonio Marcos','Alvarado Rodriguez','1350658147','0978541547','marcosantonio.15@gmail.com',4);
	   
INSERT INTO Pelicula
	   VALUES(1,'Joker','120','Serie de crimen','2019',8,'Inglés','16','Todd Phillips',20);
INSERT INTO Pelicula
	   VALUES(2,'Bad Boys','120','Serie de policias.','2020',7,'Inglés','16','Bilall Fallah',19);
INSERT INTO Pelicula
	   VALUES(3,'Frozen 2','103','Serie infantil de aventura','2019',9,'Inglés','+Público','Jennifer Lee',18);
INSERT INTO Pelicula
	   VALUES(4,'Avengers END Game','180','Pelicula de superheroes.','2019',6,'Inglés','13','Joe Russo',15);
INSERT INTO Pelicula
	   VALUES(5,'Wifi Ralph','116','Secuela animada de la pelicula Ralph.','2018',9,'Inglés','+Publico','Rich Moore',6);
	   

INSERT INTO DetalleAlquiler
	   VALUES(1,19.50,8,1);
INSERT INTO DetalleAlquiler
	   VALUES(2,11.5,9,3);
INSERT INTO DetalleAlquiler
	   VALUES(3,10.24,7,4);
INSERT INTO DetalleAlquiler
	   VALUES(4,11.22,7,2);
INSERT INTO DetalleAlquiler
	   VALUES(5,15.20,8,1);


	   
	   
INSERT INTO Alquiler 
	   VALUES(1,1,'2020-11-04','2020-12-04',1,6.90,0.00,'No Devuelta','Falta Pago');
	   
INSERT INTO Alquiler
	   VALUES(2,3,'2020-11-06','2020-12-06',3,5.30,6.20,'Devuelta','Falta Pago');
	   
INSERT INTO Alquiler
	   VALUES(3,1,'2020-11-25','2020-12-25',2,4.20,0.00,'No Devuelta','Falta Pago');
	   
INSERT INTO Alquiler
	   VALUES(4,4,'2020-10-25','2020-11-25',4,6.33,1.20,'Devuelta','Falta Pago');
	   
INSERT INTO Alquiler
	   VALUES(5,5,'2020-11-01','2020-12-01',5,11.33,0.00,'No Devuelta','Falta Pago');