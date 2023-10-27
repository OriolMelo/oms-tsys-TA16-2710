-- 1.1
select nombre from articulos;
-- 1.2
select nombre, precio from articulos;
-- 1.3
select nombre from articulos where precio <= 200;
-- 1.4
select * from articulos where precio between 60 and 120;
-- 1.5
select nombre, precio*166.386 as precio_pesetas from articulos;
-- 1.6
select avg(precio) from articulos;
-- 1.7
select avg(precio) from articulos where fabricante = 2;
-- 1.8
select count(*) from articulos where precio >= 180;
-- 1.9
select nombre, precio from articulos where precio >= 180 order by precio desc, nombre asc;
-- 1.10
select * from articulos, fabricantes where articulos.fabricante = fabricantes.codigo;
-- 1.11
select articulos.nombre, articulos.precio, fabricantes.nombre from articulos, fabricantes where articulos.fabricante = fabricantes.codigo;
-- 1.12
select avg(precio) as media_precio_productos_fabricante, fabricante from articulos group by fabricante;
-- 1.13
select avg(articulos.precio) as media_precio_productos_fabricante, fabricantes.nombre from articulos, fabricantes where articulos.fabricante = fabricantes.codigo group by articulos.fabricante;
-- 1.14
select fabricantes.nombre from fabricantes join articulos on (fabricantes.codigo = articulos.fabricante) group by articulos.fabricante having(avg(precio)) >= 150;
-- 1.15
select nombre, precio from articulos where precio = (select min(precio) from articulos);
-- 1.16
select articulos.nombre, articulos.precio, fabricantes.nombre from articulos, fabricantes where articulos.precio = 
																	(select max(articulos.precio) from articulos where articulos.fabricante = fabricantes.codigo) order by fabricantes.nombre;
-- 1.17
insert into articulos (codigo, nombre, precio, fabricante) values (11, "Altavoces", 70, 2);
-- 1.18
update articulos set nombre = "Impresora Laser" where codigo = 8;
-- 1.19
update articulos set precio = precio*0.9;
-- 1.20
update articulos set precio = precio-10 where precio>=120;