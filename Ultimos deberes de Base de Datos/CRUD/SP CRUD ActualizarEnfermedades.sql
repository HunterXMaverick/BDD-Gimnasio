CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarEnfermedades`(
parId INT,
parTipoEnfermedad varchar(2000)
)
BEGIN

UPDATE Enfermedades SET tipoEnfermedad = parTipoEnfermedad where id=parId;
select*from Enfermedades;


END