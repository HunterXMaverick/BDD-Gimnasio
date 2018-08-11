Drop database ConvencionAnime;

Create database ConvencionAnime;
USE ConvencionAnime;

CREATE TABLE EventoDias(
id int not null auto_increment, 
Primary key (id), 
eventoDias VARCHAR(100)not null,
precio int not null
);

CREATE TABLE Juegos(
id int not null auto_increment, 
Primary key (id),
nombreJuego VARCHAR(30) not null
);

CREATE TABLE Concursos(
id int not null auto_increment, 
Primary key (id),
descripcion VARCHAR(1000) not null
);


CREATE TABLE Torneos(
id int not null auto_increment, 
Primary key (id),
ubicacion VARCHAR(20) not null, 
premio varchar(20) not null,
idJuegos int not null,
FOREIGN KEY (idJuegos) REFERENCES Juegos (id),
idConcursos int not null,
FOREIGN KEY (idConcursos) REFERENCES Concursos (id)
);

CREATE TABLE Tiendas(
id int not null auto_increment, 
Primary key (id),
productoTienda VARCHAR(150) not null
);

-- Drop database ConvencionAnime ;
DELIMITER $$
USE `convencionanime`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarEventoDia`(
parEventoDias VARCHAR(50), 
parPrecio INT
)
BEGIN

INSERT INTO EventoDias
(eventoDias, precio)
value (
parEventoDias, 
parPrecio);
END$$

DELIMITER ;

;

DELIMITER $$
USE `convencionanime`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarEventoDia`(
parId int
)
BEGIN

delete from EventoDias where id=parId;

END$$

DELIMITER ;
;

DELIMITER $$
USE `convencionanime`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarEventoDias`(
parId INT,
parEventoDias VARCHAR(50), 
parPrecio INT
)
BEGIN

update EventoDias set 
eventoDias=parEventoDias,
precio=parPrecio 
where id=parId;

END$$

DELIMITER ;
;

call InsertarEventoDia('Miercoles a Viernes', 5);
call BorrarEventoDia(1);
call ActualizarEventoDias(2, 'Solo Lunes', 2);

select * from EventoDias;


DELIMITER $$

DROP procedure IF exists `convencionanime`.`JS2`$$
CREATE procedure `convencionanime`.`JS2`()
BEGIN
 
 START TRANSACTION;
 
 
INSERT INTO EventoDias
(eventoDias, precio)
value (
parEventoDias, 
parPrecio);

COMMIT;

select * from EventoDias;

end $$

DROP procedure IF exists `convencionanime`.`JS2`$$
CREATE procedure `convencionanime`.`JS2`()
BEGIN
 
 START TRANSACTION;
 
INSERT INTO EventoDias
(eventoDias, precio)
value (
parEventoDias, 
parPrecio);

COMMIT;

select * from EventoDias;

end $$

DELIMITER ;

update EventoDias
set eventoDias='HOLA'
where id=2
and eventoDias='Solo Lunes';

select * from EventoDias;

INSERT INTO Juegos (nombreJuego) 
VALUES ('Marvel VS Capcom');
INSERT INTO Juegos (nombreJuego)  
VALUES ('dragon ball budokai tenkaichi 3');
INSERT INTO Juegos (nombreJuego) 
VALUES ('Halo 4');
INSERT INTO Juegos (nombreJuego) 
VALUES ('Super Smash Bros');

select * from Juegos;

INSERT INTO Concursos (descripcion) 
VALUES ('Baile en Grupo');
INSERT INTO Concursos (descripcion)  
VALUES ('Torneo de Cartas');
INSERT INTO Concursos (descripcion) 
VALUES ('Concurose de Viodejuegos');
INSERT INTO Concursos (descripcion)  
VALUES ('Karaoke');

select * from Concursos;

INSERT INTO Torneos (ubicacion, premio, idJuegos, idConcursos) 
VALUES ('La Catolica', '100$' ,1 ,1);
INSERT INTO Torneos (ubicacion, premio, idJuegos, idConcursos) 
VALUES ('Universidad Central', '150 $', 2, 2);
INSERT INTO Torneos (ubicacion, premio, idJuegos, idConcursos) 
VALUES ('Casa de la Cultura', '200 $', 3, 3);
INSERT INTO Torneos (ubicacion, premio, idJuegos, idConcursos) 
VALUES ('La Saleciana', '50 $', 4, 4);

select * from Torneos;

INSERT INTO Tiendas (productoTienda) 
VALUES ('Posters y Gorras');
INSERT INTO Tiendas (productoTienda) 
VALUES ('Mochilas y Estampas');
INSERT INTO Tiendas (productoTienda) 
VALUES ('Cuadernos y Carpetas');
INSERT INTO Tiendas (productoTienda) 
VALUES ('Esferos, Peluches, entre otras cosas');

select * from Tiendas;

select count(*) from Tiendas;

select productoTienda  from Tiendas where id >0 and id < 3;
