CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarPersona`(
IN PrimerNombre VARCHAR(50),
IN SegundoNombre VARCHAR(50),
IN PrimerApellido VARCHAR(50),
IN SegundoApellido VARCHAR(50),
IN FechaNacimiento VARCHAR(50)
)
BEGIN

INSERT INTO Persona(primerNombre, segundoNombre, primerApellido, segundoApellido, fechaNacimiento) 
VALUES(PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, FechaNacimiento);

END