begin
if  TO_CHAR(SYSDATE,'DY')='SUN' then
   dbms_output.put_line('Holiday');
else
dbms_output.put_line('Working Day');
end if;
end;