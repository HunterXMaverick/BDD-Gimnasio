CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarEdnia`(
parEdnia varchar (300)
)
BEGIN

INSERT INTO Ednia(ednia) VALUES(parEdnia);

END