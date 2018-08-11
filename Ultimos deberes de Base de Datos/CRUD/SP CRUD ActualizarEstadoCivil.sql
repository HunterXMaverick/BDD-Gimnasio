CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarEstadoCivil`(
parId INT,
parDescripcionEstado varchar(100)
)
BEGIN

UPDATE EstadoCivil SET descripcionEstado = parDescripcionEstado where id=parId;
select*from EstadoCivil;

END