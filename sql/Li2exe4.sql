/*Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o
seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos
produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são suinos).*/

create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria (
	id bigint (1) auto_increment,
    descricao varchar(50) not null,
	tem_estoque boolean not null,
    congelado boolean not null,
	primary key(id)

); -- 3atibutos/ 5 dados

create table tb_produto ( 
	id bigint auto_increment,
	nome varchar(255) not null,
	preco decimal not null,
	kilos varchar(50) not null,
	suino boolean not null,
	categorias_id bigint,
	primary key(id),
	FOREIGN KEY (categorias_id) REFERENCES tb_categoria(id)

); -- /inner join/produtos q sao suinos

-- **************populando tb_categoria*******************
insert into tb_categoria (descricao,tem_estoque,congelado) value ("BOVINO",true,false);
insert into tb_categoria (descricao,tem_estoque,congelado) value ("SUINO",true,false);
insert into tb_categoria (descricao,tem_estoque,congelado) value ("AVES",true,true);
insert into tb_categoria (descricao,tem_estoque,congelado) value ("EMBUTIDOS",true,false);
insert into tb_categoria (descricao,tem_estoque,congelado) value ("PERTENCE FEIJOADA",true,false);
select * from tb_categoria;

-- ************POPULANDO TB_PRODUTO********************
insert into tb_produto (nome,preco,kilos,suino,categorias_id) value ("ASA",18.99,"1K",false,1);
insert into tb_produto (nome,preco,kilos,suino,categorias_id) value ("COSTELA",25.99,"5K",true,2);
insert into tb_produto (nome,preco,kilos,suino,categorias_id) value ("PICANHA",120.00,"3K",false,3);
insert into tb_produto (nome,preco,kilos,suino,categorias_id) value ("SALSICHA",9.00,"1K",true,4);
insert into tb_produto (nome,preco,kilos,suino,categorias_id) value ("PERNIL",85.00,"5K",true,5);
insert into tb_produto (nome,preco,kilos,suino,categorias_id) value ("ORELHA",7.99,"1K",true,2);
insert into tb_produto (nome,preco,kilos,suino,categorias_id) value ("HAMBURGUER",3.50,"1",false,4);
insert into tb_produto (nome,preco,kilos,suino,categorias_id) value ("MOCOTO",5.99,"1K",false,5);
select * from tb_produto;

select * from tb_produto where preco >50;
select * from tb_produto where preco > 3 and preco < 60;
select * from tb_categoria where descricao like '%c%';
select * from tb_categoria where descricao like '%B%';

SELECT nome,preco,kilos,suino,categorias_id from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categorias_id;

SELECT kilos FROM tb_produto where kilos = true;

