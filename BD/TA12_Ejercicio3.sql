use COMUNIDADES;

INSERT INTO COMUNIDADES_AUTONOMAS(nombre,poblacion,superficie) values ('Comunidad de Madrid',2999394,123.45),
('Cataluña',1244543455,214.64),
('Pais Vasco',54366221,253.64),
('Navarra',43253565,123.64),
('Galicia',4343553,314.64),
('Extremadura',4546643,43.64),
('Andalucia',435553,554.64),
('Castilla la Mancha',343245,123.64),
('Castilla y Leon',2132144,231.64),
('Aragon',434353,124.64);


INSERT INTO PROVINCIAS(id_provincias,nombre,num_localidades,com_autonoma) values (1,'Barcelona',36,'Cataluña'),
(2,'Madrid',1,'Comunidad de Madrid'),
(3,'Sevilla',20,'Andalucia'),
(4,'Leon',23,'Castilla y Leon'),
(5,'Badajoz',21,'Extremadura'),
(6,'Tarragona',32,'Cataluña'),
(7,'Huelva',27,'Andalucia'),
(8,'Caceres',18,'Extremadura'),
(9,'Jaen',24,'Andalucia'),
(10,'Girona',30,'Cataluña');


INSERT INTO LOCALIDAD(nombre,poblacion,superficie,provincia,capital_prov,capitalcom) values ("Barcelona",13040,134.5,1,true,true),
("Tarragona",2331,134.5,6,true,false),
("Reus",2123,34.5,6,false,false),
("Sevilla",3234,45.5,3,true,true),
("Martos",234,32.5,9,false,false),
("Igualada",2343,32.5,1,false,false),
("Girona",32345,100.5,10,true,false),
("Vila-seca",3245,58.5,6,false,false),
("Cambrils",34556,53.5,6,false,false),
("Badalona",34552,56.5,1,false,false);