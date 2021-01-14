-- Criando Banco de Dados
create database ecommerce;
-- Acesso ao Banco de Dados
use ecommerce;
-- Criando tabela produtos com seus atributos
create table produtos ( 
	id bigint(5) auto_increment,
    nome varchar(255) not null,
    preco float not null,
    disponivel boolean not null,
    marca varchar(255) not null,
    primary key (id)
);
-- Adicionando dados na tabela produtos
INSERT INTO produtos (nome, preco, disponivel, marca) VALUES ("PS5", 5000, true, "Sony");
INSERT INTO produtos (nome, preco, disponivel, marca) VALUES ("Xbox Series X", 8000, true, "Microsoft");	
INSERT INTO produtos (nome, preco, disponivel, marca) VALUES ("Nintendo Switch", 3000, false, "Nintendo");
INSERT INTO produtos (nome, preco, disponivel, marca) VALUES ("PS2", 400, true, "Sony");
INSERT INTO produtos (nome, preco, disponivel, marca) VALUES ("DreamCast", 4000, false, "Sega");
INSERT INTO produtos (nome, preco, disponivel, marca) VALUES ("PS3", 1.200, true, "Sony");
INSERT INTO produtos (nome, preco, disponivel, marca) VALUES ("Xbox 360", 1.400, true, "Microsoft");
INSERT INTO produtos (nome, preco, disponivel, marca) VALUES ("Nintendo Wii", 500, true, "Nintendo");
-- Busca tabela produtos
select * from produtos;
-- Buscando dados na tabela produtos com preço maior que 500
select * from produtos where preco > 500;
-- Buscando dados na tabela produtos com preço menor que 500
select * from produtos where preco < 500;
-- Atualizando tabela produtos no id 4, ajustando valor disponivel para falso
update produtos set disponivel = false where id = 4;