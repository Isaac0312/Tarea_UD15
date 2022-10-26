CREATE TABLE equipos
	(
    numSerie char (4) PRIMARY KEY,
    nombre nvarchar (100),
    codigo int NOT NULL,
    FOREIGN KEY(codigo) REFERENCES facultad(codigo) ON DELETE CASCADE ON UPDATE CASCADE
    );