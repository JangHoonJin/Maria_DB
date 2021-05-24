select * from emp;

-- sal의 모든 값을 더하고 , 
-- from emp group by deptno; -> emp 안에있는 deptno의 번호별로 
--그룹으로묶어주고

-- sal의 값을 sum으로 모두 더한다.  

select sum(sal) from emp group by deptno;



select sum(sal) from emp;

-- deptno를 번호별로 group by 로 묶고, sum으로 sal의 값을 모두더함
-- deptno도 출력

select deptno, sum(sal) from emp group by deptno;

-- deptno의 번호별로 그룹을 짓고 sal의 평균을 구한다
-- 앞에는 deptno(부서번호)도 출력을 해주고
select deptno, avg(sal) from emp group by deptno;


--각 job 마다 최고급여를 측정해서 보여주는 부분
select job, max(sal) from emp group by job;

--  where 에는 group by를 사용할수 없다.
--select deptno, job sum(sal)
--from emp
--where sum(sal) >= 2000
--group by deptno,job;
-- where문에 group by를 사용하려면 having ~ 을 사용


select deptno, job, sum(sal)
from emp
where sal >= 2000
group by deptno, job
having sum(sal) >= 2000
order by 3 ;


-- emp 안에서 부서별,직업별 가장 높은 월급을 가진 사람을 구해서
-- 직업,부서번호,급여치를 입력하라.

-- 부서(deptno) , 직업(job), 급여(sal)

select sal, job, deptno , max(sal)
from emp
group by job, deptno;