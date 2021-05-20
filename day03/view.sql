
-- view 타입의 테이블 만들기
create view emp_vu1 as select * from emp;

-- 테이블 확인
show tables;
select * from emp_vu1;


--테이블에 table_type도 추가해서 보여주는법


show full tables;


--emp_vu1을 만들때 어떤 원리로 만들어지는지 확인하는 부분
show create view emp_vu1;

--컬럼수의 제한을 걸어서 생성

create view emp_vu_10 as select empno, ename, mgr, job from emp where deptno = 10;

desc emp_vu_10;

select * from emp_vu_10;

--컬럼수의 제한을 설정하고 , 별명도 추가해서 생성하는 방법

create view emp_vu_20
as select empno no, ename name, mgr manager, job from emp where
deptno = 20;

-- 본래 테이블의 이름을 몰라도 새로만든 view 테이블에 접근하게 할 수 있다.
-- 보안성이 올라감

select no, name from emp_vu_20;