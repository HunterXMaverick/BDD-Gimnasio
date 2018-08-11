CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarTipoSangre`(
parId int,
parTipoSangre varchar(50)
)
BEGIN

UPDATE TipoSangre SET tipoSangre = parTipoSangre where id=parId;
select*from tiposangre;

END