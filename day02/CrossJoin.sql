select * from dept;
select * from emp;

-- 'table1' cross join 'table2' 을 하게될경우 2개의
-- 테이블이 합쳐진다.

select * from emp cross join dept;


-- 'table1' inner join 'table2' 를 하게될 경우 2개의
-- 테이블이 곱해진다.
select * from emp inner join dept;

-- 'table1' join 'table2' using '조건' 을 하게될 경우 
-- 테이블의 조건끼리 곱해진다.
select * from emp join dept using (deptno);

