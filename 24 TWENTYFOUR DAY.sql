create user regex identified by 'regex';

select * from mysql.user;

create database tushardb;
create table tushardb.actor as 
select * from sakila.actor where actor_id between 1 and 5;

create table tushardb.actor1 as 
select * from sakila.actor where actor_id between 1 and 5;

-- showing permissions
show grants for regex;

-- granting permission 
grant select on tushardb.actor to regex;

-- all permission of tables
grant select on tushardb.* to regex;

-- all permission to CURD operation
grant all privileges on tushardb.* to regex;
revoke privileges on tushardb.* to regex;

