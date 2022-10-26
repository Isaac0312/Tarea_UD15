DROP DATABASE IF EXISTS PiezasProveedores;
Create database PiezasProveedores;
use PiezasProveedores;

DROP TABLE IF EXISTS `piezas`;
create table piezas ( 
	codigo int auto_increment primary key,
    nombre nvarchar(100)
);
DROP TABLE IF EXISTS `proveedores`;
create table proveedores ( 
	id char(4) primary key,
    nombre nvarchar(100)
);
DROP TABLE IF EXISTS `suministros`;
create table suministra(
	codigoPieza int,
    idProveedor char(4),
    PRIMARY KEY (codigoPieza, idProveedor),
    foreign key (codigoPieza) references piezas(codigo),
    foreign key (idProveedor) references proveedores(id)
);