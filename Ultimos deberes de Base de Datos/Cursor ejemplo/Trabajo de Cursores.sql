Create database Cursores;

Use Cursores;

DECLARE micursor CURSOR FOR SELECTnombre, apellido FROM estudiante;	
OPEN micursor;		
FETCH NEXT FROM nombre_cursor INTO @variable_columna_tabla
		
WHILE @@FETCH_micrusor into miNombre, miApellido;
	if(miNombre==”Juan” ninster int table(“JS”))		
		
END	
Clore micursor;
