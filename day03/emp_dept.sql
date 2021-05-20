create view emp_dept
as select empno, ename, e.deptno, dname, loc
from emp e inner join dept d
on e.deptno=d.deptno;


desc emp_dept;

select * from emp_dept;