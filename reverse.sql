DECLARE
n NUMBER;
rw number:=0;
BEGIN
 n:=&n;
 while(n>0)
 LOOP
 rw:=rw*10+mod(n,10);
 n:=trunc(n/10);
 end loop;
 DBMS_OUTPUT.PUT_LINE('reverse of number is [[]]'||rw);
 end;
/
