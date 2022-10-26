drop database if exists EmpresaSoftware;
create database EmpresaSoftware;
use EmpresaSoftware;

drop table if exists Empresas;
Create table Empresas (
CIF_Empresa int auto_increment primary key not null,
nombre varchar(100),
direccion varchar(100),
Telefono int,
Codigo_interno int
);

drop table if exists Proyectos;
create table Proyectos(
Id_Proyecto int auto_increment primary key not null,
fecha_inicio datetime,
fecha_fin datetime,
E_CIF_Empresa int,
foreign key (E_CIF_Empresa) references Empresas (CIF_Empresa)
);

drop table if exists Trabajadores;
create table Trabajadores(
Codigo_trabajador int auto_increment primary key not null,
Dni_trabajador int,
nombre_apellido varchar(200),
dias int,
horas int
);

drop table if exists Profesion;
create table Profesion(
Codigo_profesion int auto_increment primary key not null,
cargo varchar(100),
E_Codigo_trabajador int,
foreign key (E_Codigo_trabajador) references Trabajadores(Codigo_trabajador)
);

drop table if exists Trabajar;
create table Trabajar(
	Id_proyecto int,
	Codigo_Trabajador int,
    Codigo_profesion int,
    primary key(Id_proyecto, Codigo_Trabajador, Codigo_profesion),
	foreign key (Id_proyecto) references Proyectos(Id_proyecto),
    foreign key (Codigo_Trabajador) references Trabajadores(Codigo_Trabajador),
    foreign key (Codigo_profesion) references Profesion(Codigo_profesion),
    Codigo_Creacion int
);
drop table if exists Crear;
create table Crear(
	Id_proyecto int,
	CIF_Empresa int,
    E_proyecto int,
    E_CIF_Empresa int,
    primary key (Id_proyecto, CIF_Empresa),
    foreign key (E_proyecto) references Proyectos(Id_proyecto),
    foreign key (E_CIF_Empresa) references Empresas(CIF_Empresa),
    ID_Creacion int
);

