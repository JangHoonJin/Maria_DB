-- 자바스크립트의 switch 문과 흡사한 부분
-- select case 가 1인 경우
-- when 1 은 -> then 'one' 으로 변환 되는것

-- select case 가 2인 경우
-- when 2 는 -> then 'two' 으로 변환
select case 1
when 1 then 'one' 
when 2 then 'two'
else 'more'
end;

-- javascript 의 switch와 흡사함
-- switch(1)
--case 조건 -> (when 1) : 결과 (then 'one')


-- next


select * from emp;

-- switch case문 활용법

select empno, ename, sal, job,
case job
when 'analyst' then sal*1.1
when 'clerk' then sal*1.2
when 'manager' then sal*1.3
when 'president' then sal*1.4
else sal
end
from emp;



-- source 외부 파일의 실행방법

select * from emp;
-- 0번째방에서 부터 1번째 방까지의 컨텐츠를 가져오는것
select * from emp limit 0,1;


