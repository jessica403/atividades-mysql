/*Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra J.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria Java).*/
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria (
	id bigint (1) auto_increment,
    aluni varchar(50) not null,
	pago boolean not null,
    ong boolean not null,
	primary key(id)
);
create table  tb_produto (
id bigint auto_increment,
	curso varchar(50) not null,
    qtaulas decimal not null,
	dba varchar(50) not null,
	preco decimal not null,
	categorias_id bigint,
	primary key(id),
	FOREIGN KEY (categorias_id) REFERENCES tb_categoria(id)
);
-- **************populando tb_categoria*******************
insert into tb_categoria (aluni,pago,ong) value ("sara",true,false);
insert into tb_categoria (aluni,pago,ong) value ("joao",false,true);
insert into tb_categoria (aluni,pago,ong) value ("rony",true,false);
insert into tb_categoria (aluni,pago,ong) value ("rian",false,true);
insert into tb_categoria (aluni,pago,ong) value ("yuri",true,false);
select * from tb_categoria;
-- ************POPULANDO TB_PRODUTO********************
insert into tb_produto (curso,qtaulas,dba,preco,categorias_id) value ("java",25,"oracle",70.00,1);
insert into tb_produto (curso,qtaulas,dba,preco,categorias_id) value ("php",15.00,"mysql",00.00,2);
insert into tb_produto (curso,qtaulas,dba,preco,categorias_id) value ("javascrip",20,"mongodb",150.00,3);
insert into tb_produto (curso,qtaulas,dba,preco,categorias_id) value ("Python",50,"nosql",500.00,4);
insert into tb_produto (curso,qtaulas,dba,preco,categorias_id) value ("css",10,"nosql",00.00,5);
insert into tb_produto (curso,qtaulas,dba,preco,categorias_id) value ("html",15,"nosql",00.00,1);
insert into tb_produto (curso,qtaulas,dba,preco,categorias_id) value ("bootstrap",5,"oracle",200,3);
insert into tb_produto (curso,qtaulas,dba,preco,categorias_id) value ("c++",10,"oracle",100,5);
select * from tb_categoria;

select * from tb_produto where preco >50;
select * from tb_produto where preco > 60 and preco < 200;
select * from tb_categoria where aluni like '%i%';
select * from tb_produto where curso like '%c%';

SELECT curso,qtaulas,dba,preco,categorias_id from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categorias_id;

SELECT qtaulas FROM tb_produto where qtaulas = 100;


