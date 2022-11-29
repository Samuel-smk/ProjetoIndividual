create database healthFit;
use healthFit;

create table lista(
idLista int primary key auto_increment,
pdf varchar(200)
);
select * from usuario;
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
	("Marcos", "marcos.henrique@gmail.com", "12345", null),
    ("Kaio", "kaio.senna@gmail.com", "123456", null),
    ("Thiago", "thiago.pequeno@gmail.com", "1234567", null),
    ("Denilson", "dennis.reis@gmail.com", "1234", null);
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

insert into imc values
	(1, 1, "2003-05-12", 1.70, 64.65, 22.3),
    (2, 2, "2002-04-10", 1.78, 63.5, 20.0),
    (3, 3, "2003-11-08", 1.75, 62.00, 20.2),
    (4, 4, "2003-03-20", 1.70, 64.65, 22.1);