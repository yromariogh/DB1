/*
1. Un reporte donde salga la siguiente información del ejemplo 
"Adam";"Díaz";"101010293";"CC ";"Masculino";"1994-01-23";"2018-06-
30";"RESTREPO ";"Meta ";"COLOMBIA ".
*/

select p.nombre, p.apellido, p.documento, t.nombre as tipodocumento, s.nombre as sexo,
p.fechanacimiento, p.fecharegistro, c.nombre as ciudad, d.nombre as departamento, pa.nombre as pais
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id;

-- Se desea saber cuantas personas aparecen en la tabla persona por departamento. --

select d.nombre as departamento, count(*) as cantidad
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
group by d.nombre;

/*
2. Se desea saber cuántas personas por sexo masculino aparecen en la tabla
persona por departamento ordenadas por los departamentos con mayor
cantidad de personas.
*/

select d.nombre as departamento, s.nombre as sexo, count(*) as cantidadHombres
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and s.id = '1'
group by d.nombre, s.nombre
order by count(*) desc;

/*
3. Se desea saber cuántas personas por sexo femenino aparecen en la tabla
persona por departamento ordenadas por los departamentos con mayor
cantidad de personas.
*/

select d.nombre as departamento, s.nombre as sexo, count(*) as cantidadMujeres
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and s.id = '2'
group by d.nombre, s.nombre
order by count(*) desc;

/*
4. Se desea saber cuántas personas por sexo femenino menores(0,18), mayores(19,50) viejas (50,100)
aparecen en la tabla persona por departamento ordenadas por los departamentos con mayor cantidad
de personas en un solo reporte (consulta).
*/

select d.nombre as departamento, s.nombre as sexo, count(*) as cantidadMujeres, 
sum(case when date_part('year', age(p.fechanacimiento)) between 0 and 17 then 1 else 0 end) menores,
sum(case when date_part('year', age(p.fechanacimiento)) between 18 and 50 then 1 else 0 end) mayores,
sum(case when date_part('year', age(p.fechanacimiento)) between 51 and 100 then 1 else 0 end) viejas
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and s.id = '2'
group by d.nombre, s.nombre
order by count(*) desc;

/*
5. Los mujeres y hombres de los departamentos con códigos 11 12 13 15 20 47 50 19 66 
y los nombres de "Norte de Santander" "Nariño" "Choco" que nacieron un
martes 13 o un viernes 13 con la cláusula EXISTS.
*/

SELECT p.nombre, p.apellido, s.nombre as sexo, p.fechanacimiento, d.nombre as departamento,
d.codigo as dptoCodigo, date_part('dow', p.fechanacimiento) as diaSemana
FROM pedido.persona p, academico.sexo s,academico.departamento d, academico.ciudad c, academico.pais pa
WHERE 
EXISTS ( 
    SELECT date_part('dow', p.fechanacimiento)
	FROM pedido.persona p
	WHERE (d.codigo in (11,12,13,15,20,47,50,19,66) 
        or d.nombre in ('Norte de Santander','Nariño','Choco')))
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and date_part('day', p.fechanacimiento) = 13
and date_part('dow', p.fechanacimiento) in (2,5);

/*
6. Interceptar las consultas de con los nombre, apellido, documento con los
documentos que tengas tipodocumento cc con la consulta de los que son
menores de edad.
*/

select p.nombre, p.apellido, p.documento, t.nombre as tipodocumento, date_part('year', age(p.fechanacimiento)) as edad
from pedido.persona p, academico.tipodocumento t 
	intersect
select p.nombre, p.apellido, p.documento, t.nombre as tipodocumento, date_part('year', age(p.fechanacimiento)) as edad
from pedido.persona p, academico.tipodocumento t 
where t.nombre = 'CC'
	intersect
select p.nombre, p.apellido, p.documento, t.nombre as tipodocumento, date_part('year', age(p.fechanacimiento)) as edad
from pedido.persona p, academico.tipodocumento t 
where date_part('year', age(p.fechanacimiento)) between 0 and 17