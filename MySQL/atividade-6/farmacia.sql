CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    fabricante varchar(100) not null,
    tipo varchar(100) not null,
    disponivel boolean not null,
    
    primary key (id)
);

INSERT INTO tb_categoria (fabricante, tipo, disponivel) 
VALUES ("Aché", "Genéricos", true);
INSERT INTO tb_categoria (fabricante, tipo, disponivel) 
VALUES ("Bayer", "Antialergicos", true);
INSERT INTO tb_categoria (fabricante, tipo, disponivel) 
VALUES ("EUROFARMA", "Anticoncepcionais", false);
INSERT INTO tb_categoria (fabricante, tipo, disponivel) 
VALUES ("Hypera Pharma", "Antibioticos", true);
INSERT INTO tb_categoria (fabricante, tipo, disponivel) 
VALUES ("EMS CORP", "Vacinas", false);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto (
	id bigint(5) auto_increment,
    nome varchar(100) not null,
    preco decimal(4,2) not null,
    tipo_produto varchar(100) not null,
    id_categoria bigint,

	primary key (id),
    foreign key (id_categoria) references tb_categoria(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_produto (nome, preco, tipo_produto, id_categoria) 
VALUES ("Pantoprazol", 17.00, "Comprimidos", 1);
INSERT INTO tb_produto (nome, preco, tipo_produto, id_categoria)
VALUES ("Levotiroxina", 10.55, "Comprimidos", 1);
INSERT INTO tb_produto (nome, preco, tipo_produto, id_categoria)
VALUES ("Finasterida", 2.50, "Comprimidos", 1);
INSERT INTO tb_produto (nome, preco, tipo_produto, id_categoria)
VALUES ("Predsinona", 70.00, "Comprimidos", 2);
INSERT INTO tb_produto (nome, preco, tipo_produto, id_categoria)
VALUES ("Hidroxizina", 19.99, "Comprimidos", 2);
INSERT INTO tb_produto (nome, preco, tipo_produto, id_categoria)
VALUES ("Iumi", 93.99, "Comprimidos", 3);
INSERT INTO tb_produto (nome, preco, tipo_produto, id_categoria)
VALUES ("Estreptopenicilina", 82.00, "Líquido", 4);
INSERT INTO tb_produto (nome, preco, tipo_produto, id_categoria)
VALUES ("Hepatite B", 25.00, "Injeção", 5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco >= 3.00 AND preco <= 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%B%";

SELECT * FROM tb_produto 
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id_categoria;

SELECT * FROM tb_produto INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.id_categoria 
WHERE tb_categoria.tipo = "Genéricos";
