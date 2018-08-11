CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarIdioma`(
parId INT,
parIdioma varchar (300)
)
BEGIN

UPDATE Idiomas SET idioma = parIdioma where id=parId;
select * from idiomas;


END