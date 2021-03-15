/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra B.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

create database  db_farmacia_do_bem;
use  db_farmacia_do_bem;

create table tb_categoria (
	id bigint (1) auto_increment,
	nome varchar (50) not null,
    produto varchar (50) not null,
    promoção boolean not null,
    primary key (id)
); -- 3 atributos/5 dados

create table tb_produto (
	id bigint(1) auto_increment,
    descrição varchar (50) not null,
    generico boolean not null,
    cosmetico boolean not null,
    quantidade decimal not null,
    preço decimal not null,
    forma_pag varchar(50) not null,
    categorias_id bigint not null,
    primary key (id),
    foreign key (categorias_id) references tb_categoria (id)
); -- 5 atributos/8 dados
--  ***********populando tb_categoria***************
insert into tb_categoria (nome,produto,promoção) value ("MARIA","DESODORANTE",true);
insert into tb_categoria (nome,produto,promoção) value ("ROSE","ANALGESICO",false);
insert into tb_categoria (nome,produto,promoção) value ("JOAO","DRAMIN",true);
insert into tb_categoria (nome,produto,promoção) value ("VALERIA","TERMOMETRO",false);
insert into tb_categoria (nome,produto,promoção) value ("RITA","ALGODÃO",false);
--  ***********populando tb_PRODUTO***************
insert into tb_produto (descrição,generico,cosmetico,quantidade,preço,forma_pag,categorias_id) value ("AEROSOL",false,true,1,18.99,"CARTAO-CREDITO",1);
insert into tb_produto (descrição,generico,cosmetico,quantidade,preço,forma_pag,categorias_id) value ("ASPIRINA",true,false,1,17.90,"DINHEIRO",2);
insert into tb_produto (descrição,generico,cosmetico,quantidade,preço,forma_pag,categorias_id) value ("P/ENJOO",false,false,1,69.90,"PIX",3);
insert into tb_produto (descrição,generico,cosmetico,quantidade,preço,forma_pag,categorias_id) value ("MEDIR-FEBRE",false,false,1,25.99,"CARTÃO-DEBITO",4);
insert into tb_produto (descrição,generico,cosmetico,quantidade,preço,forma_pag,categorias_id) value ("CURATIVO",false,false,2,3.50,"DINHEIRO",5);
insert into tb_produto (descrição,generico,cosmetico,quantidade,preço,forma_pag,categorias_id) value ("ROLL-ON",false,true,1,7.99,"DINHEIRO",1);
insert into tb_produto (descrição,generico,cosmetico,quantidade,preço,forma_pag,categorias_id) value ("SUPLEMENTOS",true,false,1,90.00,"CARTAO-CREDITO",2);
insert into tb_produto (descrição,generico,cosmetico,quantidade,preço,forma_pag,categorias_id) value ("WHEY",true,false,1,81.90,"PIX",3);

select * from tb_produto where preço >50;
select * from tb_produto where preço > 3 and preço < 60;
select * from tb_categoria where nome like '%e%';
select * from tb_produto where descrição like '%B%';
SELECT descrição,generico,quantidade,preço,forma_pag,categorias_id from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categorias_id;
SELECT cosmetico FROM tb_produto where cosmetico = true;



