use LOSCIENTIFICOS;

insert into CIENTIFICOS (dni,nomapels) values ("47117194","DaniMartos");
insert into CIENTIFICOS(dni,nomapels) values("46251235","JoanMus"),
("56354568","PepitoGrillo"),
("42154886","PablitoPalillo"),
("45214564","FulanoDeTal"),
("35421189","FulanoDePascual"),
("77584666","PollitoPio"),
("84863133","PedritoRito"),
("54875123","PinochoOcho"),
("45847823","PacoChocolate");

select * from CIENTIFICOS;

insert into PROYECTO (id,nombre,horas) values ('WEPA',"Webpage",50),
('FRPA',"Frontpage",24),
('BAPA',"Backpage",26),
('DEFR',"Designfront",32),
('NNIA',"NeuralNetworkIA",200),
('TRNN',"TrainNN",150),
('IMNN',"ImplementNN",48),
('GANN',"GameNN",250),
('GABO',"Gamebots",150),
('GADE',"Gamedesign",450);

select * from PROYECTO;

insert into ASIGNADO_A (cientifico,proyecto) values ("47117194",'WEPA'),
("46251235",'FRPA'),
("56354568",'BAPA'),
("42154886",'DEFR'),
("45214564",'NNIA'),
("35421189",'TRNN'),
("77584666",'IMNN'),
("84863133",'GANN'),
("54875123",'GABO'),
("45847823",'GADE');

select * from ASIGNADO_A;
