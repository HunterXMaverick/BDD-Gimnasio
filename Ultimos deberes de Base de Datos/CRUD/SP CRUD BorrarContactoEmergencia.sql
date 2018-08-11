CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarContactoEmergencia`(
parId INT
)
BEGIN

Delete From ContactoEmergencia where id = parId;
select * from ContactoEmergencia;

END