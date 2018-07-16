Create database Empresa;

Use Empresa;

Create table Departamento(
id_departamento int not null auto_increment,
primary key (id_departamento),
nombre varchar(30) not null
);

Create table SubDepartamento(
id_subdepartamento int not null auto_increment,
primary key (id_subdepartamento),
nombre varchar(30) not null,
foreign key (id_subdepartamento) references Departamento (id_departamento)
);

Create table GerenciaGeneral(
id_gerenciaGeneral int not null auto_increment,
primary key (id_gerenciaGeneral),
nombre varchar(30) not null,
foreign key (id_gerenciaGeneral) references SubDepartamento (id_subdepartamento)
);

Create table GerenciaRecepcion(
id_gerenciaRecepcion int not null auto_increment,
primary key (id_gerenciaRecepcion),
nombre varchar(30) not null,
foreign key (id_gerenciaRecepcion) references GerenciaGeneral (id_gerenciaGeneral)
);

Create table Parroquia(
id_parroquia int not null auto_increment,
primary key (id_parroquia),
nombre varchar(30) not null,
foreign key (id_parroquia) references GerenciaRecepcion (id_gerenciaRecepcion)
);
