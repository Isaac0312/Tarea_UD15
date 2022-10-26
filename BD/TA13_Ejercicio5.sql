USE BIBLIOTECA;

INSERT INTO FONDO(titulo,autor,cantidad) values ('TITULO1','AUTOR1',2),
('TITULO2','AUTOR2',2),
('TITULO3','AUTOR3',2),
('TITULO4','AUTOR4',2),
('TITULO5','AUTOR5',2),
('TITULO6','AUTOR6',2),
('TITULO7','AUTOR7',2),
('TITULO8','AUTOR8',2),
('TITULO9','AUTOR9',2),
('TITULO10','AUTOR10',2);

INSERT INTO LIBRO(signatura,disponible,titulol,autorl) values ('LIBRO1',true,'TITULO1','AUTOR1'),
('LIBRO2',true,'TITULO2','AUTOR2'),
('LIBRO3',true,'TITULO3','AUTOR3'),
('LIBRO4',true,'TITULO4','AUTOR4'),
('LIBRO5',true,'TITULO5','AUTOR5'),
('LIBRO6',true,'TITULO6','AUTOR6'),
('LIBRO7',true,'TITULO7','AUTOR7'),
('LIBRO8',true,'TITULO8','AUTOR8'),
('LIBRO9',true,'TITULO9','AUTOR9'),
('LIBRO10',true,'TITULO10','AUTOR10');

INSERT INTO SOCIOS(nombre,apellidos,telefono,fecha_cad,num_dias) values ('SOCIO1','AP1',5323523,STR_TO_DATE('13/10/2022','%d/%m/%Y'),200),
('SOCIO2','AP2',45232,STR_TO_DATE('13/10/2022','%d/%m/%Y'),200),
('SOCIO3','AP3',4362346,STR_TO_DATE('13/10/2022','%d/%m/%Y'),200),
('SOCIO4','AP4',64363643,STR_TO_DATE('13/10/2022','%d/%m/%Y'),200),
('SOCIO5','AP5',3254121,STR_TO_DATE('13/10/2022','%d/%m/%Y'),200),
('SOCIO6','AP6',3214344,STR_TO_DATE('13/10/2022','%d/%m/%Y'),200),
('SOCIO7','AP7',321412556,STR_TO_DATE('13/10/2022','%d/%m/%Y'),200),
('SOCIO8','AP8',32123455,STR_TO_DATE('13/10/2022','%d/%m/%Y'),200),
('SOCIO9','AP9',643643624,STR_TO_DATE('13/10/2022','%d/%m/%Y'),200),
('SOCIO10','AP10',643573547,STR_TO_DATE('13/10/2022','%d/%m/%Y'),200);

INSERT INTO SANCION(socio,num_dias) values (1,25),
(2,19),
(3,213),
(4,256),
(5,456),
(6,12),
(7,35),
(8,77),
(9,43),
(10,22);

INSERT INTO PRESTAMO(fecha_prest,socio,libro) values (STR_TO_DATE('13/10/2022','%d/%m/%Y'),1,'LIBRO1'),
(STR_TO_DATE('13/10/2022','%d/%m/%Y'),2,'LIBRO2'),
(STR_TO_DATE('13/10/2022','%d/%m/%Y'),3,'LIBRO3'),
(STR_TO_DATE('13/10/2022','%d/%m/%Y'),4,'LIBRO4'),
(STR_TO_DATE('13/10/2022','%d/%m/%Y'),5,'LIBRO5'),
(STR_TO_DATE('13/10/2022','%d/%m/%Y'),6,'LIBRO6'),
(STR_TO_DATE('13/10/2022','%d/%m/%Y'),7,'LIBRO7'),
(STR_TO_DATE('13/10/2022','%d/%m/%Y'),8,'LIBRO8'),
(STR_TO_DATE('13/10/2022','%d/%m/%Y'),9,'LIBRO9'),
(STR_TO_DATE('13/10/2022','%d/%m/%Y'),10,'LIBRO10');

INSERT INTO PRESTAMO_E(num_prestamo,fecha_devol) values (1,STR_TO_DATE('13/10/2022','%d/%m/%Y')),
(2,STR_TO_DATE('13/10/2022','%d/%m/%Y')),
(3,STR_TO_DATE('13/10/2022','%d/%m/%Y')),
(4,STR_TO_DATE('13/10/2022','%d/%m/%Y')),
(5,STR_TO_DATE('13/10/2022','%d/%m/%Y')),
(6,STR_TO_DATE('13/10/2022','%d/%m/%Y')),
(7,STR_TO_DATE('13/10/2022','%d/%m/%Y')),
(8,STR_TO_DATE('13/10/2022','%d/%m/%Y')),
(9,STR_TO_DATE('13/10/2022','%d/%m/%Y')),
(10,STR_TO_DATE('13/10/2022','%d/%m/%Y'));

INSERT INTO PRESTAMO_S(num_prestamo) values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);