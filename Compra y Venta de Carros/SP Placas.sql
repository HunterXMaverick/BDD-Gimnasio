CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarPlaca`(
IN Año INT,
IN Placa VARCHAR(10)
)
BEGIN


    INSERT INTO Placas(año, placa) VALUES (Año,Placa);  

END