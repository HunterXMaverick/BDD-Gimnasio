CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionarPersona`(
IN PrimerNombre VARCHAR(50),
IN SegundoNombre VARCHAR(50),
IN PrimerApellido VARCHAR(50),
IN SegundoApellido VARCHAR(50),
IN FechaNacimiento VARCHAR(50),
out UltimaPersona Int
)
BEGIN

Select * from Persona;


END