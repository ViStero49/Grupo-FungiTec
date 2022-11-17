create table Empresa (
idEmpresa int primary key identity,
Nome varchar (45),
CNPJ char(14),
Telefone char(8),
Responsavel varchar(45)
);

create table Funcionario (
idFuncionario int identity,
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
idCadastroCogumelos int primary key identity,
Especie varchar(45)
);

create table Estufa (
idEstufa int identity,
Numero varchar(45),
fkCadastroCogumelos int,
foreign key (fkCadastroCogumelos) references CadastroCogumelos (idCadastroCogumelos),
fkEmpresa int,
foreign key (fkEmpresa) references Empresa (idEmpresa),
primary key (idEstufa, fkEmpresa)
);

create table AcessoFuncionario(
 fkEstufa int,
 fkFuncionario int,
 fkEmpresa int,
 dtAcesso datetime,
 foreign key (fkEstufa) references Estufa (idEstufa),
 foreign key (fkFuncionario) references Funcionario (idFuncionario),
 foreign key (fkEmpresa) references Empresa (idEmpresa),
 primary key (fkEstufa, fkFuncionario, fkEmpresa)
);

create table Sensor(
idSensor int,
nomeSensor varchar(45),
fkEstufa int,
foreign key (fkEstufa) references Estufa (idEstufa),
fkEmpresa int,
foreign key (fkEmpresa) references Empresa (idEmpresa),
primary key (idSensor, fkEstufa, fkEmpresa)
);

create table Dados_Sensor (
 idDados_Sensor int identity,
 Temperatura double,
 Umidade double,
 DiaHora datetime,
 alert tinyint,
 fkSensor int,
 foreign key (fkSensor) references Sensor (idSensor),
 primary key (idDados_Sensor, fkSensor)
);
