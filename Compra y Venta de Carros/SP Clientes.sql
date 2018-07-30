CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar`(
IN Nombre VARCHAR(50)
)
BEGIN


    INSERT INTO Clientes(nombre) VALUES (Nombre);  

END