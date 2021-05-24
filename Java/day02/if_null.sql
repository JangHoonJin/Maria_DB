-- 테이블의 값이 null인지 아닌지 검사하는 로직


select * from emp;
select comm from emp;

-- emp 안에있는 comm의 null이 발견되면 null의 값을 ifnull을 사용해 0으로 변환
select comm, ifnull(comm, 0) from emp;


-- emp 안의 sal에 12를 곱하고, comm을 더한 값을 출력하는것
select sal, comm, sal*12 + comm from emp;

--위의 경우 comm 안에 null이 들어가므로 null을 ifnull(comm, 0 )을 사용해 제거해야함

select sal, comm, sal*12 + ifnull(comm, 0) from emp;
