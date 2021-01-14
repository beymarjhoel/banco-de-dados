-- Criando Banco de Dados
create database empresa;
-- Acesso ao DB
use empresa; 
-- Criando tabela funcionarios
create table funcionarios(
	id bigint(5) auto_increment, 
    nome varchar(255) not null,
    genero char not null, 
    idade int not null,
    cargo varchar(255) not null,
    salario float not null,
    primary key(id)
);
-- Busca tabela funcionarios
select * from funcionarios;
-- Adicionando dados na tabela
insert into funcionarios (nome, genero, idade, cargo, salario) value ("Marcos", 'M', 22, "Estágiario", 500);
insert into funcionarios (nome, genero, idade, cargo, salario) value ("Rai", 'M', 21, "Gestor", 2000);
insert into funcionarios (nome, genero, idade, cargo, salario) value ("Maria", 'F', 28, "Supervisor", 4000);
insert into funcionarios (nome, genero, idade, cargo, salario) value ("Geovana", 'F', 34, "Assistente", 2500);
insert into funcionarios (nome, genero, idade, cargo, salario) value ("Pedro", 'M', 45, "Consultor", 5000);
-- Buscando na tabela funcionarios dados com salario maior que 2.000
select * from funcionarios where salario > 2000;
-- Buscando na tabela funcionarios dados com salario menos que 2.000
select * from funcionarios where salario < 2000;
-- Atualização na tabela funcionarios, ajustando a coluna salario do id 2 para 3.000
update funcionarios set salario = 3000 where id = 2;