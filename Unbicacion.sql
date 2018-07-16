create database ejercicio;
use ejercicio;

create table continente (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
nombre VARCHAR(50) NOT NULL
	);
create table paises (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
nombre VARCHAR(50),
idContinente int,
foreign key(idContinente) references continente(id)
	);
create table provincia (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
nombre VARCHAR(50),
idPais int,
foreign key(idPais) references paises(id)
	);
create table canton (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
nombre VARCHAR(50),
idProvincia int,
foreign key(idProvincia) references provincia(id)
	);




drop database ejercicio;