CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarPersona`(
parId int,
parPrimerNombre VARCHAR(50)
)
BEGIN

Update Persona set 
primerNombre = parPrimerNombre where id = parId;
select * from persona;
 
END