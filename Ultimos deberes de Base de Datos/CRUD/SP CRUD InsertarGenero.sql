CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarGenero`(
parGenero varchar (15)
)
BEGIN

INSERT INTO Genero(genero) VALUES(parGenero);


END