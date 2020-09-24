use exerc_fixacao;

create table departamentos(
codigo_depto int not null,
nome varchar(30) not null,
localizacao varchar(30) not null,
primary key(codigo_depto));

create table funcionarios(
codigo_func int not null,
codigo_depto int not null,
primeiro_nome varchar(20) not null,
segundo_nome varchar(20) not null,
ultimo_nome varchar(20) null,
data_nasc date not null,
cpf varchar(14) not null unique,
rg varchar(13) not null,
endereco varchar(60) not null,
cep varchar(10) not null,
cidade varchar(30) default 'Itapira' not null,
fone_res varchar(14) not null,
fone_cel varchar(15) not null,
funcao varchar(30) not null,
salario decimal(8.2) not null,
primary key(codigo_func),
foreign key(codigo_depto) references departamentos(codigo_depto));


-- A)
select avg(salario) from funcionarios;

-- B)
select f.primeiro_nome, f.funcao, d.codigo_depto  from funcionarios f, departamentos d where
f.codigo_func = d.codigo_depto
group by d.nome;

-- C)
select f.primeiro_nome, f.endereco, f.rg, f.cpf from funcionarios f, departamentos d where
f.codigo_func = d.codigo_depto
order by d.nome = "TI";

-- D
select f.primeiro_nome, f.salario from funcionarios f order by
f.data_nasc >= "1980-01-01" <= "1990-12-17"; 

