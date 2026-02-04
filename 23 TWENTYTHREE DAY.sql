-- view :-
	-- it is a vertual table
    -- they do not store the data physically but will access the data from the existing table
    -- it makes the complex quary easy 
    -- it will help in security 
  
use regex;

-- types :- 
    -- COMPLEX --> doesnt allow changes 
				-- any changes we made in view wont be shown in og table 
                -- it doesnt allow DML operations 
                -- we create it by using any function with the columns we want to select 

create table newact as 
select actor_id,first_name,last_name from sakila.actor where actor_id between 1 and 3;
  
select * from newact;


create view act_view as 
select *,substr(first_name,2) from newact;
select * from act_view;


select * from newact;
insert into newact values(4,'riya','yadav');
select * from act_view;



INSERT INTO act_view values (10,'gola','khatr');		-- error 
select * from act_view2;
select * from newact;










-- SIMPLE --> allows changes 
			-- we can make changes 
			-- we only use the columns from og table and not any functions
			-- changes are reflected in the og table 
			-- if we used any aggregation ,group by ,having ,union etc in the view then changes made to that view cannot be updated to the main table 


select * from newact;


create view act_view2 as 
select * from newact;

select * from newact;

insert into newact values(5,'rJ','Tadav');
select * from act_view;


INSERT INTO act_view2 values (6,'rajj','Tagav');
select * from act_view2;
select * from newact;