CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarContactoEmergencia`(
parContactoPrimero varchar (200),
parNumeroPrimero int,
parContactoSegundo varchar (200),
parNumeroSegundo int 
)
BEGIN

INSERT INTO ContactoEmergencia(contactoPrimero, numeroPrimero, contactoSegundo, numeroSegundo) 
VALUES(parContactoPrimero, parNumeroPrimero, parContactoSegundo, parNumeroSegundo);

END