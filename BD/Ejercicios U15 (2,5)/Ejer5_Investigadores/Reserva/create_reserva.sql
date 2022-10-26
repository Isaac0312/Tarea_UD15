CREATE TABLE reserva  
	(     
    comienzo date,     
    fin date,     
    DNI varchar (8),     
    numSerie char (4) NOT NULL,     
    FOREIGN KEY(numSerie) REFERENCES Equipos(numSerie) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(DNI) REFERENCES Investigadores(DNI) ON DELETE CASCADE ON UPDATE CASCADE     
    );
