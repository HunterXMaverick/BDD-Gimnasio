CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarHobbeis`(
parTipoHobbie varchar (2000)
)
BEGIN

INSERT INTO Hobbeis(tipoHobbie) VALUES(parTipoHobbie);

END