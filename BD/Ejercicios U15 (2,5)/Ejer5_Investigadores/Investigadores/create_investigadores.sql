create table investigadores (
	DNI varchar(8) PRIMARY KEY,
    nomApels nvarchar (255),
    codigo int,
    FOREIGN KEY(codigo) REFERENCES facultad(codigo) ON DELETE CASCADE ON UPDATE CASCADE
    );