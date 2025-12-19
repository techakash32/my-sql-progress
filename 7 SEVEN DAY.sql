show databases;
use sakila;
show tables;
select * from payment;
-- subquery outerquery(innerquerry)
select amount from payment where payment_id=20;
select payment_date, month(payment_date) from payment where payment_id=3;
select * from payment where month(payment_date)=6;
-- subquery
-- select * from payment where month(payment_date)=(select payment_date, month(payment_date) from payment where payment_id=3);
select amount from payment where month(paymen_date)=(select month(payment_date) from payment where payment_id=3);
SELECT amount
FROM payment
WHERE MONTH(payment_date) = (
    SELECT MONTH(payment_date)
    FROM payment
    WHERE payment_id = 3
);
