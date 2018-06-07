Create database Gimnasio;

Use Gimnasio;

Create table Persona (
id int auto_increment,
nombre varchar (30) not null,
apellido varchar (30) not null,
cedula varchar (10) not null,
telefono varchar (10) not null,
PRIMARY KEY (id));

insert into Persona Values (1, 'Juan', 'Silva', '1717833451', '0989122481');

Create table Empleado (
id int auto_increment,
nutrisionista varchar(30) not null,
idtipoEntrenamiento int not null,
idPersona int not null,
PRIMARY KEY (id));

insert into Empleado Values (1, 'Alfonso');

Create table cliente(
id int auto_increment,
idmedidaPersona int not null,
idPersona int not null,
PRIMARY KEY (id));

insert into Cliente Values (1, 'definición y aumento muscular');


Create table MedidaPersona (
id int auto_increment,
pecho varchar(5) not null,
brazo varchar(5) not null,
cintura varchar(5) not null,
cadera varchar(5) not null,
hombros varchar(5) not null,
piernas varchar(5) not null,
pantorrillas varchar(5) not null,
idcliente int not null,
PRIMARY KEY (id));

insert into MedidaPersona Values (1, '105', '45', '89', '65', '125', '136', '145');


Create table Precio(
id int auto_increment,
total varchar(10) not null,
idPersona int not null,
PRIMARY KEY (id));

insert into Precio Values (1, '24.50$ mensual');

Create table TipoEntrenamiento(
id int auto_increment,
detalle varchar(100) not null,
PRIMARY KEY (id));

insert into TipoEntrenamiento Values (1, 'definición y aumento muscular');

Drop table if exists Precio

