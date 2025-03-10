use sakila ;
select * from payment;
select * from (
select amount ,
dense_rank() over (order by amount desc) as ratings
from payment ) as hi where ratings =5;

-- cte --> common table expalanatation
-- with keyword use cte and we can also refer this cte
-- cte is used for convert complex logix into simple expression
-- cte makes readable your statement
-- recrucusely used 
-- syntex 
 -- with cte as 
-- select statment 
-- select * from statement 
with tushar as 
(select amount ,
dense_rank() over (order by amount desc) as ratings
from payment )
select * from tushar ;
use sakila ;
 create temporary table tushar as select * from payment ;
 
 use sakila;
 with
 cte1 as (select * from actor where actor_id >2) ,
cte2 as(select * from film_actor where film_id >30 )
select cte1.actor_id , film_id from cte1 join cte2
where cte1.actor_id =cte2.actor_id;
 
 -- recrusive cte  -- statement will go on untill some condition is satisfy
 
 with  recursive num_table 
 as (select 10  as num 
 union
       select num+1 from num_table where num<14)
 select * from num_table;
 -- you have the get acote id , first name , full name from the table where either actor id >5 0r the name is nick
 

 
 
 
 
 
 
 
 
 
 
 
 

 