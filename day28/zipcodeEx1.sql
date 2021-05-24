show tables;

select * from dept2;



create table zipcode2 (
zipcode char(7) not null,
sido varchar(4) not null,
gugun varchar(17) not null,
dong varchar(26) not null,
ri varchar(26),
bunji varchar(17),
seq int(5) unsigned primary KEY 


);


select * from zipcode2;

select count(*) from zipcode2;



select * from zipcode2 limit 0, 50;

 select * from zipcode2 where dong like '개포%';





desc zipcode;

select distinct sido from zipcode;

select distinct gugun from zipcode where sido = '서울';


