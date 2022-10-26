drop database if exists BibliotecaV2;
create database BibliotecaV2;
use BibliotecaV2;

drop table if exists Trabajadores;
Create table Trabajadores (
ID_Autor int auto_increment primary key not null,
nombre varchar(100),
Pais varchar(50)
);

drop table if exists Peliculas;
Create table Peliculas (
ID_articulo int(8) auto_increment primary key not null,
nombre varchar(100),
Resumen varchar(250),
ID_autor int,
duracion int,
estado varchar(100),
Datos_deterioro varchar(100)
);

drop table if exists CDs;
Create table CDs (
ID_articulo int(8) auto_increment primary key not null,
nombre varchar(100),
año int,
Resumen varchar(250),
N_canciones int,
ID_autor int,
duracion int,
estado varchar(100),
Datos_deterioro varchar(100)
);

drop table if exists Libros;
Create table Libros (
ID_articulo int(8) auto_increment primary key not null,
nombre varchar(100),
Resumen varchar(250),
ID_autor int,
N_paginas int,
estado varchar(100),
Datos_deterioro varchar(100)
);

drop table if exists Socio;
Create table Socio (
Codigo_socio int auto_increment primary key not null,
DNI nvarchar(8),
nombre varchar(100),
Apellido varchar(100),
Telefono int,
Direccion varchar(100)
);

drop table if exists Prestamo;
Create table Prestamo (
ID_prestamo nvarchar(8) primary key not null,
cantidad int,
E_prestamo int,
foreign key (E_prestamo) references Prestar (ID_prestamo),
Fecha_prestamo datetime
);

drop table if exists Tener;
create table Tener(
	ID_Autor int,
    ID_prestamo int,
    ID_articulo int,
	E_codigo_socio int,
    E_ID_prestamo int,
    E_ID_articulo int,
    primary key(ID_Autor,ID_prestamo,ID_articulo),
	foreign key (E_Id_articulo) references libros (Id_articulo),
	foreign key (E_Id_articulo) references CDs (Id_articulo),
	foreign key (E_Id_articulo) references Peliculas (Id_articulo)
    );

DROP TABLE if exists presta;
create table presta (
    codigo_socio int,
    ID_prestamo int,
    ID_articulo int,
	E_codigo_socio int,
    E_ID_prestamo int,
    E_ID_articulo int,
    primary key(codigo_socio,ID_prestamo,ID_articulo),
	foreign key (E_Id_articulo) references libros (Id_articulo),
	foreign key (E_Id_articulo) references CDs (Id_articulo),
	foreign key (E_Id_articulo) references Peliculas (Id_articulo)
);
