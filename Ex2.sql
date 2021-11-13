<<outer>>
declare
  n number:=10;
begin
declare
  n number:=20;
begin
  dbms_output.put_line('Outer block value '||outer.n);
  dbms_output.put_line('Inner block value '||n);
end;
 dbms_output.put_line('outer block value '||n);
end;

DECLARE
 outer_variable VARCHAR2(20):='GLOBAL VARIABLE';
BEGIN
  DECLARE
   inner_variable VARCHAR2(20):='LOCAL VARIABLE';
  BEGIN
DBMS_OUTPUT.PUT_LINE('In inner block');
   DBMS_OUTPUT.PUT_LINE('Inner block value '|| inner_variable);
   DBMS_OUTPUT.PUT_LINE('Outer block value '||outer_variable);
  END;
DBMS_OUTPUT.PUT_LINE('In outer block');
 -- DBMS_OUTPUT.PUT_LINE('Inner block value '|| inner_variable);
  DBMS_OUTPUT.PUT_LINE('Outer block value '||outer_variable);
END;




/
