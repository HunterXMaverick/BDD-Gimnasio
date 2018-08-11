CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarEdnia`(
parId INT
)
BEGIN

delete from Ednia where id = parId;
select * from ednia;

END