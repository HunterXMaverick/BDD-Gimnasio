CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarEnfermedades`(
parId INT
)
BEGIN

Delete From Enfermedades where id = parId;
select * from Enfermedades;

END