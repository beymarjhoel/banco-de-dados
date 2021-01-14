-- Criar um Banco de Dados
create database db_servico_rh;

-- Acesso ao DB
use db_servico_rh;

-- Criar uma tabela
create table tb_funcionarios(
	id bigint(5) auto_increment,
    nome varchar(255) not null,
    salario float not null,
    idade int not null,
    primary key(id)
);

-- Busca tabela funcionário
select * from tb_funcionarios; 

-- Inserção de dados na tabela
insert into tb_funcionarios (nome, salario, idade) value ("Lais", 10000, 00);
insert into tb_funcionarios (nome, salario, idade) value ("Ju", 12000, 00);
insert into tb_funcionarios (nome, salario, idade) value ("Ewerton", 12000, 00);
insert into tb_funcionarios (nome, salario, idade) value ("Geandro", 12000, 00);

-- Atualizar dados da tabela 
update tb_funcionarios set salario = 12000 where id = 1;

-- Deletar dados da tabela
delete from tb_funcionarios where id = 6;

-- Adicionar nova coluna na tabela
alter table tb_funcionarios 
add descricao varchar(255);

-- Adicionando nova coluna do lado de primeiro_nome
alter table tb_funcionarios add column cargo varchar(255) after primeiro_nome;

-- Alterando o nome da coluna nome para primeiro_nome
alter table tb_funcionarios change nome primeiro_nome varchar(255); 

-- Deletar uma coluna
alter table tb_funcionarios
drop column descricao;