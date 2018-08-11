CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarHobbeis`(
parId INT,
parTipoHobbie varchar (2000)
)
BEGIN

UPDATE Hobbeis SET tipoHobbie = parTipoHobbie where id=parId;
select*from Hobbeis;

END