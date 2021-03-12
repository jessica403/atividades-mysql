create database rh_empresa;
use rh_empresa;
create table funcionarios (
	id bigint(1) auto_increment,
    nome varchar(50) not null,
   cargo varchar(30) not null,
	turno varchar(30) not null,
    salario decimal (7,2),
    ferias boolean,
    primary key (id)
);
insert into funcionarios (nome,cargo,turno,salario,ferias) value ("maria","atendente","manha",1500,false);
insert into funcionarios (nome,cargo,turno,salario,ferias) value ("joao","pedreiro","integral",2500,false);
insert into funcionarios (nome,cargo,turno,salario,ferias) value ("valeria","DBA","integral",5000,true);
insert into funcionarios (nome,cargo,turno,salario,ferias) value ("roberto","eletricista","freelancer",5000,false);
insert into funcionarios (nome,cargo,turno,salario,ferias) value ("vanessa","Op.de caixa","noite",1200,true);

select * from funcionarios
where salario >2000;

select * from funcionarios
where salario <2000;

update funcionarios
set nome = "ronaldo"
where id = 5;



