use regex1 ;
create table employee01(id int);
insert into employee01 values (10) ,(20) ,(null) , (30);
select * from employee01;
select count(*) from employee01;

create table employee02(id int not null);
insert into employee02 values (10) ,(20) ;
insert into employee02 values (null);

select * from employee02;

create table employee03(id int  , salery int default 0);
insert into employee03 values (10,100) ,(20 , 200) ;
insert into employee03 (id) values (30);
select * from employee03;

-- unique values
create table employee04(id int  , salery int unique);
insert into employee04 values (10,1002) ,(20 , 200) ;
insert into employee04  values (20 ,1002);
insert into employee04  values (22,null);
select * from employee04 ;

-- primary key
drop table employee04;
drop table employee03;
drop table employee02;
drop table employee01;
create table employee01(id int primary key   , salery int unique);
insert into employee01 values (10,99) ,(20 , 200) ;
insert into employee01 (id , salery) values (null ,1002);
insert into employee01 (id , salery) values (10 ,null);
select * from employee01 ;
drop table employee01;
-- writing constraint name --> beacuse known of error 
create table employee01(id int primary key   , fname varchar(20) , 
salery int , constraint regex_emp_salery_uk unique(salery));
insert into employee01 values (10, "a" ,99) ,(20 , "b" ,99) ;


-- foriegn key 
create table product123(pid int  primary key , amount int);
insert into product123 values (101 ,709 ) ,(102 , 800);
select * from product123 ;


create table order123 (oid int , city varchar(20) , 
product_id int , foreign key (product_id ) references product123(pid) );
insert into order123 values (9621 ,"jIPUR " , 101);
insert into order123 values (9623 ,"JODHPUR " , 102);
select  * from  order123;

1