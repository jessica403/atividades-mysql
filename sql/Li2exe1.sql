/* Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

siga exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros). */

create database db_generation_game_online;
use db_generation_game_online;

CREATE TABLE tb_classe (
    id BIGINT(1) AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    moedas DECIMAL (5) NOT NULL,
    online_offline BOOLEAN,
    PRIMARY KEY (id)
);
create table tb_personagem (
	id bigint(1) auto_increment,
    ataque decimal (6) not null,
    defesa decimal (6) not null,
    atirador boolean,
    arqueiro boolean,
    classes_id bigint not null,
    primary key (id),
    foreign key (classes_id) references tb_classe(id)
);
--  ***********populando tb_classe***************
insert into tb_classe (nome,moedas,online_offline) value ("joao",500,true);
insert into tb_classe (nome,moedas,online_offline) value ("vitor",10000,false);
insert into tb_classe (nome,moedas,online_offline) value ("yuri",3500,true);
insert into tb_classe (nome,moedas,online_offline) value ("sara",11232,false);
insert into tb_classe (nome,moedas,online_offline) value ("kelly",56321,true);
select * from tb_classe; -- aqui vejo toda tb_classe

-- *******populando a tb_personagem**********
insert into tb_personagem (ataque,defesa,atirador,arqueiro,classes_id) value (1000,500,true,false,1);
insert into tb_personagem (ataque,defesa,atirador,arqueiro,classes_id) value (500,1000,false,true,2);
insert into tb_personagem (ataque,defesa,atirador,arqueiro,classes_id) value (2000,100,true,false,3);
insert into tb_personagem (ataque,defesa,atirador,arqueiro,classes_id) value (5000,1500,false,true,4);
insert into tb_personagem (ataque,defesa,atirador,arqueiro,classes_id) value (1000,10000,true,false,5);
insert into tb_personagem (ataque,defesa,atirador,arqueiro,classes_id) value (500,700,true,true,2);
insert into tb_personagem (ataque,defesa,atirador,arqueiro,classes_id) value (900,300,false,false,5);
insert into tb_personagem (ataque,defesa,atirador,arqueiro,classes_id) value (10000,10000,true,true,1);
select * from tb_personagem;

select * from tb_personagem where ataque >2000; -- select>2000
select * from tb_personagem where defesa > 1000 and defesa < 4000; -- defesa entre 1000 e 2000.
select * from tb_classe where nome like '%i%'; -- nomes com i em comum.
SELECT ataque,defesa,atirador,arqueiro,classes_id from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classes_id; -- relaçao entre 2 table.
SELECT classes_id,arqueiro,nome from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classes_id; -- o id se repete nas 2 tb
SELECT arqueiro FROM tb_personagem where arqueiro = true; -- todos arqueiros online.


