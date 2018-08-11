Create database Cole;

use Cole;

Create table Estudiantes(
id int not null auto_increment,
nombre varchar(40) not null,
nota int null,
primary key (id)
);

Create table Egresados(
id int not null auto_increment,
nombre varchar(40) not null,
primary key (id));


select * from Estudiantes;
select * from Egresados;
insert into Egresados (nombre) select nombre from estudiantes where nota>=7;
