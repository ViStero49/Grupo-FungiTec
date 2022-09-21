create database FungiTec;

use FungiTec;

create table Empresa (
IdEmpresa int primary key auto_increment,
Nome varchar (45),
Responsavel varchar (45),
CNPJ char (14),
Email varchar (40),
Telefone char(11)
);

create table Cogumelos (
IdCogumelo int primary key auto_increment,
Especie varchar (40)
);

create table Empresa_Cogumelo (
fkEmpresa int,
foreign key fkCadastroEmpresa (fkEmpresa) references Empresa (IdEmpresa),
fkCogumelo int,
foreign key fkMediaCogumelo (fkCogumelo) references Cogumelos (IdCogumelo),
Temperatura DOUBLE,
Umidade DOUBLE,
DiaHora datetime,
Estufa int
);

insert into Cogumelos (Especie) values 
	('Shiitake'),
    ('Shimeji'),
    ('Champignon');

insert into Empresa (Nome, Responsavel, CNPJ, Email, Telefone) values
	('SPtech','Fernando Brandão','07165496000100','sptech.@gmail.com','11974093996'),
    ('FungiTec','Rafael Rodrigues','01234567891012','xpto@gmail.com','11987654321'),
    ('AgroXpto','Vivian Silva','11222344567891','school@gmail.com','11958467913');
    
select * from Cogumelos;
select * from Empresa;

insert into Empresa_Cogumelo (fkEmpresa, fkCogumelo, Temperatura, Umidade, DiaHora, Estufa) values
(1,1,20.70,90,'2022-09-06 14:30',7),
(2,1,24.50,75,'2022-09-06 14:34',14),
(3,3,20.43,85,'2022-09-06 14:37',10);

select * from Empresa_Cogumelo;
