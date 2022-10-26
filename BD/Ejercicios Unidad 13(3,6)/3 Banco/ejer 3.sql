DROP DATABASE IF exists Banco;
Create database Banco;
use Banco;

drop table if exists Cliente;
create table Cliente (
Dni int primary key not null,
nombre nvarchar (100),
apellidos nvarchar (100),
direccion varchar (100),
ciudad nvarchar (100)
);

drop table if exists Sucursal;
create table Sucursal (
	N°Sucursal int auto_increment primary key,
    ciudad nvarchar(100),
    activo boolean
);

drop table if exists cuenta;
create table cuenta (
	N°CUENTA int auto_increment primary key,
    N_Dni int,
    foreign key (N_Dni) references Cliente(Dni),
    saldo int
    );

drop table if exists Transaccion;
create table transaccion (
	N°Transacción int auto_increment primary key,
    fecha datetime,
    tipoOperacion varchar(100),
    cantidad int,
    E_Cuenta int,
    foreign key (E_Cuenta) references cuenta(N°CUENTA)
);

drop table if exists abrir;
create table abrir (
	Dni int,
    N°CUENTA int,
    N°Sucursal int,
    E_Dni int,
	E_Cuenta int,
    E_Sucursal int,    
    primary key (Dni, N°CUENTA, N°Sucursal), 
    foreign key (E_Dni) references Cliente(Dni),
    foreign key (E_Cuenta) references cuenta(N°CUENTA),
    foreign key (E_Sucursal) references Sucursal(N°Sucursal)
);
