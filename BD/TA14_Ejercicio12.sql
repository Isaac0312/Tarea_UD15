USE ACADEMIA;

INSERT INTO PROFESORES(dni,nombre,apellido1,apellido2,direccion,titulo,gana) VALUES ('43245325','Maria','Lopez','Pujol','dsag','gfdas',2343.53),
('65436536','Juan','Saez','Gomez','fgdfgda','gfdas',2343.53),
('56345677','Jose','Bono','Ferran','dfddsaf','gfdas',2343.53),
('32345567','Lolita','Puerro','Gutierrez','dsdasgag','gfdas',2343.53),
('43253666','Manu','Martinez','Blanco','dhfds','bvcxcvbc',2343.53),
('42145356','Pepe','Solan','Hierro','asdfd','qwet',2343.53),
('76578564','Sofia','Herrero','Pepo','regbe','gqwewqs',2343.53),
('86546888','Carmen','Puebla','Torno','dbdss','greewe',2343.53),
('64375753','Paloma','Sanchez','Villa','asdfd','fhsdhe',2343.53),
('45757889','Palomo','Zamora','Domingo','dvdasa','dasgawe',2343.53);

INSERT INTO CURSOS(nombre,maxalumnos,fecha_inicio,fecha_final,num_horas,profesor) values ('CURSO1',3,str_to_date('12/10/2022','%d/%m/%Y'),str_to_date('12/12/2022','%d/%m/%Y'),234,'43245325'),
('CURSO2',5,str_to_date('12/10/2022','%d/%m/%Y'),str_to_date('12/12/2022','%d/%m/%Y'),674,'65436536'),
('CURSO3',3,str_to_date('12/10/2022','%d/%m/%Y'),str_to_date('12/12/2022','%d/%m/%Y'),534,'56345677'),
('CURSO4',6,str_to_date('12/10/2022','%d/%m/%Y'),str_to_date('12/12/2022','%d/%m/%Y'),314,'32345567'),
('CURSO5',7,str_to_date('12/10/2022','%d/%m/%Y'),str_to_date('12/12/2022','%d/%m/%Y'),324,'43253666'),
('CURSO6',9,str_to_date('12/10/2022','%d/%m/%Y'),str_to_date('12/12/2022','%d/%m/%Y'),256,'42145356'),
('CURSO7',14,str_to_date('12/10/2022','%d/%m/%Y'),str_to_date('12/12/2022','%d/%m/%Y'),434,'76578564'),
('CURSO8',25,str_to_date('12/10/2022','%d/%m/%Y'),str_to_date('12/12/2022','%d/%m/%Y'),2346,'86546888'),
('CURSO9',33,str_to_date('12/10/2022','%d/%m/%Y'),str_to_date('12/12/2022','%d/%m/%Y'),275,'64375753'),
('CURSO10',36,str_to_date('12/10/2022','%d/%m/%Y'),str_to_date('12/12/2022','%d/%m/%Y'),256,'45757889');

INSERT INTO ALUMNOS(dni,nombre,apellido1,apellido2,direccion,sexo,fecha_nacimiento) values ('45213587','Dani','Martos','Sevilla','fdsga','M',str_to_date('18/02/1994','%d/%m/%Y')),
('47185975','Pepito','Grillo','Sanz','fdgsas','M',str_to_date('12/10/1990','%d/%m/%Y')),
('48321388','Pedro','Lopez','Jimenez','dsagdag','M',str_to_date('12/10/1964','%d/%m/%Y')),
('45156155','Manuela','Cerezo','Ruiz','gdasgas','F',str_to_date('12/10/1953','%d/%m/%Y')),
('54542121','Julia','Granado','Quintana','gdada','F',str_to_date('12/10/1980','%d/%m/%Y')),
('21889875','Rosa','Santana','Bueno','','F',str_to_date('12/10/1997','%d/%m/%Y')),
('54985223','Juan','Pomo','Pepo','feasgas','M',str_to_date('12/10/2002','%d/%m/%Y')),
('54466668','Pepa','Martinez','Rodriguez','gdagsdfa','F',str_to_date('12/10/2007','%d/%m/%Y')),
('15899822','Miguel','Rios','Puebla','fdsagae','M',str_to_date('12/10/2000','%d/%m/%Y')),
('54988998','Monica','Rio','Feliz','gdgaae','F',str_to_date('12/10/2005','%d/%m/%Y'));

INSERT INTO ASIGNADO_A(curso,alumno) VALUES (1,'45213587'),
(2,'47185975'),
(3,'48321388'),
(4,'45156155'),
(5,'54542121'),
(6,'21889875'),
(7,'54985223'),
(8,'54466668'),
(9,'15899822'),
(10,'54988998');