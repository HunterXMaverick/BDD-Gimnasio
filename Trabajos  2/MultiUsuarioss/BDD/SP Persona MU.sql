CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar`(
IN Nombre varchar(12),
IN Apellido varchar(12),
FechaNacimiento varchar(12)
)
BEGIN

INSERT INTO Persona(nombre, apellido, fechaNacimiento) VALUES(Nombre, Apellido, FechaNacimiento);

END