select * from emp;

select sal from emp;

-- count는 () 안에 설정한 테이블안의 컨텐츠의 값을 불러옴
-- 대신 null의 값은 불러오지 않는다.
select count(sal) from emp;



select comm from emp;

-- comm의 총 컨텐츠 갯수는 14개 이지만 null을 세지 않으므로
-- 값이 들어있는 4개의 값만 출력이 된다.
select count(comm) from emp;


-- count() 에서 null의 값도 출력하는방법


select count(*) from emp;

-- count()를 사용해서 comm의 null 값도 같이 출력하려면
-- comm의 null 값을 ifnull()을 사용해서 0으로 변경 후에
-- count( ifnull( ) ) 을 사용해서 출력해주면 comm의 null값도 제거
select count(ifnull(comm,0)) from emp;

