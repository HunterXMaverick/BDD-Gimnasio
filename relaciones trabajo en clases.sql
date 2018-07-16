Create database Contacto;

Use Contacto;

Create table Persona(
id int not null,
nombre varchar (100) null,
apellido varchar (100) null,
idGenero int null,
primary key (id)
);

Create table Genero(
id int not null,
detalle varchar (100) null,
primary key (id)
);

use Contacto;

alter table Persona add constraint e_1 foreign key (idGenero) references genero(id);

insert into Genero (detalle) values('Masculino');
insert into Genero (detalle) values('Femenino');

insert into Persona (nombre, apellido, idGenero) values('Juan Francisco', 'Silva Ortega', '1');