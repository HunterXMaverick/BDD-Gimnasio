CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarExperienciaLaboral`(
parId INT,
parTrabajoRealizado varchar (2000)
)
BEGIN

UPDATE ExperienciaLaboral SET trabajoRealizado = parTrabajoRealizado where id=parId;
select*from ExperienciaLaboral;

END