-- views -- virtual table

use sakila;
select * from payment;

create view pay_view  as select payment_id ,customer_id from payment;
select* from pay_view;

create table payment2 as 
      select payment_id ,customer_id  from sakila.payment where payment_id<5;
      
create view payment_v2 as select * from payment2;

select * from payment_v2;
insert into payment_v2 values(5,10);
select * from payment2;
use sakila;
create view payment_v3 as select payment_id from payment2;
insert into payment_v3(payment_id ,customer_id ) values (6,11);
select * from payment2;


-- view have two types 
-- simple view 
-- complex view -- no original changes are allowed
  create database regex1 ;
  
  use regex1;
select database();

create view flm_actor as select  a.actor_id , f.film_id , a.first_name , a.last_name , a.last_update 
from sakila.actor as a join
sakila.film_actor as f
on a.actor_id =f.actor_id;
select  * from flm_actor;

create view flm1 as select a.actor_id , a.first_name 
from actor as a where a.actor_id is not null with check option;
select * from flm1;

