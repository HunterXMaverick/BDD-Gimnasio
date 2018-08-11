CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarEdnia`(
parId INT,
parEdnia varchar (300)
)
BEGIN

UPDATE Ednia SET ednia = parEdnia where id=parId;
select*from Ednia;

END