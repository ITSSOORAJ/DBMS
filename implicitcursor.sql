DECLARE
cid emploe.emid%type;
cjjob emploe.job%TYPE;
csala emploe.job%TYPE;
cursor cur is select emid,job,salary from emploe;
begin
open cur;
LOOP
fetch cur into cid,cjjob,csala;
exit when cur%notfound;
if cid =1 THEN
  csala:=csala+100;
  ELSif cid=2 THEN
  csala:=csala+200;
  ELSIF cid=3 THEN
  csala:=csala+300;
  end if;
  dbms_output.PUT_LINE(cid||'   '||cjjob||'  '||csala);
  end loop;
  close cur;
  end;
  /
