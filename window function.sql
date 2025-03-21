-- window function
use regex1;
create table employees (id int primary key auto_increment , dept varchar(20) , salery int);
insert into employees (dept , salery ) values("hr" , 200) ,("hr" , 300 ) ,("hr" ,100) ,("marketing" ,70) 
,("marketing" ,50), ("marketing" ,200) , ("marketing" ,400),("marketing" ,200), ("marketing" ,600),
("dsa" ,150) ,("dsa" ,120),("dsa" ,40),("dsa" ,90),("dsa" ,500);
select *  ,(select sum(salery) from employees 
)FROM employees;
select sum(salery) from employees ;
select * , sum(salery) over()  , max(salery) over() , avg(salery) over() FROM employees;

-- WINDOW  --> ON records --> and we will use partition by 

select *, 
sum(salery) over() ,
sum(salery) over(partition by dept)  from employees ;

-- Running sum 
select * , sum(salery) over(order by salery) from employees;

select * , sum(salery) over(order by salery desc) from employees;

-- Running sum over the dpartment
select *, sum(salery) over(partition by dept order by salery) from employees; 

select *, avg(salery) over(partition by dept order by salery) from employees;

select *, avg(salery) over(partition by dept ) from employees; 

-- window function self function
 -- row_number
  select * , row_number() over() from employees;
  
select * , row_number() over(partition by dept ) from employees;

 -- rank function 
 select *  , rank() over(order by salery ) from employees ;
 
 -- Danse rank
 
  select *  , dense_rank() over(order by salery ) from employees ;
  
   select *  , rank() over( partition by dept order  by salery ) from employees ;
   
   -- leg
   select * , lag(salery ,1) over(order by salery) from employees;
 
  



