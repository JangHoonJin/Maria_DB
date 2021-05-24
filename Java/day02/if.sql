show tables;

-- if() 조건문을 사용해 참,거짓을 판명

select if (1=2, '참', '거짓');
select if (2=2, '참', '거짓');



-- if를 활용한 조건식으로 참,거짓을 나타낼수있다.

-- sal의 값이 2000 보다 큰 경우 '많음' , 적은경우 '적음' 이라고 나타내는
-- if문의 활용법
select ename, sal, if (sal<2000, '적음', '많음')
from emp where deptno = 30;
