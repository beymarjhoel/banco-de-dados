CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    tipo varchar(100) not null,
    disponivel boolean not null,
    marca varchar(100) not null,
    primary key (id)
);

INSERT INTO tb_categoria (tipo, disponivel, marca) 
VALUES ("Aves", true, "Perdigão");
INSERT INTO tb_categoria (tipo, disponivel, marca)
VALUES ("Bovinas", true, "Vilheto");
INSERT INTO tb_categoria (tipo, disponivel, marca)
VALUES ("Frutos do mar", true, "DellMare");
INSERT INTO tb_categoria (tipo, disponivel, marca)
VALUES ("Suína", true, "Sadia");
INSERT INTO tb_categoria (tipo, disponivel, marca)
VALUES ("Frios", false, "Aurora");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto (
	id bigint(5) auto_increment,
    nome varchar(255) not null,
    preco decimal(4,2) not null,
    peso varchar(10) not null,
    quantidade int not null,
    origem varchar(100) not null,
    validade_meses int not null,
	id_categoria bigint,
    
    primary key (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, preco, peso, quantidade, origem, validade_meses, id_categoria)
VALUES ("Coração de Frango", 21.95, "1kg", 20, "Frango", 10, 1);
INSERT INTO tb_produto (nome, preco, peso, quantidade, origem, validade_meses, id_categoria)
VALUES ("Coxinha da Asa", 16.90, "1kg", 90, "Frango", 6, 1);
INSERT INTO tb_produto (nome, preco, peso, quantidade, origem, validade_meses, id_categoria)
VALUES ("Frango Inteiro", 20.00, "2kg", 40, "Frango", 10, 1);
INSERT INTO tb_produto (nome, preco, peso, quantidade, origem, validade_meses, id_categoria)
VALUES ("Carne Bovina", 90.00, "1kg", 85, "Boi", 12, 2);
INSERT INTO tb_produto (nome, preco, peso, quantidade, origem, validade_meses, id_categoria)
VALUES ("Traseiro", 45.00, "1kg", 90, "Boi", 6, 2);
INSERT INTO tb_produto (nome, preco, peso, quantidade, origem, validade_meses, id_categoria)
VALUES ("Camarão Cozido", 65.00, "400g", 50, "Camarão", 3, 3);
INSERT INTO tb_produto (nome, preco, peso, quantidade, origem, validade_meses, id_categoria)
VALUES ("Pernil", 30.00, "5kg", 30, "Porco", 12, 4);
INSERT INTO tb_produto (nome, preco, peso, quantidade, origem, validade_meses, id_categoria)
VALUES ("Mussarela", 2.50, "1kg", 100, "Queijo", 2, 5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco >= 3.00 AND preco <= 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id_categoria;

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id_categoria
WHERE tb_categoria.tipo = "Aves";