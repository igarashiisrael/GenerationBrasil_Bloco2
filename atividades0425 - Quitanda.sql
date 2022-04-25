-- Cria o banco de dados
CREATE DATABASE db_quitanda;
-- Seleciona e usa o banco de dados
USE db_quitanda;

-- Cria a tabela tb_categoria e declara os seus atributos
CREATE TABLE tb_categoria (
    id BIGINT AUTO_INCREMENT NOT NULL,
    descricao varchar(255) not null,
    ativo boolean not null,
    PRIMARY KEY (id)
);
-- Insere os valores na tabela tb_categoria
INSERT tb_categoria (descricao, ativo) 
VALUES 
("Frutas", true),
("Verduras", true),
("Hortaliças", true),
("Legumes", true);

-- Seleciona e mostra a tb_categoria
SELECT * FROM tb_categoria;

-- Cria a tabela tb_produtos e declara seus atributos
CREATE TABLE tb_produtos(
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Insere os valores na tabela tb_produtos
INSERT tb_produtos (nome, preco, qtProduto, categoria_id) 
values 
("Banana", 6.00, 97, 1),
("Couve flor", 7.45, 85, 3),
("Brocolis", 6.82, 1, 3),
("Couve", 4.57, 2, 2),
("Mandioca", 7.99, 150, 4),
("Cenoura", 3.99, 51, 4),
("Abacaxi", 14.99, 17, 1);

-- Seleciona e mostra tudo em tb_produtos
SELECT * FROM tb_produtos;
-- Seleciona a coluna 'nome' na tb_produtos
SELECT nome FROM tb_produtos;
-- Seleciona a coluna 'descricao' tb_produtos
SELECT descricao FROM tb_categoria;
-- Seleciona tudo de tb_produtos onde o valor de qtProduto seja maior que 50
SELECT * FROM tb_produtos WHERE qtProduto > 50;
-- Seleciona tudo de tb_produtos onde o 'nome' contenha a letra 'a'
SELECT * FROM tb_produtos WHERE nome LIKE '%a%';
-- Seleciona tudo de tb_produtos junto com tb_categoria sendo tb_categoria.id igual à tb_produtos.categoria_id
select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;

-- atualiza o valor da coluna nota dentro da tabela, na linha onde id seja = 1
UPDATE tb_produtos SET preco = 99.80 WHERE id = 3;

-- Seleciona tudo de tb_produtos junto com tb_categoria sendo tb_categoria.id igual à tb_produtos.categoria_id
select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
