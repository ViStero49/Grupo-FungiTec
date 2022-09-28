create database FungiTec;
use FungiTec;

create table Empresa (
idEmpresa int primary key auto_increment,
Nome varchar (45),
CNPJ char(14),
Telefone char(8),
Responsavel varchar(45)
);

create table Funcionario (
idFuncionario int auto_increment,
Login varchar(45),
Senha varchar(45),
Setor varchar(45),
Email varchar(45),
Status tinyint,
fkEmpresa int,
foreign key (fkEmpresa) references Empresa (idEmpresa),
fkSupervisor int,
foreign key (fkSupervisor) references Funcionario (idFuncionario),
primary key (idFuncionario, fkEmpresa)
); 

create table CadastroCogumelos (
idCadastroCogumelos int primary key auto_increment,
Especie varchar(45)
);

create table Estufa (
idEstufa int auto_increment,
Numero varchar(45),
fkCadastroCogumelos int,
foreign key (fkCadastroCogumelos) references CadastroCogumelos (idCadastroCogumelos),
fkEmpresa int,
foreign key (fkEmpresa) references Empresa (idEmpresa),
primary key (idEstufa, fkEmpresa)
);

create table Dados_Sensor (
idDados_Sensor int auto_increment,
Temperatura double,
Umidade double,
DiaHora datetime,
fkEstufa int,
foreign key (fkEstufa) references Estufa (idEstufa),
primary key (idDados_Sensor, fkEstufa)
);

insert into Empresa values
(null, 'SPTECH', 12345678910121, 22045863, 'Alessandro'),
(null, 'Cogumelos da Mantiqueira', 98765432101235, 22105864, 'Renata'),
(null, 'CoguLTDA', 95175368425823, 24145869, 'Vivian');

insert into Funcionario values
(null, 'Paulo', 'Paulo_sptech56', 'Analise', 'paulo@sptech.school', 1, 1, null),
(null, 'Rogerio','rogerio_Mantiqueira89', 'Vendas', 'rogerio@cogumelos.mantiqueira.com.br', 1, 2, null),
(null, 'Romario', 'romario@cogumelo66', 'Marketing', 'romario@cogu.ltda.com', 1, 3, null),
(null, 'Rafael','rafael_Sptech88', 'Financeiro','rafael@sptech.school', 1, 1, 1),
(null, 'Gustavo','gustAvo_mantiqueira97', 'Auditoria', 'gustavo@cogumelos.mantiqueira.com.br', 1, 2, 2),
(null, 'Pelé', 'pele@cigumelo23', 'Dados', 'pele@cogu.ltda.com', 1, 3, 3);

insert into CadastroCogumelos values
(null, 'shitake'),
(null, 'Shimeji'),
(null, 'Champignon');

insert into Estufa values
(null, 'S1', 1, 1),
(null, 'M1', 2, 2),
(null, 'C1', 3, 3);

insert into Dados_Sensor values
(null,20.70,90,'2022-09-06 15:23',1),
(null,24.50,75,'2022-09-06 15:23',2),
(null,19.05,97,'2022-09-06 15:23', 3);

select * from Empresa;
select * from Funcionario;
select * from CadastroCogumelos;
select * from Dados_Sensor;
