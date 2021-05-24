-- 가장 급여를 높게 받는 사원의 정보를 출력하는 방법

select ename, job, deptno, sal from emp
where sal = (select max(sal) from emp); 


select ename, sal from emp;

-- scott 보다 높은 급여를 받는 사원의 정보를 출력

select ename, job, deptno, sal from emp
where sal >= (select sal from emp where ename = 'scott');