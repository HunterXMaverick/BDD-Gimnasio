drop database MiCursor;

Create database MiCursor;
use MiCursor;

CREATE TABLE Mascotas ( 
    Mascotas_id Bigint not null auto_increment, 
    Nombre VARCHAR(20) NOT NULL,
    Raza VARCHAR(20) not null,
    PRIMARY KEY (Mascotas_id)
);


INSERT INTO Mascotas VALUES (NULL, 'Shiro', 'Gato');


-- DROP PROCEDURE IF EXISTS cursorPrototip;
DELIMITER $$
CREATE PROCEDURE cursorPrototip (
) BEGIN

  DECLARE v_nnombre varchar(20);
  DECLARE v_raza varchar(20);

  DECLARE fin INTEGER DEFAULT 0;

  DECLARE Mascotas_MiCursor CURSOR FOR 
    SELECT Nombre, Raza FROM Mascotas;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin=1;

  OPEN Mascotas_MiCursor;
END$$
DELIMITER ;