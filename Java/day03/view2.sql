-- 두개의 테이블을 조인시킨뒤 view로 선언해서 만들어줄 수 있다.

create view emp_dept
as select empno, ename, e.deptno, dname, loc 
from emp e inner join dept d
on e.deptno = d.deptno;

show full tables;

desc emp_dept;
select * from emp_dept;

-- 사원번호, 사원이름, 급여, 연봉(sal*12+ifnull(comm, 0 )), 호봉을 나타내는
-- emp_salgrade 라는 view 를 생성.
-- 조건1. 연봉의 컬럼이름을 annsal 로 변경하여 표시

create view emp_salgrade
as select empno, ename, sal, (sal*12 + ifnull(comm, 0)) annsal, grade
from emp e inner join salgrade s
on (e.sal between s.losal and s.hisal);

desc emp_salgrade;
select * from emp_salgrade;

-- 사원테이블에서 사원번호, 사원이름, 관리자이름이 출력할 수 있는
-- emp_mgr VIEW 생성
-- 조건1. 관리자가 없을때는 '없음' 으로 표시할 것.

create view emp_mgr
as select e.empno, e.ename, ifnull(m.ename, '없음') '관리자'
-- LEFT OUTER JOIN을 사용한 이유는 표시되지 않는 NULL 자료 부분도 추가하기 위함임.
from emp e left outer join emp m
on (e.mgr=m.empno);
desc emp_mgr;
select * from emp_mgr;


show tables;

alter view emp_vu_10
as select * from emp where deptno = 20;

desc emp_vu_10;

