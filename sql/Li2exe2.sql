/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).*/

create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
	id bigint (1) auto_increment,
    cliente varchar(50) not null,
    endereço varchar (180) not null,
    forma_pagamento varchar (50) not null,
    primary key (id)
);
create table tb_pizza (
	id bigint(1) auto_increment,
    pizza_salgada varchar (50) not null,
    com_cebola boolean not null,
    preço decimal (5) not null,
    pizza_doce varchar (50) not null,
    valor decimal (5) not null,
    categorias_id bigint not null,
    primary key (id),
    foreign key (categorias_id) references tb_categoria (id)
);
--  ***********populando tb_categoria***************
insert into tb_categoria (cliente,endereço,forma_pagamento) value ("MARIA","R:SANTANA DO AGRESTE,26","CARTÃO-CREDITO");
insert into tb_categoria (cliente,endereço,forma_pagamento) value ("ELISA","R:REGRESSO FELIZ,40","DINHEIRO");
insert into tb_categoria (cliente,endereço,forma_pagamento) value ("SARA","R:RIO DAS PEDRAS,255","PIX");
insert into tb_categoria (cliente,endereço,forma_pagamento) value ("RONY","R:GUILHERME SODRE,50","VALE-REFEIÇÃO");
insert into tb_categoria (cliente,endereço,forma_pagamento) value ("ANDRE","R:SANTA BARBARA,288","CARTÃO-DEBITO");
select * from tb_categoria;
--  ***********populando tb_pizza***************
insert into tb_pizza(pizza_salgada,com_cebola,preço,pizza_doce,valor,categorias_id)value("PORTUGUSA",true,35.00,"BRIGADEIRO",30.00,1);
insert into tb_pizza(pizza_salgada,com_cebola,preço,pizza_doce,valor,categorias_id)value("CALABRESA",true,24.99,"PRESTIGIO",28.00,2);
insert into tb_pizza(pizza_salgada,com_cebola,preço,pizza_doce,valor,categorias_id)value("MUSARELA",false,24.99,"ROMEU&JULIETA",25.00,3);
insert into tb_pizza(pizza_salgada,com_cebola,preço,pizza_doce,valor,categorias_id)value("4QUEIJOS",false,35.00,"FORESTA-NEGRA",32.99,4);
insert into tb_pizza(pizza_salgada,com_cebola,preço,pizza_doce,valor,categorias_id)value("VEGETARIANA",true,24.99,"ABACAXI-COCO",34.99,5);
insert into tb_pizza(pizza_salgada,com_cebola,preço,pizza_doce,valor,categorias_id)value("BROCOLIS",false,28.00,"BANANA-NUTELA",40.00,2);
insert into tb_pizza(pizza_salgada,com_cebola,preço,pizza_doce,valor,categorias_id)value("CAMARÃO",false,62.99,"CHOCOLATE-SORVETE",25.00,4);
insert into tb_pizza(pizza_salgada,com_cebola,preço,pizza_doce,valor,categorias_id)value("ATUM",false,31.99,"LEITE-NINHO",45.00,1);
select * from tb_pizza;

select * from tb_pizza where preço >45;
select * from tb_pizza where valor >=45;
select * from tb_pizza where preço > 29 and preço < 60;
select * from tb_pizza where valor > 29 and valor < 60;

select * from tb_pizza where pizza_salgada like '%C%';
select * from tb_categoria where endereço like '%A%';

SELECT pizza_salgada,com_cebola,preço,pizza_doce,valor,categorias_id from tb_pizza
 inner join tb_categoria on tb_categoria.id = tb_pizza.categorias_id; -- relaçao entre 2 table.
 
 


