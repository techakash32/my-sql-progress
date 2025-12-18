show databases;
use sakila;
show tables;
select * from payment;
select customer_id, count(customer_id) from payment where amount>3 group by customer_id;
-- find out total amount of transition for each amount in the mounth of may
-- select payment_date,month(payment_date) from payment_date from payment;
select amount ,count(*) from payment where month(payment_date)=5 group by amount;
-- que find out  the maximaum amount spend ,avg amount spend ,total amount spend from each satff;
-- que find out  the maximaum amount spend ,avg amount spend ,total amount spend from each satff only for customer id 1,3,7,11
select staff_id, max(amount),avg(amount),sum(amount) from payment group by staff_id;
select staff_id, max(amount),avg(amount),sum(amount) from payment where customer_id in {1,3,7,11}, group by staff_id;
-- que find out  the total amount spend and number of custommer who have payment in each mount;
-- where amount should br greater then 1usd
select month(payment_date), sum(amount), count(customer_id)  from payment  group by month(payment_date) HAVING COUNT(CUSTOMER_ID)>300;


select month(payment_date), sum(amount), count(customer_id)  from payment where amount>1 group by month(payment_date);
-- GROUP BY: 
select YEAR(payment_date),month(payment_date), count(customer_id)  from payment  group by YEAR(payment_date),month(payment_date);
