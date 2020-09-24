select * from cliente;

select * from vendedor;

select * from produto;

select * from pedido;

select * from item_pedido;

select c.cod_cli, c.nome_cli, p.num_ped from cliente c, pedido p where
c.cod_cli = p.cod_cli
order by c.nome_cli;

select c.nome_cli, c.uf, p.num_ped, p.prazo_entr from cliente c, pedido p where
c.cod_cli = p.cod_cli and
p.prazo_entr > 15 and
c.uf in ('sp', 'rj');

select c.cod_cli, c.nome_cli, p.num_ped, p.prazo_entr from cliente c, pedido  p where
c.cod_cli = p.cod_cli
order by p.prazo_entr desc;

select v.nome_vend, v.sal_fixo, p.num_ped, p.prazo_entr from vendedor v, pedido p where
v.cod_vend = p.cod_vend and
p.prazo_entr > 15 and
v.sal_fixo >= 1000
order by v.nome_vend;

select c.nome_cli, c.uf, p.num_ped, p.prazo_entr, pr.desc_prod 
from cliente c, pedido p, produto pr, item_pedido ip where 
c.cod_cli = p.cod_cli and
p.num_ped = ip.num_ped and
pr.cod_prod = ip.cod_prod and
pr.cod_prod = ip.cod_prod and
c.uf = 'rj' and
pr.desc_prod = 'chapa de Aco' and
p.prazo_entr > 15 
order by c.nome_cli;

select distinct(v.nome_vend) from vendedor v, pedido p, produto pr, item_pedido ip where 
v.cod_vend = p.cod_vend and
p.num_ped = ip.num_ped and
pr_cod_prod = ip.cod_prod;

use aula21082020;

select count(c.cod_cli) from cliente c, vendedor v, pedido p where
c.cod_cli = p.cod_cli and
p.cod_vend = v.cod_vend and
v.nome_vend = 'Ana Cristina';

select count(distinct c.cod_cli), c.cidade from cliente c, pedido p, vendedor v where
c.cod_cli = p.cod_cli and
c.cidade in ('rio de janeiro','niteroi') and
v.nome_vend = 'Ana Cristina'
group by c.cidade;





