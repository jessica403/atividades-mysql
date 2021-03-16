/*Crie um banco de dados para um serviço de uma loja de móveis e decoração, o nome do
banco deverá ter o seguinte: db_nome minha_casa_mais_bonita, onde o sistema trabalhará
com as informações dos produtos desta loja.

O sistema trabalhará com 3 tabelas tb_produto e tb_categoria e tb_usuario.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta loja.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desta loja(não esqueça de criar
a foreign key de tb_categoria nesta tabela).

Crie a tabela Usuario e utilize a habilidade de abstração e determine 5 atributos relevantes
dos tb_usuario para se trabalhar com o serviço desta loja.

Popule atabela Categoria com até 5 dados.

Popule a tabela Produto com até 8 dados.

Popule atabela Usuario com até 5 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra B.

Faça um select utilizando LIKE buscando os Usuários com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

faça um select que retorne a média de preços dos produtos;

faça um select que retorne a soma de preços dos produtos;

faça um select que quantidade de produtos cadastrados na tabela

Faça um select onde traga todos os Produtos de uma categoria específica

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/

create database db_minha_casa_mais_bonita;
use db_minha_casa_mais_bonita;

CREATE TABLE tb_usuario (
	id bigint AUTO_INCREMENT,
	nome_completo varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	senha varchar(255) NOT NULL,
    endereco varchar (100) not null,
    pagamento varchar(50) not null,
	PRIMARY KEY (id)
    );
CREATE TABLE tb_categoria (
	id bigint AUTO_INCREMENT,
	cosmeticos varchar(255) NOT NULL,
	eletronicos varchar(255) NOT NULL,
	decoracao varchar(255) NOT NULL,
	PRIMARY KEY (id)
);
CREATE TABLE tb_produto (
	id bigint AUTO_INCREMENT,
	validade varchar(50) NOT NULL,
	quantidade decimal NOT NULL,
	entrega_retirar varchar(50) NOT NULL,
	total DECIMAL NOT NULL,
    categorias_id bigint,
	PRIMARY KEY (id),
    foreign key (categorias_id) REFERENCES tb_categoria(id)
);
ALTER TABLE tb_produto ADD CONSTRAINT tb_produto FOREIGN KEY (categorias_id) REFERENCES tb_categoria(id);
-- ************populando tb_cliente*******************
insert into tb_usuario (nome_completo,email,senha,endereco,pagamento) value ("MARIA SANTOS","MARIA@GMAIL.COM","123","SANTA BARBARA,26","CREDITO");
insert into tb_usuario (nome_completo,email,senha,endereco,pagamento) value ("JOAO OLIVEIRA","JOAOA@GMAIL.COM","123","NORDESTINA,41","DEBITO");
insert into tb_usuario (nome_completo,email,senha,endereco,pagamento) value ("MARCOS ALMEIDA","MARCOS@GMAIL.COM","123","SANTANA,22","PIX");
insert into tb_usuario (nome_completo,email,senha,endereco,pagamento) value ("SARA BARROS","SARA@GMAIL.COM","123","REGRESSO FELIZ,36","CREDIARIO");
insert into tb_usuario (nome_completo,email,senha,endereco,pagamento) value ("KELY MARIA","KELY@GMAIL.COM","123","BANDEIRANTES,341","CHEQUE");
-- *****************populando tb_categoria**************************
insert into tb_categoria (cosmeticos,eletronicos,decoracao) value ("HIDRATANTE","CELULAR","TAPETE");
insert into tb_categoria (cosmeticos,eletronicos,decoracao) value ("SHANPOO","TV","CORTINA");
insert into tb_categoria (cosmeticos,eletronicos,decoracao) value ("CONDICIONADOR","BABA ELETRONICA","PAPEL DE PAREDE");
insert into tb_categoria (cosmeticos,eletronicos,decoracao) value ("MASCARA FACIAL","PLAYSTATION","ABAJUR");
insert into tb_categoria (cosmeticos,eletronicos,decoracao) value ("OLE DE COCO","KINDLE","LUMINARIA");
select * from tb_categoria;
-- ****************populando tb_produto****************************
insert into tb_produto (validade,quantidade,entrega_retirar,total,categorias_id) value ("04/22",1,"entrega",1.560,1);
insert into tb_produto (validade,quantidade,entrega_retirar,total,categorias_id) value ("05/23",1,"entrega",2.060,2);
insert into tb_produto (validade,quantidade,entrega_retirar,total,categorias_id) value ("10/25",2,"retirar",600,3);
insert into tb_produto (validade,quantidade,entrega_retirar,total,categorias_id) value ("08/21",1,"entrega",2.350,4);
insert into tb_produto (validade,quantidade,entrega_retirar,total,categorias_id) value ("10/30",1,"retirar",420,5);
insert into tb_produto (validade,quantidade,entrega_retirar,total,categorias_id) value ("04/22",1,"retirar",700,2);
insert into tb_produto (validade,quantidade,entrega_retirar,total,categorias_id) value ("08/21",1,"entrega",2350,1);
insert into tb_produto (validade,quantidade,entrega_retirar,total,categorias_id) value ("05/23",1,"entrega",2.060,2);
select * from tb_produto;

select * from tb_produto where total >50;
select * from tb_produto where total > 60 and total < 200;
select * from tb_produto where entrega_retirar like '%e%';
select * from tb_usuario where eletronicos like '%c%';

SELECT validade,quantidade,entrega_retirar,total,categorias_id from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categorias_id;

SELECT AVG(total)FROM tb_produto; -- media de total
SELECT COUNT(total )FROM tb_Produto;
select * from tb_produto where categorias_id;
select * from tb_categoria where eletronicos = '%c%';
select * from tb_categoria where cosmeticos;


