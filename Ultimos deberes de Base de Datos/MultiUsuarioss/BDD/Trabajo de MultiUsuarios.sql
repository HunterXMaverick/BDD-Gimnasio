drop database MultiUsuarios;

Create database MultiUsuarios;

Use MultiUsuarios;

Create table Persona(
id int not null auto_increment,
primary key (id),
nombre varchar(12) not null,
apellido varchar(12) not null,
fechaNacimiento varchar(12) not null
);

Create table Trabajos(
id int not null auto_increment,
primary key (id),
tipoTrabajo varchar(2000) not null
);
