CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarExperienciaLaboral`(
parTrabajoRealizado varchar (2000)
)
BEGIN

INSERT INTO ExperienciaLaboral(trabajoRealizado) VALUES(parTrabajoRealizado);

END