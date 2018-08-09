CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarPersona`(
IN PrimerNombre VARCHAR(50),
IN SegundoNombre VARCHAR(50),
IN PrimerApellido VARCHAR(50),
IN SegundoApellido VARCHAR(50),
IN FechaNacimiento VARCHAR(50),
out UltimaPersona Int
)
BEGIN

delete from Persona 
where id = 1;


END

declare cursor_name cursor for select_statemen;

open cursor_name

fetch cursor_name into variavles list;
close cursor_name;