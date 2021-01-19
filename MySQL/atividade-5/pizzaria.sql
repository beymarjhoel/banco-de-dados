CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    tamanho varchar(100) not null,
    salgada boolean not null,
    formato varchar(100) not null,
    combo_refri boolean not null,
    promocao boolean not null,
	
    primary key (id) 
);
INSERT INTO tb_categoria (tamanho, salgada, formato, combo_refri, promocao) 
VALUES ("Brotinho", true, "Al Taglio", false, false);
INSERT INTO tb_categoria (tamanho, salgada, formato, combo_refri, promocao) 
VALUES ("Broto", true, "Redonda", true, true);
INSERT INTO tb_categoria (tamanho, salgada, formato, combo_refri, promocao) 
VALUES ("Média", false, "Quadrada", false, false);
INSERT INTO tb_categoria (tamanho, salgada, formato, combo_refri, promocao) 
VALUES ("Grande", false, "Triângulo", true, true);
INSERT INTO tb_categoria (tamanho, salgada, formato, combo_refri, promocao) 
VALUES ("Família", true, "Retângulo", true, false);

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza (
	id bigint(5) auto_increment,
    sabor varchar(100) not null,
    preco decimal(4,2) not null,
    massa varchar(100) not null,
    borda_recheada boolean not null,
    recheio_extra boolean not null,
    id_categoria bigint(5),
    
    primary key (id),
    foreign key (id_categoria) references tb_categoria (id)
);

INSERT INTO tb_pizza (sabor, preco, massa, borda_recheada, recheio_extra, id_categoria)
VALUES ("Calabressa", 41.00, "Fina", true, false, 1);
INSERT INTO tb_pizza (sabor, preco, massa, borda_recheada, recheio_extra, id_categoria)
VALUES ("Mussarela", 43.00, "Tradicional", true, true, 2);
INSERT INTO tb_pizza (sabor, preco, massa, borda_recheada, recheio_extra, id_categoria)
VALUES ("Portuguesa", 78.00, "Grossa", false, true, 5);
INSERT INTO tb_pizza (sabor, preco, massa, borda_recheada, recheio_extra, id_categoria)
VALUES ("Napolitana", 88.00, "Fina", true, false, 5);
INSERT INTO tb_pizza (sabor, preco, massa, borda_recheada, recheio_extra, id_categoria)
VALUES ("Toscana", 42.00, "Tradicional", false, false, 2);
INSERT INTO tb_pizza (sabor, preco, massa, borda_recheada, recheio_extra, id_categoria)
VALUES ("Chocolate", 49.00, "Grossa", true, false, 3);
INSERT INTO tb_pizza (sabor, preco, massa, borda_recheada, recheio_extra, id_categoria)
VALUES ("Prestígio", 52.00, "Fina", false, true, 4);
INSERT INTO tb_pizza (sabor, preco, massa, borda_recheada, recheio_extra, id_categoria)
VALUES ("Brigadeiro", 53.00, "Grossa", true, true, 4);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE preco > 45.00;

SELECT * FROM tb_pizza WHERE preco >= 29.00 AND preco <= 60;

SELECT * FROM tb_pizza WHERE sabor LIKE "c%";

SELECT * FROM tb_pizza 
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id;

SELECT * FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id
WHERE tb_categoria.promocao = true;
