CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarTP`(
IN TipoSangre VARCHAR(50)
)
BEGIN

INSERT INTO TipoSangre(tipoSangre) VALUES(TipoSangre);

END