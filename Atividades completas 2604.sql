CREATE DATABASE db_GenRPG;
USE db_GenRPG;

CREATE TABLE tb_class(
id BIGINT AUTO_INCREMENT,
class VARCHAR(255),
element VARCHAR(255),

primary key (id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nameCharacter VARCHAR (255),
weapon VARCHAR (255),
attackpower int,
defense int,
class_id BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (class_id) REFERENCES tb_class (id)
);


INSERT INTO tb_class (class, element)
VALUES
("Paladin", "Light"),
("Necromancer", "Darkness"),
("Fire Mage", "fire"),
("Water Mage", "water"),
("Rouge", "poison"),
("Healer", "nature")
;

INSERT INTO tb_personagens (nameCharacter, weapon, attackpower, defense, class_id)
VALUES
("Yan Kademony", "Sword", 3544, 2109, 1),
("Bellatrix", "Staff", 1785, 1999, 2),
("Cesarious", "Staff", 980, 1547, 6),
("Ang", "dagger", 1353, 1800, 5),
("Mandrik", "sword", 2110, 785, 3),
("Frederik", "axe", 1846, 1255, 1),
("Gandalf", "staff", 2999, 2999, 6),
("Kirito", "sword", 1234, 1234, 4);

select * from tb_personagens inner join tb_class on  tb_class.id = tb_personagens.class_id;

select * from tb_personagens inner join tb_class on  tb_class.id = tb_personagens.class_id WHERE attackpower > 2000;
select * from tb_personagens inner join tb_class on  tb_class.id = tb_personagens.class_id WHERE defense BETWEEN 1000 AND 2000; 
-- Seleciona tudo de tb_produtos onde o 'nome' contenha a letra 'c'
SELECT * FROM tb_produtos WHERE nome LIKE '%c%';
select * from tb_personagens inner join tb_class on  tb_class.id = tb_personagens.class_id WHERE class = "Paladin";

-------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
doce BOOLEAN,
salgada BOOLEAN,
vegana BOOLEAN,
vegetariana BOOLEAN,

PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR (255),
preco FLOAT (5,2),
borda_recheada VARCHAR (255),
cobertura_adicional VARCHAR (255),
tamanho CHAR (10),
categoria_id BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT tb_categorias (doce, salgada, vegana, vegetariana)
VALUES 
(false, true, false, false),
(false, true, true, true),
(false, true, false, true),
(true, false, false, false),
(true, false, true, true),
(true, false, false, true)
;
Select * from tb_categorias;

INSERT tb_pizzas (sabor, preco, borda_recheada, cobertura_adicional, tamanho, categoria_id)
VALUES
("chocolate", 65.00, "doce de leite", "morango", "M", 4),
("calabreza", 47.00, "catupiry", "não tem", "M", 1),
("brocolis", 62.00, "não tem", "alho poró", "G", 2),
("portuguesa", 78.00, "catupiry", "catupiry", "G", 1),
("banana", 37.00, "não tem", "granola", "P", 5),
("romeo e julieta", 55.00, "chocolate", "não tem", "M", 6),
("quatro queijos", 75.00, "requeijão", "requeijão", "G", 3),
("marguerita veg", 57.00, "não tem", "não tem", "M", 5)
;

SELECT * FROM tb_pizzas;


select * from tb_pizzas inner join tb_categorias on  tb_categorias.id = tb_pizzas.categoria_id;
select * from tb_pizzas inner join tb_categorias on  tb_categorias.id = tb_pizzas.categoria_id WHERE preco > 45.00;
select * from tb_pizzas inner join tb_categorias on  tb_categorias.id = tb_pizzas.categoria_id WHERE preco BETWEEN 50.00 AND 100.00;
select * from tb_pizzas inner join tb_categorias on  tb_categorias.id = tb_pizzas.categoria_id WHERE sabor LIKE '%M%';
select * from tb_pizzas inner join tb_categorias on  tb_categorias.id = tb_pizzas.categoria_id WHERE doce = true; 

/*
tb_pizzas.id, sabor, preco, borda_recheada, cobertura_adicional, tamanho, categoria_id, doce, salgada, vegana, vegetariana 
1 salgada not veg 
2 salgada veg
3 salgada vegetariana

4 doce not veg
5 doce veg
6 doce vegetariana
*/

-------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo_de_produto VARCHAR (255),
setor_da_loja VARCHAR (255),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco FLOAT (7,2),
quantidade INT,
possui_estoque CHAR (1),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT tb_categorias (tipo_de_produto, setor_da_loja)
VALUES
("remedio controlado", "remédios"),
("Banho", "Higiene Pessoal"),
("Maternidade", "infantil"),
("Doces", "Balcão"),
("Perfumes", "Higiene Pessoal")
;

SELECT * FROM tb_categorias;

INSERT tb_produtos (nome, preco, quantidade, possui_estoque, categoria_id)
VALUES
("Clonazepam", 55.00, 3, "s", 1),
("Shampoo", 33.00, 1, "s", 2),
("212 Carolina Herrera", 425.00, 4, "s", 5),
("fralda", 45.00, 0, "n", 3),
("melzinho", 3.00, 7, "s", 4),
("loratadina", 67.00, 6, "s", 1),
("Dove softcare", 7.00, 0, "n", 2),
("lencinho umidecido", 4.50, 9, "s", 3);

SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id;
SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id WHERE preco > 50.00;
SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id WHERE preco BETWEEN 5.00 and 60.00;
SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id WHERE nome LIKE '%c%';
SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.categoria_id WHERE setor_da_loja = "Higiene Pessoal";
-------------------------------------------------------------------------------------------------------------------------------------------------------------
create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Bovino",true),
("Suino",true),
("Aves",true),
("pertence feijoada",true),
("imbutidos",true),
("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco float  (7,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values 
("ASA", 80.00, 30, 3),
("Picanha", 47.00, 30, 1),
("coxa de frango", 95.00, 30, 3),
("Bacon", 110.00, 30, 1),
("hamburguer", 47.00, 30, 5),
("Cupim", 180.00, 30, 1),
("Peito de frango", 25.00, 30, 3),
("Orelha de porco", 47.00, 30, 4),
("Salame", 180.00, 30, 5),
("medalhao", 165.00,30, 3),
("mocoto", 210.00, 30, 2),
("chuleta", 110.00, 30, 1),
("acendedor de churrasqueira", 77.00, 30, 6);

select * from tb_produtos;

select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id WHERE preco > 50.00;
select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id WHERE preco BETWEEN 50.00 AND 100.00;
select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id WHERE nome LIKE '%c%';
select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id WHERE descricao = "Bovino"; 

-------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
ambiente VARCHAR(255),
setor VARCHAR (255),

PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR (255),
preco FLOAT (7,2), 
cor VARCHAR (255),
qtEstoque INT,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT tb_categorias (ambiente, setor)
VALUES 
("banheiro", "construcao"),
("casa", "construcao"),
("casa","eletrica"),
("casa", "hidraulica"),
("casa", "aparencia");

SELECT * FROM tb_categorias;

INSERT tb_produtos (produto, preco, cor, qtEstoque, categoria_id)
VALUES
("Tinta", 98.00, "purple", 7, 5),
("Privada TOTO", 4200.00, "black", 2, 1),
("Fio de cobre", 200.00, "orange", 4, 3),
("Cano PVC", 86.00, "branco", 4, 4),
("Tinta", 99.00, "Green", 12, 5),
("Tijolos", 4.99, "orange", 567, 2),
("Cadeado", 37.99, "gold", 9, 2),
("Cimento", 140.00, "grey", 8, 2);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE preco > 100.00;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE nome LIKE '%c%';
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE setor = "construcao";

-------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
acessibilidade VARCHAR (255),
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
preco FLOAT (7,2), 
plataforma VARCHAR (255),
quantidadeHoras BigInt,
area VARCHAR (255),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT tb_categorias (tipo, acessibilidade)
VALUES 
("online", "gratuito"),
("online", "pago"),
("presencial","gratuito"),
("presencial", "pago"),
("hibrido", "pago");

SELECT * FROM tb_categorias;

INSERT tb_cursos (nome, preco, plataforma, quantidadeHoras, area, categoria_id)
VALUES 
("GenerationBrasil", 00, "generation", 447, "desenvolvimento web", 1),
("Curso de Inglês para Tecnologia da Informação", 39.99, "udemy", 9, "linguagens" , 2),
("Java COMPLETO", 27.90, "udemy", 51, "desenvolvimento web", 2),
("100 Days of Code: Python", 62.00, "udemy", 60, "programacao", 2),
("IFSP", 00, "ifsp", 1045, "informatica", 3),
("Marugoto", 400.00, "aliança cultural", 88, "linguagens", 4),
("engenharia de software", 600.00, "FIAP", 3200, "fullstack", 5),
("git e github", 00, "alura", 6, "programacao", 1);

SELECT * FROM tb_cursos;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id WHERE preco > 500;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id WHERE preco BETWEEN 500 AND 1000;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id WHERE nome LIKE '%J%';
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id WHERE plataforma = "generation";