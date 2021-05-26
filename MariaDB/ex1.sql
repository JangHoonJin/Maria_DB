use sample;

select count(*) from zipcode;

delete from zipcode;


select count(*) from zipcode;


create table testtbl(
    col1 varchar(10),
    col2 varchar(10)
    );


    desc testtbl;

    insert into testtbl values ('aa', 'bb');


    

    insert into testtbl values ('aa', 'bb'), ('bb', 'cc'), ('cc', 'dd');

    select * from testtbl;


    create table zipcode3 as select * from zipcode where 1!=1;


    select count(*) from zipcode;

    select distinct sido from zipcode;

    select distinct gugun from zipcode where sido = '서울';

    select distinct gugun from zipcode where sido = '서울' and gugun = '강남구';
    select * from zipcode where sido = '서울' and gugun = '강남구' and dong='일원동';

    
    

    