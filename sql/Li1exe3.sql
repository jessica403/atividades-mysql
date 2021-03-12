create database escola;
use escola;
create table alunos(
	id bigint (1) auto_increment,
    nome varchar (50) not null,
    idade int not null,
    matricula int not null,
    serie varchar(10) not null,
    turno varchar (10) not null,
    primary key (id)
);
insert into alunos (nome,idade,matricula,serie,turno) value ("maria",7,223,"primeira","manha");
insert into alunos (nome,idade,matricula,serie,turno) value ("renan",15,224,"Ens.Medio","noite");
insert into alunos (nome,idade,matricula,serie,turno) value ("jusara",10,225,"quarta","tarde");
insert into alunos (nome,idade,matricula,serie,turno) value ("alice",11,243,"quinta","tarde");
insert into alunos (nome,idade,matricula,serie,turno) value ("caio",12,423,"sexta","tarde");
insert into alunos (nome,idade,matricula,serie,turno) value ("rian",7,220,"primeira","manha");
insert into alunos (nome,idade,matricula,serie,turno) value ("samuel",10,203,"quarta","tarde");
insert into alunos (nome,idade,matricula,serie,turno) value ("lucas",15,023,"Ens.Medio","noite");
alter table alunos add column nota int (2);
UPDATE alunos set nota = 7 WHERE id = 1;
UPDATE alunos set nota = 8 WHERE id = 2;
UPDATE alunos set nota = 10 WHERE id = 3;
UPDATE alunos set nota = 5 WHERE id = 4;
UPDATE alunos set nota = 4 WHERE id = 5;
UPDATE alunos set nota = 0 WHERE id = 6;
UPDATE alunos set nota = 8 WHERE id = 7;
UPDATE alunos set nota = 9 WHERE id = 8;
UPDATE alunos set nota = 7 WHERE id = 9;
UPDATE alunos set nota = 6 WHERE id = 10;
UPDATE alunos set nota = 9 WHERE id = 11;
UPDATE alunos set nota = 7 WHERE id = 12;
select * from alunos where nota >7;
select * from alunos where nota <7;
select * from alunos;

