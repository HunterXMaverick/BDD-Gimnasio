Create database Gimnasio;

Use Gimnasio;

create table Clientes (
id int not null auto_increment,
ruc varchar (10) not null,
nombre varchar (30) not null,
apellido varchar(30) not null,
email varchar (100) not null,
primary key (id));

Create table Servicio(
id int not null auto_increment,
nombre varchar (50) not null,
categoria varchar (50)not null,
costo int null,
primary key (id));

Create table Medidas(
id int not null auto_increment,
pantorrilla int null,
pierna int null,
cintura int null,
cadera int null,
pecho int null,
brazo int null,
hombro int null,
primary key (id));

Create table PagoServicio(
id int not null auto_increment,
idCliente int null,
idServicio int null,
fechaPaga varchar (100) not null,
valorPago decimal null,
formaPago varchar (100) not null,
primary key (id));

Create table Asistencia(
id int not null auto_increment,
idCliente int null,
fechaEntrada varchar (100) not null,
fechaSalida varchar (100) not null,
primary key (id));

Create table ClienteServicio(
id int not null auto_increment,
idCliente int null,
idServicio int null,
fechaServicio int null,
primary key (id));

Create table MedidasCliente(
id int not null auto_increment,
idCliente int null,
idMedidas int null,
fecha varchar (100) null,
primary key (id));


