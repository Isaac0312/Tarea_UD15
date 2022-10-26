USE SOCIAL;
INSERT INTO CUENTA(id_usuario,nombre,apellidos,id_foto) values (1,'CUENTA1','US1','FOTO1'),
(2,'CUENTA2','US2','FOTO2'),
(3,'CUENTA3','US3','FOTO3'),
(4,'CUENTA4','US4','FOTO4'),
(5,'CUENTA5','US5','FOTO5'),
(6,'CUENTA6','US6','FOTO6'),
(7,'CUENTA7','US7','FOTO7'),
(8,'CUENTA8','US8','FOTO8'),
(9,'CUENTA9','US9','FOTO9'),
(10,'CUENTA10','US10','FOTO10');

INSERT INTO CONTACTO values (1,'DESC1',false,1),
(2,'DESC2',false,2),
(3,'DESC3',true,3),
(4,'DESC4',true,4),
(5,'DESC5',false,5),
(6,'DESC6',true,6),
(7,'DESC7',false,7),
(8,'DESC8',false,8),
(9,'DESC9',true,9),
(10,'DESC10',false,10);

INSERT INTO GRUPO(id_contacto,nombre) values (1,'GRUPO1'),
(2,'GRUPO2'),
(3,'GRUPO3'),
(4,'GRUPO4'),
(5,'GRUPO5'),
(6,'GRUPO6'),
(7,'GRUPO7'),
(8,'GRUPO8'),
(9,'GRUPO9'),
(10,'GRUPO10');

INSERT INTO USUARIO(cuenta,direccion,telefono,email) values (1,'DIR1',353563,'EMAIL1'),
(2,'DIR2',353563,'EMAIL2'),
(3,'DIR3',353563,'EMAIL3'),
(4,'DIR4',353563,'EMAIL4'),
(5,'DIR5',353563,'EMAIL5'),
(6,'DIR6',353563,'EMAIL6'),
(7,'DIR7',353563,'EMAIL7'),
(8,'DIR8',353563,'EMAIL8'),
(9,'DIR9',353563,'EMAIL9'),
(10,'DIR10',353563,'EMAIL10');

INSERT INTO COMENTARIO(id_coment,comentario,id_img,usuario) values (1,'COMENT1','IMG1',1),
(2,'COMENT2','IMG2',2),
(3,'COMENT3','IMG3',3),
(4,'COMENT4','IMG4',4),
(5,'COMENT5','IMG5',5),
(6,'COMENT6','IMG6',6),
(7,'COMENT7','IMG7',7),
(8,'COMENT8','IMG8',8),
(9,'COMENT9','IMG9',9),
(10,'COMENT10','IMG10',10);

INSERT INTO FORMA_PARTE(cuenta,grupo) VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
INSERT INTO PERTENECE(contacto,grupo) VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
INSERT INTO PUEDE_VER(id_coment,id_contacto) values (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
INSERT INTO VE(comentario,grupo) values (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
