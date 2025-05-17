use sakila;
-- order by , alias , multirow function
select * from actor order by first_name ;
select * from actor order by first_name, actor_id desc ;
select actor_id , actor_id+10 as "newactor" from actor;
-- multirow function
select * from payment;
select distinct(customer_id ) from payment ;
select count(customer_id ) as total_customer , count(distinct(customer_id)) as unique_customer
, count(customer_id)-count(distinct(customer_id)) as repetative_customer from payment;

select count(amount ) , sum(amount) , avg(amount) , max(amount) , min(amount) from payment;

-- Group By
-- apply on single column
select * from payment ;
select customer_id  from payment group by customer_id ;
select customer_id, count(amount) , avg(amount)  , min(amount)  , 
max(amount) , sum(amount) from payment group by customer_id ;

select * from payment;
select amount  , count(amount) from payment group by amount ;
-- find out total time of rental id , the sum of amount spended , the maximum rental value for each staff
select * from payment;
select staff_id  ,count(rental_id) , sum(amount) , max(amount )from payment group by staff_id ;

-- get the total numer of custoimer served with the maximum and minimum rental id with the average amount of sepended for each 
-- for each month of payment date
select * from  payment;
select month(payment_date) , avg(rental_id) , min(rental_id) , max(rental_id) from payment group by month(payment_date);

