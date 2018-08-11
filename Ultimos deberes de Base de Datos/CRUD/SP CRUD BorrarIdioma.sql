CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarIdioma`(
parId INT
)
BEGIN

delete from Idiomas where id = parId;
select * from idiomas;


END