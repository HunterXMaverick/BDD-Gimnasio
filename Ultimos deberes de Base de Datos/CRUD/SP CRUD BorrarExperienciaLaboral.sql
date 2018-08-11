CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarExperienciaLaboral`(
parId INT
)
BEGIN

delete from ExperienciaLaboral where id = parId;
select * from experiencialaboral;

END