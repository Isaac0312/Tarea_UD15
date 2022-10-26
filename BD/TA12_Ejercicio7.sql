use EMPRESA;


INSERT INTO CATEGORIAS(id_categoria,nombre) values (1,"CAT1"),
(2,"CAT2"),
(3,"CAT3"),
(4,"CAT4"),
(5,"CAT5"),
(6,"CAT6"),
(7,"CAT7"),
(8,"CAT8"),
(9,"CAT9"),
(10,"CAT10");


INSERT INTO CONTRATOS(id_contrato,fecha_inicio,fecha_fin,categoria) values(1,STR_TO_DATE('12/03/2022','%d/%m/%Y'),STR_TO_DATE('12/12/2022','%d/%m/%Y'),1),
(2,STR_TO_DATE('13/03/2022','%d/%m/%Y'),STR_TO_DATE('12/12/2022','%d/%m/%Y'),3),
(3,STR_TO_DATE('14/03/2022','%d/%m/%Y'),STR_TO_DATE('12/12/2022','%d/%m/%Y'),5),
(4,STR_TO_DATE('15/03/2022','%d/%m/%Y'),STR_TO_DATE('12/12/2022','%d/%m/%Y'),1),
(5,STR_TO_DATE('16/03/2022','%d/%m/%Y'),STR_TO_DATE('12/12/2022','%d/%m/%Y'),2),
(6,STR_TO_DATE('17/03/2022','%d/%m/%Y'),STR_TO_DATE('12/12/2022','%d/%m/%Y'),7),
(7,STR_TO_DATE('18/03/2022','%d/%m/%Y'),STR_TO_DATE('12/12/2022','%d/%m/%Y'),6),
(8,STR_TO_DATE('19/03/2022','%d/%m/%Y'),STR_TO_DATE('12/12/2022','%d/%m/%Y'),8),
(9,STR_TO_DATE('20/03/2022','%d/%m/%Y'),STR_TO_DATE('12/12/2022','%d/%m/%Y'),10),
(10,STR_TO_DATE('21/03/2022','%d/%m/%Y'),STR_TO_DATE('12/12/2022','%d/%m/%Y'),4);


INSERT INTO DEPARTAMENTOS(codigo,nombre) values(1,'DEPARTAMENTO1'),
(2,'DEPARTAMENTO2'),
(3,'DEPARTAMENTO3'),
(4,'DEPARTAMENTO4'),
(5,'DEPARTAMENTO5'),
(6,'DEPARTAMENTO6'),
(7,'DEPARTAMENTO7'),
(8,'DEPARTAMENTO8'),
(9,'DEPARTAMENTO9'),
(10,'DEPARTAMENTO10');


INSERT INTO EMPLEADO(dni,num_segsoc,cod_trabajador,nombre,apellidos,direccion,telefono,departamento) values('47189845',3244532,1,'dani','martos','gkfsbb',543643,1),
('45473696',5434543,2,'jorge','lopez','ofdasg',4325325,5),
('44312345',3244532,3,'manolo','bartolo','fdsafa',6534577,6),
('35235553',4535,4,'andres','calves','vcxva',7543753,9),
('45432345',643546,5,'sara','cara','gadsgag',3456363,2),
('43253451',2335,6,'pepita','grilla','gdsagdfh',5432542,4),
('24325156',76868,7,'pablo','meta','tertwy',642542,7),
('64326431',87685675,8,'ana','bolo','qwetuu',656567,10),
('23432156',234235,9,'maria','palotes','eqwytfn',76576532,3),
('75437886',43254356,10,'fina','filipina','qetqergb',43452321,4);


INSERT INTO COORDINA(persona,departamento) values('44312345',1),
('47189845',3),
('24325156',5),
('75437886',7),
('24325156',9),
('64326431',2),
('43253451',4),
('45432345',10),
('44312345',8),
('23432156',6);


INSERT INTO NOMINA(id_nomina,fecha,salario,contrato) values (1,STR_TO_DATE('13/03/2022','%d/%m/%Y'),1234.5,10),
(2,STR_TO_DATE('14/03/2022','%d/%m/%Y'),1234.5,9),
(3,STR_TO_DATE('15/03/2022','%d/%m/%Y'),1334.5,8),
(4,STR_TO_DATE('16/03/2022','%d/%m/%Y'),1244.5,6),
(5,STR_TO_DATE('17/03/2022','%d/%m/%Y'),1236.5,4),
(6,STR_TO_DATE('18/03/2022','%d/%m/%Y'),1534.5,2),
(7,STR_TO_DATE('19/03/2022','%d/%m/%Y'),1634.5,1),
(8,STR_TO_DATE('20/03/2022','%d/%m/%Y'),1734.5,3),
(9,STR_TO_DATE('21/03/2022','%d/%m/%Y'),1834.5,5),
(10,STR_TO_DATE('23/03/2022','%d/%m/%Y'),1224.5,7);