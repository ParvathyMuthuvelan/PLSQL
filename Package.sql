--package specification
create or replace package deptpack1 as
   procedure addrec(deptno number,dname varchar2);
   procedure delrec(dno number);
function avgsalary(deptno number) return number;
end deptpack1;

--package body
create or replace package body deptpack1 as
  procedure addrec(deptno number,dname varchar2) as
    begin
      insert into department values(deptno,dname);
  end addrec;

procedure delrec(dno number) as
  begin
   delete from department where deptno=dno;
  end delrec;

function avgsalary(deptno number) return number as
avgsal employees.salary%type;
begin
select avg(salary) into avgsal from employees where department_id=deptno;
return avgsal;
end avgsalary;

end deptpack1;

To call procedure,
begin
deptpack1.addrec(50,'hrms');
deptpack1.delrec(50);
end;

Ex:2
-- procedure overloading
CREATE PACKAGE overloadingprocedure AS
    Procedure proc1 (p varchar2); 
    Procedure proc1(num number);
END overloadingprocedure; 

CREATE OR REPLACE PACKAGE BODY overloadingprocedure AS

    Procedure proc1(p varchar2) AS
    BEGIN  
         DBMS_OUTPUT.PUT_LINE ('First Procedure: ' || p);
    END; 
    
    Procedure proc1 (num number) AS
    BEGIN  
         DBMS_OUTPUT.PUT_LINE ('Second Procedure: ' || num);
    END;  
END; 

overloadingprocedure.proc1('hello');
overloadingprocedure.proc1(10);