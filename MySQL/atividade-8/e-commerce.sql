CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    tipo varchar(100) not null,
    marca varchar(100) not null,
    disponivel boolean not null,
    primary key (id)
);

INSERT INTO tb_categoria (tipo, marca, disponivel) 
VALUES ("TV", "Samsung", true);
INSERT INTO tb_categoria (tipo, marca, disponivel) 
VALUES ("Video Game", "Sony", true);
INSERT INTO tb_categoria (tipo, marca, disponivel) 
VALUES ("Smartphone", "Xiaomi", true);
INSERT INTO tb_categoria (tipo, marca, disponivel) 
VALUES ("Smartwatch", "Apple", true);
INSERT INTO tb_categoria (tipo, marca, disponivel) 
VALUES ("Eletrodoméstico", "Electrolux", true);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto (
	id bigint(5) auto_increment,
    nome varchar(100) not null,
    preco decimal(10,2) not null, 
	quantidade int not null,
    cor varchar(100) not null,
    id_categoria bigint,
    classificacao_estrelas int not null,
    primary key (id),
    foreign key(id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto (nome, preco, quantidade, cor, id_categoria, classificacao_estrelas)
VALUES ("Smart TV UN55TU8000GXZD", 2899.00, 55, "Preto", 1, 4);
INSERT INTO tb_produto (nome, preco, quantidade, cor, id_categoria, classificacao_estrelas)
VALUES ("Smart TV TU7020", 3299.00, 200, "Cinza", 1, 4);
INSERT INTO tb_produto (nome, preco, quantidade, cor, id_categoria, classificacao_estrelas)
VALUES ("Smart TV T5300", 1899.00, 300, "Branco", 1, 4);
INSERT INTO tb_produto (nome, preco, quantidade, cor, id_categoria, classificacao_estrelas)
VALUES ("Playstation 5", 4589.00, 200, "Preto", 2, 4);
INSERT INTO tb_produto (nome, preco, quantidade, cor, id_categoria, classificacao_estrelas)
VALUES ("Redmi Note 9S", 1560.00, 400, "Glacier White", 3, 4);
INSERT INTO tb_produto (nome, preco, quantidade, cor, id_categoria, classificacao_estrelas)
VALUES ("Poco X3", 1963.00, 50, "Shadow Grey", 3, 5);
INSERT INTO tb_produto (nome, preco, quantidade, cor, id_categoria, classificacao_estrelas)
VALUES ("Apple Watch Serie 6", 50.00, 500, "Space Grey", 4, 5);
INSERT INTO tb_produto (nome, preco, quantidade, cor, id_categoria, classificacao_estrelas)
VALUES ("Geladeira Freezer 474L", 55.00, 700, "Platinum", 5, 5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco >= 3.00 and preco <= 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c";

SELECT * FROM tb_produto 
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id_categoria;

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id_categoria
WHERE tb_categoria.tipo = "Video Game";
