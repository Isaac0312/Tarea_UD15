USE IMMOBILIARIA;

INSERT INTO ANOTACION(fecha,importe) VALUES (str_to_date('12/10/2022','%d/%m/%Y'),23.4),
(str_to_date('12/10/2022','%d/%m/%Y'),24.4),
(str_to_date('12/10/2022','%d/%m/%Y'),26.4),
(str_to_date('12/10/2022','%d/%m/%Y'),27.4),
(str_to_date('12/10/2022','%d/%m/%Y'),28.4),
(str_to_date('12/10/2022','%d/%m/%Y'),29.4),
(str_to_date('12/10/2022','%d/%m/%Y'),20.4),
(str_to_date('12/10/2022','%d/%m/%Y'),54.4),
(str_to_date('12/10/2022','%d/%m/%Y'),67.4),
(str_to_date('12/10/2022','%d/%m/%Y'),34.4);

INSERT INTO CARGO(codigo_cargo,nombre,funciones) VALUES (1,'CARGO1','FUNCION1'),
(2,'CARGO2','FUNCION2'),
(3,'CARGO3','FUNCION3'),
(4,'CARGO4','FUNCION4'),
(5,'CARGO5','FUNCION5'),
(6,'CARGO6','FUNCION6'),
(7,'CARGO7','FUNCION7'),
(8,'CARGO8','FUNCION8'),
(9,'CARGO9','FUNCION9'),
(10,'CARGO10','FUNCION10');

INSERT INTO PISO(puerta,dni,nombre,apellidos,direccion,codigopostal,localidad,provincia,telefono) values ('PUERTA1','47184546','PISO1','AP1','DIR1',4345,'LOCALIDAD1','POBRINCIA1',43253525),
('PUERTA2','47564566','PISO2','AP2','DIR2',54645,'LOCALIDAD2','POBRINCIA2',53253252),
('PUERTA3','47136416','PISO3','AP3','DIR3',21434,'LOCALIDAD3','POBRINCIA3',654664),
('PUERTA4','86757664','PISO4','AP4','DIR4',21245,'LOCALIDAD4','POBRINCIA4',43242335),
('PUERTA5','43456466','PISO5','AP5','DIR5',43434,'LOCALIDAD5','POBRINCIA5',463664),
('PUERTA6','21412456','PISO6','AP6','DIR6',43642,'LOCALIDAD6','POBRINCIA6',643636),
('PUERTA7','75746546','PISO7','AP7','DIR7',43645,'LOCALIDAD7','POBRINCIA7',754734583),
('PUERTA8','43645646','PISO8','AP8','DIR8',54445,'LOCALIDAD8','POBRINCIA8',3264266),
('PUERTA9','47156636','PISO9','AP9','DIR9',56443,'LOCALIDAD9','POBRINCIA9',4626426),
('PUERTA10','47184546','PISO10','AP10','DIR10',454356,'LOCALIDAD10','POBRINCIA10',5435256);

INSERT INTO DETALLE_RECIBO(concepto,importe,cod_anotacion) values ('CONCEP1',12.1,1),
('CONCEP2',13.1,2),
('CONCEP3',14.1,3),
('CONCEP4',15.1,4),
('CONCEP5',16.1,5),
('CONCEP6',17.1,6),
('CONCEP7',18.1,7),
('CONCEP8',19.1,8),
('CONCEP9',20.1,9),
('CONCEP10',21.1,10);

INSERT INTO OSTENTA(cod_cargo,piso) values (1,'PUERTA1'),
(2,'PUERTA2'),
(3,'PUERTA3'),
(4,'PUERTA4'),
(5,'PUERTA5'),
(6,'PUERTA6'),
(7,'PUERTA7'),
(8,'PUERTA8'),
(9,'PUERTA9'),
(10,'PUERTA10');


