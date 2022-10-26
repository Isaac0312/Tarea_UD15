drop database if exists EmpresaComida;
create database EmpresaComida;
use EmpresaComida;

drop table if exists Almacen;
Create table Almacen (
Id_Almacen int auto_increment primary key not null,
nombre varchar(100),
N_Almacen int,
Descripcion varchar(200)
);

drop table if exists Estante;
Create table Estante (
Id_Estante int auto_increment primary key not null,
letras varchar(100),
Tamaño int,
E_Almacen int,
foreign key (E_Almacen) references Almacen(Id_Almacen)
);

drop table if exists Ingredientes;
CREATE table Ingredientes (
Id_Ingrediente int auto_increment primary key not null,
cantidad int,
E_Estante int,
foreign key (E_Estante) references Estante(Id_Estante)
);

drop table if exists Empleados;
Create table Empleados (
Id_Empleado int primary key not null,
DNI int,
nombre varchar(100),
apellido varchar(100),
telefono int,
movil int,
SS_num int
);

drop table if exists Platos;
Create table Platos (
Id_Plato int auto_increment primary key not null,
nombre varchar(100),
Tipo_plato varchar(100)
);

drop table if exists Cocineros;
Create table Cocineros (
ID_Cocinero nvarchar(8) primary key not null,
años_servicio int,
E_Empleado int,
foreign key (E_Empleado) references Empleados(Id_Empleado)
);

drop table if exists Pinches;
Create table Pinches (
ID_Pinche int auto_increment primary key not null,
Fecha_naciemiento int,
E_Empleado int,
foreign key (E_Empleado) references Empleados(Id_Empleado)
);

drop table if exists Guarda;
Create table Guarda (
Id_Ingrediente int,
Id_Estante int,
E_Ingrediente int,
E_Estante int,
primary key (Id_ingrediente, Id_Estante),
foreign key (E_Ingrediente) references Ingredientes(Id_Ingrediente),
foreign key (E_Estante) references Estante(Id_Estante),
ID_Guardar int
);

drop table if exists Tienen;
Create table Tienen (
Id_plato int,
Id_Ingrediente int,
E_plato int,
E_Ingrediente int,
primary key (Id_plato, Id_ingrediente),
foreign key (E_plato) references Platos(Id_plato),
foreign key (E_Ingrediente) references Ingredientes(Id_Ingrediente),
ID_Preparacion int
);

drop table if exists Prepara;
Create table Prepara (
Id_plato int,
Id_Empleado int,
E_plato int,
E_Empleado int,
primary key (Id_plato, Id_Empleado),
foreign key (E_plato) references Platos(Id_plato),
foreign key (E_Empleado) references Empleados(Id_Empleado),
ID_Preparacion int
);