CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarGenero`(
parId INT, 
parGenero varchar (15)
)
BEGIN

UPDATE Genero SET genero = parGenero where id=parId;
select*from Genero;

END