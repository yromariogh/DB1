/*
1. Un reporte donde salga la sigiente informacion del ejemplo
"Adam";"Díaz";"101010293";"CC 
";"Masculino";"1994-01-
23";"2018-06-30";"RESTREPO ";"Meta ";"COLOMBIA "
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

/* 
2. Se desea conocer cuantos registro contiene. 
*/

select count(*) cantidad
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id;

/* 
3. Se desea filtrar un archivo con solo los de sexo masculino y otro
con los de sexo femenino. Y cuantos hombre y mujeres hay. 
*/

--Solo sexo masculino--
select p.nombre, p.apellido, p.documento, t.nombre as tipodocumento, s.nombre as sexo,
p.fechanacimiento, p.fecharegistro, c.nombre as ciudad, d.nombre as departamento, pa.nombre as pais
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and p.idsexo='1';

--Solo sexo femenino--
select p.nombre, p.apellido, p.documento, t.nombre as tipodocumento, s.nombre as sexo,
p.fechanacimiento, p.fecharegistro, c.nombre as ciudad, d.nombre as departamento, pa.nombre as pais
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and p.idsexo='2';

--Conteo de ambos sexos por separado--
select sum(case when p.idsexo='2' then 1 else 0 end) mujeres, sum(case when p.idsexo='1' then 1 else 0 end) hombres
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id;

/*
4. Se desea conocer cuantos hombres menores de 30 hay
*/

select count(*) hombres_menos30
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa, date_part('year', age(p.fechanacimiento)) as edad
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and p.idsexo='1'
and edad < 30;

/*
5. Si hay menores de edad y si los hay cuantos son. 
*/

select count(*) menores
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa, date_part('year', age(p.fechanacimiento)) as edad
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and edad < 18;

/*
6. Si hay menores de edad que sean del departamento de Antioquia
*/

select count(*) menores_Antioquia
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa, date_part('year', age(p.fechanacimiento)) as edad
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and edad < 18
and d.nombre = 'Antioquia';


/*
7. Si hay personas menores de edad en santander,  que tenga el
ultimo numero de  la cedula 7 o 3. 
*/
select p.nombre, p.apellido, p.documento, t.nombre as tipodocumento, s.nombre as sexo,
p.fechanacimiento, p.fecharegistro, c.nombre as ciudad, d.nombre as departamento, pa.nombre as pais
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa, date_part('year', age(p.fechanacimiento)) as edad
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and t.nombre!='TI' and t.nombre!='RC'
and edad<18
and (cast(p.documento as varchar) like '%3' or cast(p.documento as varchar) like '%7')
and d.nombre = 'Santander';

/* 
8. Un reporte con las columnas del primero donde estén, las
mujeres de los departamento que empiecen por C y la fecha de
registro este entre  "2018-09-10" y  "2019-04-01" 
*/

select p.nombre, p.apellido, p.documento, t.nombre as tipodocumento, s.nombre as sexo,
p.fechanacimiento, p.fecharegistro, c.nombre as ciudad, d.nombre as departamento, pa.nombre as pais
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and p.idsexo='2'
and upper (d.nombre) like 'C%'
and p.fecharegistro between '2018-09-10' and '2019-04-01';

/* 
9. Las mujeres y hombres de los departamentos con codigos 11 12 13
15 20 47 50 19 66 y con nombres de "Norte de Santander"
"Nariño" "Choco" que nacieron un martes 13 o un viernes 13. 
*/

select p.nombre, p.apellido, p.documento, t.nombre as tipodocumento, s.nombre as sexo,
p.fechanacimiento, p.fecharegistro, c.nombre as ciudad, d.nombre as departamento, pa.nombre as pais,
date_part('day', p.fechanacimiento) as numDia, date_part('dow', p.fechanacimiento) as diaSemana, d.codigo as dptoCodigo
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and (d.codigo in (11,12,13,15,20,47,50,19,66) or d.nombre in ('Norte de Santander','Nariño','Choco'))
and date_part('day', p.fechanacimiento) = 13
and date_part('dow', p.fechanacimiento) in (2,5);


/* 
10. Cuantos hombres menores de 30 y mayores de 21 de los departamentos anteriores que nacieron en diciembre o enero
pero no los días festivos. 
*/

/*select p.nombre, p.apellido, p.documento, t.nombre as tipodocumento, s.nombre as sexo,
p.fechanacimiento, p.fecharegistro, c.nombre as ciudad, d.nombre as departamento, pa.nombre as pais,
extract(day from p.fechanacimiento) as numDia, extract(month from p.fechanacimiento) as numMes,
date_part('dow', p.fechanacimiento) as diaSemana,
date_part('year', age(p.fechanacimiento)) as edad,
date_part('week', p.fechanacimiento) as semana*/

select count(*)
from pedido.persona p, academico.tipodocumento t, academico.sexo s, academico.ciudad c,
academico.departamento d, academico.pais pa 
where p.idtipodocumento = t.id
and p.idsexo = s.id
and p.idciudad = c.id
and c.iddepartamento = d.id
and d.idpais = pa.id
and s.id='1'
and (d.codigo in (11,12,13,15,20,47,50,19,66) or d.nombre in ('Norte de Santander','Nariño','Choco'))
and date_part('year', age(p.fechanacimiento)) between 21 and 30
and date_part('month', p.fechanacimiento) in (1,12)
and date_part('dow', p.fechanacimiento) != 0
and ((date_part('month', p.fechanacimiento) = 12 and date_part('day', p.fechanacimiento) not in (8,25))
	or (date_part('month', p.fechanacimiento) = 1 and p.fechanacimiento not in ( select  p.fechanacimiento 
from pedido.persona p, academico.sexo s
where date_part('week', p.fechanacimiento) = 2
and s.id='1'
and p.idsexo=s.id
and date_part('dow', p.fechanacimiento) = 1) and date_part('day', p.fechanacimiento)!=1));