create view emp_vu1 as select * from emp;

show tables;

select * from emp_vu1;

show full tables;

show create view emp_vu1;


create view emp_vu_10 as select empno, ename, mgr, job from emp where deptno = 10;

desc emp_vu_10;

select * from emp_vu_10;


