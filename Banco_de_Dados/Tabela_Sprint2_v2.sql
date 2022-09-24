create database FungiTec;

use FungiTec;

create table Empresa (
idEmpresa int primary key auto_increment,
Nome varchar (45),
Responsavel varchar (45),
CNPJ char (14)
);

create table Contatos (
idContatos int primary key auto_increment,
Email varchar(45),
TelefoneFixo char(8),
TelefoneMovel char(11),
fkEmpresa int,
foreign key fkContatoEmpresa (fkEmpresa) references Empresa(idEmpresa)
);

create table DadosSensores (
idDadosSensores int primary key auto_increment,
Temperatura double,
Umidade double,
DiaHora datetime
);

create table CadastroCogumelos(
idCogumelos int primary key auto_increment,
especie varchar(45),
fkDados int,
foreign key fkDados_Sensores (fkDados) references Dados_Sensores (idDadosSensores)
);

create table Estufas (
idEstufa int primary key auto_increment,
NomeEstufa int,
fkCadastroCogumelo int,
foreign key fkCadastro (fkCadastroCogumelo) references Cadastro_Cogumelos (idCogumelos),
fkCadastroEmpresa int,
foreign key fkEmpresa (fkCadastroEmpresa) references Empresa (idEmpresa)
);

insert into Empresa (Nome, Responsavel, CNPJ, Email, Telefone) values
	('SPtech','Fernando Brandão','07165496000100'),
    ('FungiTec','Rafael Rodrigues','01234567891012'),
    ('AgroXpto','Vivian Silva','11222344567891');

insert into Contatos (email, TelefoneFixo, TelefoneMovel, fkEmpresa) values 
('sptech.@gmail.com','11974093996','22045863',1),
('xpto@gmail.com','11987654321','22698135',2),
('school@gmail.com','11958467913','22647833',3);

insert into CadastroCogumelos (especie, fkDados) values 
	('Shiitake', 1),
    ('Shimeji', 2),
    ('Champignon', 3);
    
insert into DadosSensores (Temperatura, Umidade, DiaHora) values
    (20.70,90,'2022-09-06 14:30'),
    (24.50,75,'2022-09-06 14:34'),
    (20.43,85,'2022-09-06 14:37');

insert into Estufas (NumeroEstufa, fkCadastroCogumelo, fkCadastroEmpresa) values
('EstufaShitake', 1, 1),
('EstufaShimeji', 2, 2),
('EstufaChampignon', 3, 3);

select * from Empresa;
select * from Contatos;
select * from DadosSensores;
select * from CadastroCogumelos;
select * from Estufas;