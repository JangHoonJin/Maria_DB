
-- 테이블에 별명을 만들어 짧게 처리하는 방법
-- emp e = emp를 e로 변경 ,  dept d = dept는 d로 변경
-- (e.deptno) = emp.deptno 의 생략
-- (d.deptno) = dept.deptno 의 생략
select * from emp e join dept d on(e.deptno = d.deptno);



-- e.empno = emp.empno 의 생략
-- e.ename = emp.ename 의 생략
-- d.deptno = dept.deptno 의 생략
-- d.loc = dept.loc 의 생략

select e.empno, e.ename, d.deptno, d.loc
from emp e join dept d
on(e.deptno = d.deptno)
where e.deptno = 10;


select * from salgrade;


select * from emp e inner join salgrade s
on(e.sal>=s.losal and e.sal <= s.hisal);
