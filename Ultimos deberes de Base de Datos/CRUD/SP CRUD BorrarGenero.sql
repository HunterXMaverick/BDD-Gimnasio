CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarGenero`(
parId INT
)
BEGIN

delete from Genero where id = parId;
select * from genero;

END