CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarTipoSangre`(
parId INT
)
BEGIN

delete from TipoSangre where id = parId;
select*from tiposangre;


END