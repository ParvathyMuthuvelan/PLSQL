Example:1
------------
declare
v_name varchar2(30);
v_salary employees.salary%type;
v_job employees.job_id%type;
begin
 select first_name,salary,job_id into v_name,v_salary,v_job from employees where employee_id=103;
dbms_output.put_line('Name : ' || v_name);
 dbms_output.put_line('Salary : ' || v_salary);
dbms_output.put_line('Job : ' || v_job);
end;

Example:2
------------
declare
v_name varchar2(30);
v_salary employees.salary%type;
v_job employees.job_id%type;
v_empid number(8):=&v_empid;
begin
 select first_name,salary,job_id into v_name,v_salary,v_job from employees where employee_id=v_empid;
dbms_output.put_line('Name : ' || v_name);
 dbms_output.put_line('Salary : ' || v_salary);
dbms_output.put_line('Job : ' || v_job);
end;