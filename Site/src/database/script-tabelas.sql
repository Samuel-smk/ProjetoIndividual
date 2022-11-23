create database healthFit;
use healthFit;

create table lista(
idLista int primary key auto_increment,
nomeAlimento varchar(45),
tipoAlimento varchar(45),
nomeExercicio varchar(45),
tipoExercicio varchar(45)
);

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
constraint chkEmail check(email like "%@%"),
senha varchar(45),
fkLista int,
foreign key (fkLista) references lista(idLista)
);

create table imc(
idImc int,
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario),
primary key(idImc, fkUsuario),
dtNasc date,
altura decimal(3,2),
peso decimal(4,2),
resultado decimal(3,1)
);
