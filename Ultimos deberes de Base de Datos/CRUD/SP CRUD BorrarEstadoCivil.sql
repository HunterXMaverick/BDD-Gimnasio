CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarEstadoCivil`(
parId INT
)
BEGIN

delete from EstadoCivil where id = parId;
select * from estadocivil;

END