-- function
-- function are block of code that makes the code reuseable and readable
-- function are predrfined function
-- string function
use  sakila;

select first_name ,lower(first_name )  ,
upper(lower(first_name)) from actor;

-- concate function -- merge more then one columns
-- it does not give the seperator

select first_name , last_name ,
concat(first_name ,'=', last_name ,'  ankit') from actor;
select first_name , last_name ,
concat_ws( '-',First_name , last_name ,'ankit') from actor;
select * from actor where
concat(first_name ,last_name)="EDCHASE";

-- sub str -- some value of any charchter
select  first_name,
substr(first_name ,-3),
substr(first_name ,1,3) from actor;

-- instr -->
select first_name ,
instr(first_name , "E") from actor;

-- locate --> it find the position of charchter with the given position 

select first_name , 
locate( 'E' , first_name , 3) from actor;

-- char -- number 0f lenth of charchter

select first_name , 
char_length(first_name)
from actor;

-- lenth --> return the lenth of a strin in bytes
select first_name , 
length(first_name)
from actor;

-- Dual table 
select "hey " , "hello " from dual ;

select length ("&") , char_length("&") from dual;
select first_name , lpad (first_name , 5 ,"&") from actor;
select first_name , rpad (first_name , 5 ,"&") from actor;
select '      hey        ',
trim('      hey        ') from dual;
select '      hey        ',
trim(leading 'z' from 'zzzhezzz') from dual;

