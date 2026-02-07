# INDEXES USES

use sakila;
create table test100 as select actor_id,first_name from actor where actor_id between 1 and 10;

select * from test100;
desc test100; -- no primarykey

explain select * from test100 where actor_id =5;

-- indexs: is like as data structure to access your data in a faster way ,

-- types of indexes:
-- 1.Clustered Index   2.Non-clustered Index

-- 1. Clustered index:
 -- IT  is the type of indexing that establishes a physical sorting order of rows.
-- there is only one clustered index in one table:
-- A clustered index is like a Dictionary in which the sorting order is alphabetical and there is no separate index page.

insert into test100 values(14,'gaurav'),(13,'naksh'),(11,'mitansh'),(12,'sohrabh');
select * from test100;

-- alter
alter table test100 add primary key(actor_id);
desc test100;

explain select * from test100 where actor_id=5;
explain select * from test100 where first_name='nick';

-- 2.Non-Clustered Index:
-- Non-Clustered index is an index structure separate from the data stored in a table that reorders one or more selected columns.
-- 

create table test101 as select actor_id,first_name from actor where actor_id between 1 and 10;
insert into test101 values(14,'gaurav'),(13,'naksh'),(11,'mitansh'),(12,'sohrabh'),(12,'sohrabh');
select * from test101;
create index inx1 on test101(actor_id);
show index from test101;
show index from test100;
select * from test101;
explain select *from test101 where actor_id=11;

-- index on 1 columns:
create index indx_composite on test101(actor_id,first_name);
show index from test101;
show index from test100;
explain select * from test101 where first_name='abc';

 insert into test100 values(18,'JOH'),(19,'JOHN'),(20,'JOHNY');
 SELECT * FROM TEST100;
 
 DROP INDEX inx1 ON test101;
drop index indx_composite on test101;
ALTER TABLE test100
DROP PRIMARY KEY;

select * from test100;

create index index_3 on test100(first_name(3));
show index from test100;

explain select * from test100 where first_name='JOHNY';
explain select * from test100 where first_name='JOH%';
explain select * from test100 where first_name='ABC';
