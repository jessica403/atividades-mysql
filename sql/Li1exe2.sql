create database e_commerce;
use e_commerce;
create table produtos(
id bigint(1) auto_increment,
	cliente varchar (15) not null,
	celular varchar(50) not null,
    cor varchar (15) not null,
    defeito varchar (50) not null,
    preco float not null,
    primary key (id)
);
insert into produtos (cliente,celular,cor,defeito,preco) value ("maria","sansung","vermelho","tela_quebrada",200);
insert into produtos (cliente,celular,cor,defeito,preco) value ("joao","nokia","azul","tela_trincada",150);
insert into produtos (cliente,celular,cor,defeito,preco) value ("rose","alcatel","cinza","bateria_viciada",500);
insert into produtos (cliente,celular,cor,defeito,preco) value ("mario","lg","rosa","reset_pin",300);
insert into produtos (cliente,celular,cor,defeito,preco) value ("jose","philco","branco","reinstalar_software",350);
insert into produtos (cliente,celular,cor,defeito,preco) value ("kely","multilaser","preto","trocar_pelicula",50);
insert into produtos (cliente,celular,cor,defeito,preco) value ("erica","iphone","verde","trocar_capa",750);
insert into produtos (cliente,celular,cor,defeito,preco) value ("lucas","positivo","prateado","trocar_botoes",100);

select * from produtos
where preco >500;
select * from produtos
where preco <500;

update produtos set produtos.preco = 80 where id =2;
select * from produtos;




