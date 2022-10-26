drop database if exists AcademiaDeClases;
create database AcademiaDeClases;
use AcademiaDeClases;

drop table if exists Trabajadores;
Create table Trabajadores (
DNI nvarchar(8) primary key not null,
nombre varchar(100),
edad int,
Apellidos varchar(100)
);

drop table if exists Desempleados;
Create table Desempleados (
DNI_Estudiante nvarchar(8) primary key not null,
nombre varchar(100),
direccion varchar(100),
telefono int,
edad int
);

drop table if exists Empresa;
Create table Empresa (
CIF int auto_increment primary key not null,
direccion varchar(100),
nombre varchar(100)
);

drop table if exists Profesores;
Create table Profesores (
DNI_Profesor nvarchar(8) primary key not null,
Programa_curso varchar(100),
horas int,
DNI_curso int,
Fecha_inicio datetime,
Fecha_fin datetime,
CodigoEdicion int
);

drop table if exists Curso;
Create table Curso (
Codigo_Curso int auto_increment primary key not null,
Programa_curso varchar(100),
horas int,
foreign key (DNI_Profesor) references Profesores (DNI_Profesor),
Fecha_inicio datetime,
Fecha_fin datetime,
CodigoEdicion int
);



drop table if exists Asiste;
Create table Asiste (
DNI_Estudiantes nvarchar(8) primary key not null,
foreign key (DNI_Profesor) references Profesores (DNI_Profesor),
foreign key (Codigo_curso) references Curso (Codigo_curso),
Codigo_Asistencia int
);



