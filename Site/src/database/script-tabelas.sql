create database healthFit;
use healthFit;
-- drop database healthfit;
create table lista(
idLista int primary key auto_increment,
pdf varchar(200)
);
insert into lista(pdf) values
	("https://www.ufrpe.br/sites/www.ufrpe.br/files/Guia%20de%20orientacao%20para%20a%20pratica%20de%20exercicios%20em%20casa.pdf");
    
select * from lista;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
constraint chkEmail check(email like "%@%"),
senha varchar(45),
fkLista int,
foreign key (fkLista) references lista(idLista)
);
 insert into  usuario(nome, email, senha, fkLista) values
	("Marcos", "marcos.henrique@gmail.com", "12345", 1),
    ("Kaio", "kaio.senna@gmail.com", "123456", 1),
    ("Thiago", "thiago.pequeno@gmail.com", "1234567", 1),
    ("Denilson", "dennis.reis@gmail.com", "1234", 1);
    select * from usuario;
    
create table imc(
idImc int auto_increment,
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario),
primary key(idImc, fkUsuario),
dtNasc date,
altura decimal(3,2),
peso decimal(4,2),
resultado decimal(3,1)
);
select * from imc;
insert into imc (fkUsuario, dtNasc, altura, peso, resultado) values
	(1, "2003-05-12", 1.70, 64.65, 22.3),
    (2, "2002-04-10", 1.78, 63.5, 20.0),
    (3, "2003-11-08", 1.75, 62.00, 20.2),
    (4, "2003-03-20", 1.70, 64.65, 22.1);