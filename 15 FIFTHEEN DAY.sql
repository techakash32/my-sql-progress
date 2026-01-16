-- DML DATA MANIPULTION LANGUAGE
-- insert 
-- update : - update table name 

-- 1. UPDATE
SET SQL_SAFE_UPDATES = 0;

update actor_cp set newsalaryp = 900;
update actor_cp set newsalaryp = 888 where fname='UMA'; 
select * from actor_cp;

-- 2.INSERT
use regex; 
create table test70(AKASH int);
insert into test70 values(1);
select * from test70;