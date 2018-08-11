CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarEnfermedades`(
parTipoEnfermedad varchar(2000)
)
BEGIN

INSERT INTO Enfermedades(tipoEnfermedad) VALUES(parTipoEnfermedad);

END