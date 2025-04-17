CREATE DATABASE exemplo;
USE exemplo;

CREATE TABLE clientes(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
email  VARCHAR(100) NOT NULL,
telefone VARCHAR(100) NOT NULL,
cidade  VARCHAR(100) NOT NULL
);

CREATE TABLE produtos(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
categoria VARCHAR(50) NOT NULL,
preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE pedidos(
id INT PRIMARY KEY AUTO_INCREMENT,
cliente_id INT,
data_pedido DATE NOT NULL,
valor DECIMAL(10,2) NOT NULL,
FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

SELECT * FROM clientes;
DESCRIBE clientes;
INSERT INTO clientes(nome,email,telefone,cidade) VALUES
("Joao","dskfopf","155156415","marica"),
("carlos","fosdopf","155156415","marica"),
("alcione","dskfosdopf","155156415","marica"),
("julia","dskfosdopf","155156415","marica"),
("jane","dskfosdopf","155156415","marica"),
("jose","dskfosdopf","155156415","marica");

SELECT * FROM produtos;
DESCRIBE produtos;

INSERT INTO produtos(nome,categoria,preco) VALUES
("Teclado","eletronicos",30.5),
("PC","eletronicos",1500.99),
("Bolsa","vestuario",5000),
("telefone","eletronicos",3200);

SELECT * FROM pedidos;
DESCRIBE pedidos;

INSERT INTO pedidos(cliente_id,data_pedido,valor) VALUES
(1,"2023-04-02",300.5),
(3,"2023-04-03",130.5),
(2,"2023-04-04",330.5),
(1,"2023-04-05",3000.5);

SELECT nome,email FROM clientes;

-- update
UPDATE clientes
SET nome = "john"
WHERE id = 3;

-- deleta o cliente de nome manuel
INSERT INTO clientes(nome,email,telefone,cidade) VALUES
("Manuel","manuel@gmail.com","2545","maricá");
DELETE FROM clientes WHERE id = 4;

-- conta pra mim a quantidade de clintes na tabela clientes
SELECT COUNT(*) AS "quantidade de clientes" FROM clientes;

-- soma o valor de todos os pedidos e da um alias para a consulta
SELECT SUM(valor) AS "Total de valor em pedidos" FROM pedidos;

-- valor max dos pedidos criados
SELECT MAX(valor) FROM pedidos;

-- valor min dos pedidos
SELECT MIN(valor) FROM pedidos;

-- Soma o valor de todos os pedidos que forem maior que 500
SELECT SUM(valor) 
FROM pedidos WHERE valor > 500;

-- media dos pedidos e cria um apelido para consulta
SELECT AVG(valor) AS "Média dos pedidos" FROM pedidos;

-- LIKE, BETWEEN, INSERT

SELECT * FROM clientes WHERE nome LIKE "J%";

-- faz uma contagem de produtos por categoria
SELECT categoria AS "Nome da categoria", COUNT(*) AS "Contagem"
FROM produtos
GROUP BY categoria;

--  5 tabelas relacionadas entre si
-- 40 questaoes 0.2 cada
-- 10 dados em cada tabela
-- create database
-- drop database
-- create table
-- drop table
-- select, where, funcao(max,min,count,avg,sum)
-- update
-- delete
-- between
-- in
-- like
-- alias
-- groupby
-- alter table(modify, add, remove)
-- inner join
-- right join
-- left join

