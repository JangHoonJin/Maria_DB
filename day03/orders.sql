


create table customers (
    cno varchar(5) primary key,
    address varchar(50),
    email varchar(20),
    phone varchar(20)
);

show tables;


desc customers;

drop table orders;


create table orders (
orderno VARCHAR(10) PRIMARY KEY ,
orderdate varchar(8),
address varchar(50),
phone varchar(20),
status varchar(5),
cno varchar(5),
constraint foreign key(cno) REFERENCES customers(cno)
);

create table products (

    pno varchar(5) PRIMARY KEY ,
    pname VARCHAR(20),
    cost INT(8),
    stock INT(5)

);

create table orderdetail (
    orderno VARCHAR(10),
    pno VARCHAR(5),
    qty INT(5),
    cost INT(5),
    constraint primary key (orderno,pno),
    constraint foreign key (orderno) references orders (orderno),
    constraint foreign key (pno) references products(pno)


);



create view emp_vu_10
ASC select empno, ename, mgr, job
from empwhere deptno = 10;





