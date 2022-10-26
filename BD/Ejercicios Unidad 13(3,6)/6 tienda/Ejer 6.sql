DROP DATABASE IF exists Tienda;
Create database Tienda;
use Tienda;

drop table if exists Cliente;
create table Cliente (
Cod_Cliente int auto_increment primary key not null,
nombre nvarchar (100),
apellidos nvarchar (100)
);

drop table if exists Pedido;
create table Pedido (
Cod_Pedido int primary key not null,
fecha_pedido date,
foreign key (Cod_Cliente) references cliente(Cod_Cliente)
);

drop table if exists Proveedor;
create table Proveedor (
Cod_Proveedor int primary key not null,
descripcion varchar (100)
);

drop table if exists Producto;
create table Producto (
Cod_Producto int primary key not null,
cantidad int,
foreign key (Cod_Proveedor) references Proveedor(Cod_Proveedor),
unidades int,
fecha_encargo datetime,
foreign key (Cod_Pedido) references Prodido(Cod_Pedido)
);