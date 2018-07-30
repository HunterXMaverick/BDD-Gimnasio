drop database Dueño;

 select * from Mascota;
 select * from Persona;


Create database Dueño;

Use Dueño;

Create table Persona (
id int not null auto_increment,
nombre varchar (50) not null,
primary key (id));

Create table Mascota (
id int not null auto_increment,
nombre varchar (50) not null,
primary key (id),
dueño int,
foreign key (dueño) references Persona (id)
);


insert into Persona (nombre) Values ('Juan');
Set @ultimoId=LAST_INSERT_ID();
insert into Mascota (nombre,dueño) Values ('Shiro', @ultimoID);

insert into Persona (nombre) Values ('Alanys');
Set @ultimoId=LAST_INSERT_ID();
insert into Mascota (nombre,dueño) Values ('Michi', @ultimoID);

insert into Persona (nombre) Values ('Gabriel');
Set @ultimoId=LAST_INSERT_ID();
insert into Mascota (nombre,dueño) Values ('Junior', @ultimoID);



insert into Mascota (nombre,dueño) Values ('Shiro', @ultimoID);
insert into Mascota (nombre,dueño) Values ('Michi', @ultimoID);
insert into Mascota (nombre,dueño) Values ('Junior', @ultimoID);

