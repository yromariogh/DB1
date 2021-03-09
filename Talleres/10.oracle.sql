/* 1. Realizar un Bloque anónimo donde calcule los 10 primeros términos de
la serie fibonacci en plqsl y plpgsql.*/

declare 
a integer;
b integer;
c integer;
begin
a:=0;
b:=1;
dbms_output.put_line(a);
dbms_output.put_line(b);
for i in 1..8 Loop
c:=a+b;
a:=b;
b:=c;
dbms_output.put_line(C);
end loop;
end; 

/* 2. Realizar un Bloque anonimo que mi imprima la siguiente figura de forma
figura con el valor 7 en postgres y oracle.
*
**
*
**
*
**
*
*/

declare
	n number:=4;
	m number:=3;
	i number;
	j number;
begin
	for i in 1..n
	loop
		for j in 1..i
		loop
			dbms_output.put('*');
		end loop;
		
		dbms_output.new_line;
	end loop;
	for i in reverse 1..m
	loop
		for j in 1..i
		loop
			dbms_output.put('*');
		end loop;
		
		dbms_output.new_line;
	end loop;
end;
/
