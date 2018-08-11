CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarIdioma`(
parIdioma varchar (300)
)
BEGIN

INSERT INTO Idiomas(idioma) VALUES(parIdioma);

END