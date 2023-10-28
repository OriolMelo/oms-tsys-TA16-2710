-- 3.1
select * from almacenes;
-- 3.2
select * from cajas where valor >150;
-- 3.3
select distinct contenido from cajas;
-- 3.4
select avg(valor) from cajas;
-- 3.5
select avg(valor), almacen from cajas group by almacen;
-- 3.6
select almacen from cajas group by almacen having avg(valor)> 150; 
-- 3.7
select cajas.numreferencia, almacenes.lugar from cajas, almacenes where cajas.almacen=almacenes.codigo;
-- 3.8
select almacen, count(*) as num_cajas from cajas group by almacen;
-- 3.9
select codigo from almacenes where capacidad< (select count(*) from cajas where almacen = codigo); 
-- 3.10
select numreferencia from cajas where almacen = (select codigo from almacenes where lugar = "Bilbao");
-- 3.11
insert into almacenes (codigo, lugar, capacidad) values (6, "Barcelona", 3);
-- 3.12
insert into cajas (numreferencia, contenido, valor, almacen) values ("H5RT", "Papel", 200, 2);
-- 3.13
update cajas set valor = valor*0.85;
-- 3.14
set @media = (select avg(valor) from cajas);
update cajas set valor = valor*0.80 where valor > @media;
-- 3.15
delete from cajas where valor <100;
-- 3.16
set @codigos_saturados = (select codigo from almacenes where capacidad< (select count(*) from cajas where almacen = codigo));
delete from cajas where almacen in (@codigos_saturados);