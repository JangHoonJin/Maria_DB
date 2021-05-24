-- avg 을 사용한 평균을 구하는 방법


-- emp 안에 있는 sal의 평균을 구하는것
-- avg() sum()과 마찬가지로 모든 값이 합쳐저서 하나의 방으로 출력

select avg(sal) from emp;

select sum(comm) from emp;

select count(*) from emp;

select comm from emp;


-- count(*)은 null의 값도 모두 세기때문에 총 14개가 되서 

-- sum(comm)/ 14가 되는것이다.
select sum(comm)/count(*) from emp;


-- comm의 모든 값을 더하고 14로 나눈것
select sum(comm)/14 from emp;



select avg(comm), sum(comm)/count(*), sum(comm)/14 from emp;


select avg(ifnull(comm,0)) from emp;
