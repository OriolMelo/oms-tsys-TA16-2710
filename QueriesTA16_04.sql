-- 4.1
select nombre from peliculas;
-- 4.2
select distinct calificacionEdad from peliculas;
-- 4.3
select * from peliculas where calificacionEdad is null;
-- 4.4
select * from salas where pelicula is null;
-- 4.5
select * from salas left outer join peliculas on (salas.pelicula = peliculas.codigo);
-- 4.6
select * from peliculas left outer join salas on (salas.pelicula = peliculas.codigo);
-- 4.7
select nombre from peliculas where codigo not in (select pelicula from salas where pelicula is not null);
-- 4.8
insert into peliculas (codigo, nombre, calificacionEdad) values (10, "Uno, Dos, Tres", "PG7");
-- 4.9
update peliculas set calificacionEdad = "PG-13" where calificacionEdad is null;
-- 4.10
delete from salas where pelicula in (select codigo from peliculas where calificacionEdad = "G");