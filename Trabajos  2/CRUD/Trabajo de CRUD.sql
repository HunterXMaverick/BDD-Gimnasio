Drop database HojaVida;

Create database HojaVida;

Use HojaVida;

Create table Persona(
id int not null auto_increment,
primary key (id),
primerNombre varchar (50) not null,
segundoNombre varchar (50) not null,
primerApellido varchar (50) not null,
segundoApellido varchar (50) not null,
fechaNacimiento varchar (50) not null
);

Create table TipoSangre(
id int not null auto_increment,
primary key (id),
tipoSangre varchar(50) not null
);

Create table Idioma(
id int not null auto_increment,
primary key (id),
idioma varchar (300) not null
);

Create table EstadoCivil(
id int not null auto_increment,
primary key (id),
año int null,
fecha varchar(20) not null,
estado varchar(100) not null,
idCarros int null,
idPlacas int null
);


Create table Genero(
id int not null auto_increment,
primary key (id),
genero varchar (15) not null
);

Create table ExperienciaLaboral(
id int not null auto_increment,
primary key (id),
trabajoRealizado varchar (2000) not null
);


Create table Ednia(
id int not null auto_increment,
primary key (id),
ednia varchar (300) not null
);

Create table Enfermedad(
id int not null auto_increment,
primary key (id),
tipoEnfermedad varchar(2000) not null
);

Create table Hobbeis(
id int not null auto_increment,
primary key (id),
tipoHobbie varchar (2000) not null
);

Create table ContactoEmergencia(
id int not null auto_increment,
primary key (id),
contactoPrimero varchar (200) not null,
contactoSegundo varchar (200) not null
);
