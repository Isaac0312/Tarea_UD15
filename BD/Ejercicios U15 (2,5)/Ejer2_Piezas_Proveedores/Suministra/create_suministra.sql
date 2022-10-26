create table suministra (
	id_Proveedor char (4),
    codigo int ,
    precio int,
    e_Proveedor char (4),
    e_codigo int,
    FOREIGN KEY (e_Proveedor) REFERENCES proveedores(id_Proveedor) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (e_codigo) REFERENCES piezas(codigo) ON DELETE CASCADE ON UPDATE CASCADE
    );
