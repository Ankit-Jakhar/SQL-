use sakila ;
-- multi row function
-- aggregate function
-- sum 
-- count
select * from payment;
select sum(amount) from payment;

select count(amount) from payment;

select avg(amount) , count(amount) , sum(amount) from payment;
select * from payment;
select count(distinct(amount)) , count(amount ) from payment;
select count(*) from payment where amount =0.99;

-- Group by -- collect similar values together 
select amount , count(amount) from payment group by amount;
select amount , count(payment_id)  , sum(amount) , avg(amount) from payment group by amount;
-- calculate the total amount by month wise 
select  month(payment_date) , sum(amount) from payment group by month(payment_date);
select * from payment ;
-- to get total amount and average amount spent by each custmore
-- to get the total amount and maximum and minimum amount for each staff id
-- get the total number of payments for each staff
--  to get total amount , toal numbner of entries , avg amount where each custmore value should be  greater thewn two dollers and apyment id should be greater then 10
select customer_id , sum(amount ) ,avg(amount) from payment group by (customer_id);
 select * from payment;
 select amount  ,sum(amount) from payment where amount !=0.99 group by amount;
 -- group by having
 select amount  ,sum(amount) from payment where amount !=0.99 group by amount having sum(amount)>8000;
 -- order by
 -- alias
 select amount , amount*10   as new from payment ;
 select * from payment order by amount;
  select * from payment order by amount desc;
   select * from payment order by amount desc , rental_id desc;
   
   -- flow control function
   -- case
   -- if()
   -- ifnull()
   -- nullif()
select amount , if(amount =0.99 , "correct " , "incorrect") from payment;
select amount , if(amount =0.99 , "correct " , 
if(amount =2.99 , "yes" ,"incorrect")) from payment;
select amount,
case
     when amount =0.99 then "values is 0.99"
     when  amount =2.99 then "yes"
     else amount
     end as cond
     from payment;
-- if the count of amount >10000 then the print payment has     
-- subquery --> query wuthuin a query
select * from payment where amount =(select amount from payment where payment_id =3);
select* from actor;
select * from actor where first_name=(select first_name from actor where actor_id =3);
select * from payment where amount =(select amount from payment where rental_id =1185);
select * from payment where amount >   (select amount from payment where rental_id =1185);

-- MULTIROW SUBQUERY --SUCH A ROW WHICH RETURN MORE THEN ONE ROW
