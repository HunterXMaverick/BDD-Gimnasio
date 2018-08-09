CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarTipoSangre`(
in TipoSangre varchar(50)
)
BEGIN

delete from TipoSangre where id<=10;


END