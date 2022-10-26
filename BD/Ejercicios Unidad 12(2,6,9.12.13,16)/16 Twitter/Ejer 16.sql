drop database if exists Twitter;
create database Twitter;
use Twitter;

drop table if exists Usuarios;
Create table Usuarios (
Id_User int auto_increment primary key not null,
nombre varchar(100),
Password int,
Email varchar(100)
);

drop table if exists Mensajes;
Create table Mensajes (
Id_Mensaje int auto_increment primary key not null,
texto varchar (250),
emisor varchar (100),
receptor varchar (100)
);


drop table if exists Grupos;
Create table Grupos (
Id_Grupo int auto_increment primary key not null,
nombre varchar(100)
);


drop table if exists Altas;
Create table Altas (
Id_Alta int auto_increment primary key not null,
foreign key (Id_user) references Usuarios(Id_user),
nombre varchar(100)
);

drop table if exists Hace;
Create table Hace (
id_mensajes int primary key,
Id_User int primary key,
foreign key (Id_mensajes) references mensajes(Id_mensajes),
foreign key (Id_user) references Usuarios(Id_user),
Id_hace int
);

drop table if exists Hace;
Create table Hace (
Id_User int primary key,
Id_Grupo int primary key,
foreign key (Id_user) references Usuarios(Id_user),
foreign key (Id_Grupo) references mensajes(Id_Grupo),
ID_permanece int);








