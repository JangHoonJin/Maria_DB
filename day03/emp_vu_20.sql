create view emp_vu_20
as
select empno no, ename name, mgr manager, job
from emp
where deptno =20;


select no, name from emp_vu_20;


