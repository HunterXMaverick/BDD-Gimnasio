CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarPersona`(
IN PrimerNombre VARCHAR(50)
)
BEGIN

delete from Persona where id<=10;


END