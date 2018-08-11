CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarPersona`(
parId int,
parPrimerNombre VARCHAR(50),
parSegundoNombre VARCHAR(50),
parPrimerApellido VARCHAR(50),
parSegundoApellido VARCHAR(50),
parFechaNacimiento VARCHAR(50)
)
BEGIN

INSERT INTO Personas(primerNombre, segundoNombre, primerApellido, segundoApellido, fechaNacimiento) 
VALUES(parId, parPrimerNombre, parSegundoNombre, parPrimerApellido, parSegundoApellido, parFechaNacimiento);

END