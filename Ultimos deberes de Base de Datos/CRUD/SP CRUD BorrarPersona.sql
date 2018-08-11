CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarPersona`(
parId INT
)
BEGIN

delete from Personas where id = parId;
select*from personas;


END