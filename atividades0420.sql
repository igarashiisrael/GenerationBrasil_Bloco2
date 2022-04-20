-- ATIVIDADE 1
-- Criar database
CREATE DATABASE db_rh;
-- Selecionar database
USE db_rh;
-- Criar tabela
CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT(3),
setor VARCHAR(255),
salario FLOAT (9,2),
-- Declara chave primária
PRIMARY KEY (id)
);
-- Inserir valores na tablea
INSERT INTO tb_colaboradores (nome, idade, setor, salario)
VALUES ("Daniel", 29, "varejo", 2500.00),
("Israel", 25, "Web Development", 4500.00),
("Michael", 25, "Tecnologia da Informação", 3000.00),
("Fernando", 30, "Logística", 2100.00),
("Gustavo", 19, "Desenvolvimento", 4200.00);

-- Exibe as informações onde o salário é maior que 2000.00
SELECT * FROM tb_colaboradores WHERE salario >= 2000.00;

-- Exibe as informações onde o salário é menor que 2000.00
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

-- Atualiza o atributo salário na linha de id 2
UPDATE tb_colaboradores set salario = 1500.00 where id = 2;

---------------------------------------------------------------------------------------------------------

-- ATIVIDADE 2
-- cria a database
CREATE DATABASE db_wongwong;
-- seleciona e usa a database
USE db_wongwong;

-- cria a tabela
CREATE TABLE tb_products(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
SKU VARCHAR (255),
quantidade BIGINT,
valor FLOAT (9,2),

PRIMARY KEY (id)
); -- finaliza criação da tabela

-- insere dados para preencher a tabela
INSERT INTO tb_products (nome, SKU, quantidade, valor)
VALUES ("Iphone 12 ProMax", "SKU: AUYTGSUAYSG-121313", 3, 9000.00),
("RTX 1660 SUPER", "SKU: PAOSKA-45464", 4, 1700.00),
("XVAPE ARIA", "SKU: QOWIUJQW-587687", 2, 650.00),
("BlackWidow Elite", "SKU: QWOIJQ-68786", 4, 1800.00),
("Basilisk Mouse", "SKU: QOPWIQPOWI-2486374", 1, 900.00),
("Echo Dot", "SKU: PQOIWPOQ-58787", 3, 250.00),
("212 MEN", "SKU: QWUIYQW-8192719", 7, 450.00),
("PS4 1TB", "SKU: OPIOPI-19821", 0, 4500.00);

-- seleciona e mostra todos os itens dentro da tabela
SELECT * FROM tb_products;
-- seleciona e mostra todos os itens dentro da tabela que tenham valor igual ou acima de 500
SELECT * FROM tb_products WHERE valor >= 500;
-- seleciona e mostra todos os itens dentro da tabela que tenham valor igual ou abaixo de 500
SELECT * FROM tb_products WHERE valor < 500;

-- atualiza o valor de "quantidade" dentro da tabela, na linha onde o id é igual a 8
UPDATE tb_products SET quantidade = 3 WHERE id = 8;

-- seleciona e mostra todos os itens dentro da tabela
SELECT * FROM tb_products;

---------------------------------------------------------------------------------------------------------

-- ATIVIDADE 3
-- Cria a database
CREATE DATABASE db_escolinha;
-- Seleciona e usa a database
USE db_escolinha;

-- cria a tabela
CREATE TABLE tb_alumnis(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
idade INT (3),
turma VARCHAR (255),
nota FLOAT (9,2),

PRIMARY KEY (id)
);

-- insere dados para preencher a tabela
INSERT INTO tb_alumnis (nome, idade, turma, nota)
VALUES ("Israel", 25, "Turma 50", 9.78),
("Maiar", 19, "Turma 50", 6.55),
("Fernando", 24, "Turma 50", 8.00),
("Michael", 19, "Turma 50", 8.75),
("Gustavo", 22, "Turma 50", 9.5),
("Priscila", 28, "Turma 50", 7.2),
("Justin", 28, "Turma 50", 10.0),
("Charles", 26, "Turma 50", 4.5);

-- seleciona e mostra todos os itens dentro da tabela que possuam nota maior ou igual a 7.0
Select * FROM tb_alumnis WHERE nota >= 7.0;
-- seleciona e mostra todos os itens dentro da tabela que possuam nota menor que 7.0
Select * FROM tb_alumnis WHERE nota < 7.0;

-- atualiza o valor da coluna nota dentro da tabela, na linha onde id seja = 1
UPDATE tb_alumnis SET nota = 2.45 WHERE id = 1;

-- seleciona e mostra todos os itens dentro da tabela
SELECT * FROM tb_alumnis;

---------------------------------------------------------------------------------------
-- comando para burlar o safe update:   SET SQL_SAFE_UPDATES = 0;
-- comando para deletar algo da tabela: DELETE FROM tb_colaboradores;