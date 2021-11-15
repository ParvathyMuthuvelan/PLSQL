create or replace package body deptpack1 as
  procedure addrec(deptno number,dname varchar2) as
    begin
      insert into departments values(deptno,dname);
  end addrec;
procedure delrec(dno number) as
  begin
   delete from departments where deptno=dno;
  end delrec;
function avgsalary(deptno number) return number as
avgsal employees.salary%type;
begin
select avg(salary) into avgsal from employees where department_id=deptno;
return avgsal;
end avgsalary;
end deptpack1;



sql>exec deptpack.addrec(50,'hrms','houston');

sql>exec deptpack.delrec(50);

begin
deptpack.addrec(50,'hrms','houston');
deptpack.delrec(50);
end;