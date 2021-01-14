-- Criando Banco de Dados
create database escola;
-- Acesso ao Banco de Dados
use escola;
-- Criando tabela alunos com seus atributos
create table alunos(
	ra bigint(5) auto_increment,
	nome varchar(255) not null,
    nota float not null,
    idade int not null,
    serie int not null,
    primary key (ra)
);
-- Busca tabela alunos
select * from alunos;
-- Adicionando dados na tabela
insert into alunos (nome, nota, idade, serie) values ("Israel", 8, 10, 5);
insert into alunos (nome, nota, idade, serie) values ("Gustavo", 1, 18, 8);
insert into alunos (nome, nota, idade, serie) values ("Marcos", 5, 15, 6);
insert into alunos (nome, nota, idade, serie) values ("Juliana", 9, 16, 6);
insert into alunos (nome, nota, idade, serie) values ("Joana", 10, 15, 5);
insert into alunos (nome, nota, idade, serie) values ("Matheus", 3, 14, 5);
insert into alunos (nome, nota, idade, serie) values ("Patrick", 4, 17, 8);
insert into alunos (nome, nota, idade, serie) values ("Leonardo", 6, 15, 6);
-- Buscando na tabela alunos, alunos com nota maior que 7
select * from alunos where nota > 7;
-- Buscando na tabela alunos, alunos com nota menor que 7
select * from alunos where nota < 7;
-- Atualização na tabela alunos, mudando nota do aluno com ra 1, de nota 8 para nota 3 
update alunos set nota = 3 where ra = 1;