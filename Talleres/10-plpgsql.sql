/* 1. Realizar un Bloque anónimo donde calcule los 10 primeros términos de
la serie fibonacci en plqsl y plpgsql.*/

do $$
declare 
a integer;
b integer;
c integer;
begin
a=0;
b=1;
RAISE NOTICE '%',a;
RAISE NOTICE '%',b;
for i in 1..8 Loop
c=a+b;
a=b;
b=c;
RAISE NOTICE '%',c;
end loop;
end; 
$$

/* 2. Realizar un Bloque anonimo que mi imprima la siguiente figura de forma
figura con el valor 7 en postgres y oracle.
*
**
***
****
***
**
*
*/

do $$
declare
	cadena varchar(7);
begin
	for i in 1..7
	loop
		if i<=4 then
			cadena=concat(cadena,'*');
			RAISE NOTICE '%',cadena;
		else 
			cadena=SUBSTR(cadena, 1, LENGTH(cadena) - 1);
			RAISE NOTICE '%',cadena;
		end if;
	end loop;
end; $$

/* 3. Realizar un bloque anónimo donde en plpgsql(postgres) donde imprima
lo siguiente
Nombre y apellido actor   pelicula1
              pelicula2
              pelicula3
              ...peliculaN */

do $$
declare
 contador integer = 0;
 registro record;
 pointer cursor(idact integer)
 for select A.nombre, A.apellido, F.titulo
 from videotienda.film F, videotienda.actor A, videotienda.filmactor FA
 where 
	 A.id = FA.idactor
	 and F.id = FA.idfilm
	 and A.id = idact;
begin
   for i in 1..200 loop
	   open pointer(i);
	   fetch pointer into registro;
	   raise notice '%', i || '. ' || registro.nombre || ' ' || registro.apellido || ':';
	   loop
	   		contador = contador+1;
			raise notice '%',  '		' || contador || '. ' || registro.titulo;
			fetch pointer into registro;
			exit when not found;
	   end loop;
	   close pointer;
   end loop;
end; $$
