
Drop table if exists Precio;

select * from Persona;
select * from Empleado;
select * from Cliente;
select * from MedidaPersonal;
select * from Precio;
select * from TipoEntrenamiento;



Create database Gimnasio;

Use Gimnasio;

Create table Persona (
id int auto_increment,
nombre varchar (30) not null,
apellido varchar (30) not null,
cedula varchar (10) not null,
telefono varchar (10) not null,
PRIMARY KEY (id));


Create table Empleado (
id int auto_increment,
nutrisionista varchar(30) not null,
-- idtipoEntrenamiento int not null,
-- idPersona int not null,
PRIMARY KEY (id));


Create table Cliente(
id int auto_increment,
idmedidaPersona int not null,
idPersona int not null,
PRIMARY KEY (id));


Create table MedidaPersonal (
id int auto_increment,
pecho varchar(10) not null,
brazo varchar(10) not null,
cintura varchar(10) not null,
cadera varchar(10) not null,
hombros varchar(10) not null,
piernas varchar(10) not null,
pantorrillas varchar(10) not null,
-- idcliente int not null,
PRIMARY KEY (id));

insert into MedidaPersonal (pecho, brazo, cintura, cadera, hombros, piernas, pantorrillas) Values ('105', '45', '89', '65', '125', '136', '145');


Create table Precio(
id int auto_increment,
cantidad varchar(10) not null,
-- idPersona int not null,
PRIMARY KEY (id));

insert into Precio (cantidad) Values ('24$ mensual');

Create table TipoEntrenamiento(
id int auto_increment,
detalle varchar(100) not null,
PRIMARY KEY (id));

insert into Persona (nombre, apellido, cedula, telefono) Values ('Juan', 'Silva', '1717833451', '0989122481');
insert into Empleado (nutrisionista) Values ('Alfonso');
insert into Cliente Values (1, 'definición y aumento muscular');
insert into MedidaPersona Values (1, '105', '45', '89', '65', '125', '136', '145');
insert into TipoEntrenamiento (detalle) Values ('definición y aumento muscular');


