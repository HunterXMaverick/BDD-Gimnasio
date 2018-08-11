CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarContactoEmergencia`(
parId INT,
parContactoPrimero varchar (200),
parNumeroPrimero int,
parContactoSegundo varchar (200),
parNumeroSegundo int
)
BEGIN

UPDATE ContactoEmergencia SET 
contactoPrimero = parContactoPrimero,
numeroPrimero = parNumeroPrimero,
contactoSegundo = parContactoSegundo,
numeroSegundo = parNumeroSegundo
where id=parId;

select*from ContactoEmergencia;

END