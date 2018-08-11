CREATE DEFINER=`root`@`localhost` PROCEDURE `InsetarEstadoCivil`(
parDescripcionEstado VARCHAR(100)
)
BEGIN

INSERT INTO EstadoCivil(descripcionEstado) VALUES(parDescripcionEstado);


END