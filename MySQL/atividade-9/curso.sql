CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
	id bigint(5) auto_increment,
    area varchar(100) not null,
    nome_professor varchar(100) not null,
    quantidade_aulas int not null,
    primary key (id)
);

INSERT INTO tb_categoria (aula, nome_professor, quantidade_aulas)
VALUES ("Lógica", "Fábio", 100);
INSERT INTO tb_categoria (aula, nome_professor, quantidade_aulas)
VALUES ("Java", "Ednilson", 100);
INSERT INTO tb_categoria (aula, nome_professor, quantidade_aulas)
VALUES ("Banco de Dados", "Lucas", 200);
INSERT INTO tb_categoria (aula, nome_professor, quantidade_aulas)
VALUES ("Redes", "Ângelo", 200);
INSERT INTO tb_categoria (aula, nome_professor, quantidade_aulas)
VALUES ("Back-End", "Kátia", 250);
INSERT INTO tb_categoria (aula, nome_professor, quantidade_aulas)
VALUES ("Front-End", "Augusto", 300);

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso (
	id bigint(5) auto_increment,
    nome_aula varchar(100) not null,
    duracao_aula_horas int not null,
    inicio_aula_horas time not null,
    termina_aula_horas time not null,
    quantidade_atividade int not null,
    preco decimal(4,2) not null,
    id_categoria bigint,
    primary key (id),
    foreign key (id_categoria) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_curso;

INSERT INTO tb_curso (nome_aula, duracao_aula_horas, inicio_aula_horas, termina_aula_horas, quantidade_atividade, preco, id_categoria)
VALUES ("Introdução a algoritmos", 4, "12:00:00", "16:00", 2, 15.00, 1);
INSERT INTO tb_curso (nome_aula, duracao_aula_horas, inicio_aula_horas, termina_aula_horas, quantidade_atividade, preco, id_categoria)
VALUES ("Construção de algoritmos", 2, "8:00:00", "10:00:00", 6, 50.00, 1);
INSERT INTO tb_curso (nome_aula, duracao_aula_horas, inicio_aula_horas, termina_aula_horas, quantidade_atividade, preco, id_categoria)
VALUES ("Laços condicionais", 3, "15:00:00", "18:00:00", 4, 55.00, 1);
INSERT INTO tb_curso (nome_aula, duracao_aula_horas, inicio_aula_horas, termina_aula_horas, quantidade_atividade, preco, id_categoria)
VALUES ("Introdução a Java", 5, "14:00:00", "19:00:00", 8, 65.00, 2);
INSERT INTO tb_curso (nome_aula, duracao_aula_horas, inicio_aula_horas, termina_aula_horas, quantidade_atividade, preco, id_categoria)
VALUES ("Introdução a MySQL", 1, "22:00:00", "23:00:00", 10, 80.00, 3);
INSERT INTO tb_curso (nome_aula, duracao_aula_horas, inicio_aula_horas, termina_aula_horas, quantidade_atividade, preco, id_categoria)
VALUES ("Introdução a Redes", 3, "7:00:00", "10:00:00", 9, 20.00, 4);
INSERT INTO tb_curso (nome_aula, duracao_aula_horas, inicio_aula_horas, termina_aula_horas, quantidade_atividade, preco, id_categoria)
VALUES ("Back-end e suas funcionalidades", 2, "11:00:00", "13:00:00", 22, 80.00, 5);
INSERT INTO tb_curso (nome_aula, duracao_aula_horas, inicio_aula_horas, termina_aula_horas, quantidade_atividade, preco, id_categoria)
VALUES ("Front-end e suas funcionalidades", 3, "9:00:00", "12:00:00", 11, 45.00, 6);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE preco > 60.00;

SELECT * FROM tb_curso WHERE preco >= 3.00 AND preco <= 60.00;

SELECT * FROM tb_curso WHERE nome_aula LIKE "%j";

SELECT * FROM tb_curso 
INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.id_categoria;

SELECT * FROM tb_curso
INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.id_categoria
WHERE tb_categoria.aula = "Java";