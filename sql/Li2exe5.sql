/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos
(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica).*/

create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria (
	id bigint (1) auto_increment,
    cliente varchar(50) not null,
	tem_estoque boolean not null,
    p_entrega boolean not null,
	primary key(id)
);
create table tb_produto (
	id bigint auto_increment,
	ferramenta varchar(50) not null,
    decoracao varchar(50) null,
	tinta varchar (50) not null,
	total decimal not null,
	categorias_id bigint,
	primary key(id),
	FOREIGN KEY (categorias_id) REFERENCES tb_categoria(id)
);
-- **************populando tb_categoria*******************
insert into tb_categoria (cliente,tem_estoque,p_entrega) value ("maria",true,true);
insert into tb_categoria (cliente,tem_estoque,p_entrega) value ("joao",false,false);
insert into tb_categoria (cliente,tem_estoque,p_entrega) value ("leandro",false,true);
insert into tb_categoria (cliente,tem_estoque,p_entrega) value ("mateus",true,false);
insert into tb_categoria (cliente,tem_estoque,p_entrega) value ("gabriel",true,true);
select * from tb_categoria;
-- ************POPULANDO TB_PRODUTO********************
insert into tb_produto (ferramenta,decoracao,tinta,total,categorias_id) value ("CHAVE-FENDA","PAPAEL-PAREDE","AZUL",90.00,1);
insert into tb_produto (ferramenta,decoracao,tinta,total,categorias_id) value ("SERROTE","TAPETE","SPRAY",70.00,2);
insert into tb_produto (ferramenta,decoracao,tinta,total,categorias_id) value ("ALICATE","ESPELHO","VERNIZ",60.00,3);
insert into tb_produto (ferramenta,decoracao,tinta,total,categorias_id) value ("MARTELO","LUMINARIA","GESSO",40.00,4);
insert into tb_produto (ferramenta,decoracao,tinta,total,categorias_id) value ("TRENA","ABAJUR","GRAFIATO",25.00,5);
insert into tb_produto (ferramenta,decoracao,tinta,total,categorias_id) value ("FURADEIRA","CORTINA","CALL",200.00,1);
insert into tb_produto (ferramenta,decoracao,tinta,total,categorias_id) value ("LIXADEIRA","PERSIANA","REMOVEDOR",80.00,2);
insert into tb_produto (ferramenta,decoracao,tinta,total,categorias_id) value ("ENXADA","PANELA","PINCEL",55.00,5);
select * from tb_produto;

select * from tb_produto where total >50;
select * from tb_produto where total > 3 and total < 60;
select * from tb_categoria where cliente like '%e%';
select * from tb_produto where ferramenta like '%i%';

SELECT ferramenta,decoracao,tinta,total,categorias_id from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categorias_id;

SELECT total FROM tb_produto where total = 80;


