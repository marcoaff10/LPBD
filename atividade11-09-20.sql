-- Exercicio 1
create database exercicioInnerJoin;
use exercicioInnerJoin;

-- Exercicio 2
create table veiculo (
placa varchar(10),
modelo_codMod int,
cliente_cpf int,
cor varchar(20),
primary key(placa),
foreign key(modelo_codMod) references modelo(codMod),
foreign key(cliente_cpf) references cliente(cpf));

create table cliente (
cpf int,
nome varchar(60),
dtNasc date,
primary key(cpf));

create table modelo (
codMod int,
desc_2 varchar(40),
primary key(codMod));

create table patio (
num int,
ender varchar(40),
capacidade int,
primary key(num));

create table estaciona (
cod int,
patio_num int,
veiculo_placa varchar(10),
dtEntrada varchar(10),
dtSaida varchar(10),
hsEntrada varchar(10),
hsSaida varchar(10),
primary key(cod),
foreign key(patio_num) references patio(num),
foreign key(veiculo_placa) references veiculo(placa));

-- Exercicio 3
select v.placa, c.nome from veiculo v inner join cliente c
on v.placa = c.cpf; 

-- Exercicio 4
select c.cpf, c.nome
from Veiculo v inner join Cliente c
on v.Cliente_cpf = c.cpf
where v.placa = 'JJJ-2020';

-- Exercicio 5
select v.placa, v.cor
from Veiculo v inner join estaciona e
on e.Veiculo_placa = v.placa
where e.cod = 1;

-- Exercicio 6
select p.ender, e.dtEntrada, e.dtSaida
from Patio p inner join Estaciona e
on p.num = e.Patio_num
where e.Veiculo_placa = 'JEG-1010';

-- Exercicio 7
select count(e.cod) as Quantidade
from Veiculo v inner join Estaciona e
on v.placa = e.Veiculo_placa
where v.cor = 'verde';

-- Exercicio 8
select c.nome
from Veiculo v inner join Cliente c
on c.cpf = v.Cliente_cpf
where v.Modelo_codMod = 1;

-- Exercicio 9
select v.placa, e.hsEntrada, e.hsSaida
from Veiculo v inner join Estaciona e
on v.placa = e.Veiculo_placa
WHERE v.cor = 'verde';

-- exercicio 10
select e.cod,e.dtEntrada, e.dtSaida, e.hsEntrada, e.hsSaida
from Veiculo v inner join Estaciona e
on v.placa = e.Veiculo_placa
where v.placa = 'JJJ-2020';

-- Exercicio 11
select c.nome
from Cliente c inner join Veiculo v
on c.cpf = v.Cliente_cpf inner join Estaciona e
on v.placa = e.Veiculo_placa
where e.cod = 2;

-- Exercicio 12
select c.cpf
from Cliente c inner join Veiculo v
on c.cpf = v.Cliente_cpf inner join Estaciona e
on v.placa = e.Veiculo_placa
where e.cod = 3;

-- Exercicio 13
select m.descricao
from Modelo m inner join Veiculo v
on m.codMod = v.Modelo_codMod inner join Estaciona e
on v.placa = e.Veiculo_placa
where e.cod = 2;

-- Exercicio 14
select v.placa, c.nome, m.descricao
from Modelo m inner join Veiculo v
on m.codMod = v.Modelo_codMod inner join Cliente c
on c.cpf = v.Cliente_cpf;



