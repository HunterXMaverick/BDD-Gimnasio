CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarHobbeis`(
parId INT
)
BEGIN

Delete From Hobbeis where id = parId;
select * from Hobbeis;

END