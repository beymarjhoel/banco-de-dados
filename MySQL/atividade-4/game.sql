CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id bigint(5) auto_increment,
    tipo varchar(100),
    magia varchar(100),
    arma varchar(100),
    primary key(id)    
);

INSERT INTO tb_classe(tipo, magia, arma) VALUES ("Piromante", "Thunder", "Lâmina");
INSERT INTO tb_classe(tipo, magia, arma) VALUES ("Feitiçeiro", "Fireball", "Cajado");
INSERT INTO tb_classe(tipo, magia, arma) VALUES ("Guerreiro", "Cataclisma", "Machado");
INSERT INTO tb_classe(tipo, magia, arma) VALUES ("Cavaleiro", "Leviathan", "Espada");
INSERT INTO tb_classe(tipo, magia, arma) VALUES ("Clérigo", "Protection", "Livro");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
	id bigint(5) auto_increment,
    nome varchar(100) not null,
    ataque bigint(5) not null,
    defesa bigint(5) not null,
    sorte bigint(5) not null,
    energia bigint(5) not null,
    nivel int not null,
    vivo boolean not null,
    id_classe bigint(5),
    
    primary key(id),
    foreign key (id_classe) references tb_classe(id)
);

INSERT INTO tb_personagem(nome, ataque, defesa, sorte, energia, nivel, vivo, id_classe)
VALUES ("Athena", 1000, 8000, 50, 50, 2, true, 2);
INSERT INTO tb_personagem(nome, ataque, defesa, sorte, energia, nivel, vivo, id_classe) 
VALUES ("Mario", 4000, 2300, 100, 60, 4, false, 3);
INSERT INTO tb_personagem(nome, ataque, defesa, sorte, energia, nivel, vivo, id_classe) 
VALUES ("Link", 5000, 3000, 200, 300, 6, true, 4);
INSERT INTO tb_personagem(nome, ataque, defesa, sorte, energia, nivel, vivo, id_classe) 
VALUES ("Lara", 5500, 5400, 250, 380, 8, true, 4);
INSERT INTO tb_personagem(nome, ataque, defesa, sorte, energia, nivel, vivo, id_classe) 
VALUES ("Wander", 6000, 7600, 100, 100, 3, false, 4);
INSERT INTO tb_personagem(nome, ataque, defesa, sorte, energia, nivel, vivo, id_classe) 
VALUES ("Sephiroth", 8000, 5000, 120, 400, 10, true, 1);
INSERT INTO tb_personagem(nome, ataque, defesa, sorte, energia, nivel, vivo, id_classe) 
VALUES ("Chun-li", 8000, 3000, 200, 500, 12, true, 2);
INSERT INTO tb_personagem(nome, ataque, defesa, sorte, energia, nivel, vivo, id_classe) 
VALUES ("Leon", 1000, 1000, 50, 250, 5, false, 5);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "c%";

SELECT * FROM tb_personagem 
INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id_classe;

SELECT * FROM tb_personagem 
INNER JOIN tb_classe on tb_classe.id = tb_personagem.id_classe 
WHERE tb_classe.tipo LIKE "%Cavaleiro%";
