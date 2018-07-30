CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar`(
IN Modelo VARCHAR(50),
IN Marca VARCHAR(50)
)
BEGIN


    INSERT INTO Carros(modelo,marca) VALUES (Modelo,Marca);  

END