Drop database VentasCarros;

Create database VentasCarros;

Use VentasCarros;

Create table Clientes(
id int not null auto_increment,
primary key (id),
nombre varchar (50) not null
);

Create table Carros(
id int not null auto_increment,
primary key (id),
marca varchar(50) not null,
modelo varchar(50) not null
);

Create table Placas(
id int not null auto_increment,
primary key (id),
año int null,
placa varchar(10) not null,
idCarros int null
);

Create table Couriers(
id int not null auto_increment,
primary key (id),
año int null,
fecha varchar(20) not null,
estado varchar(100) not null,
idCarros int null,
idPlacas int null
);



/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar`(
IN Nombre VARCHAR(50)
)
BEGIN


    INSERT INTO Clientes(nombre) VALUES (Nombre);  

END*/
/*selecionar cual es el carro que voy a comprar 
registar una solicitud para gener una placa
en un aplicacion dada comprar carros y saber modelo cliente persona y generar el SP  proceso almacenado*/

-- transaccion sql