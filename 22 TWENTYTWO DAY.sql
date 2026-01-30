-- RECURSIVE CTE

select actor_id ,first_name from sakila.actor where actor_id between 1 and 4
UNION ALL
select actor_id ,first_name from sakila.actor where actor_id between 3 and 5;

with recursive cte as(
select 10 as num   -- assigning values to this num columns(starting point)
union all
select num+1 from cte     -- cte calling 
where num<15     -- terminating condition(stop point)
)

select * from cte;

-- employee hiercal 
use sakila;
CREATE TABLE employees (
    employeeid INT PRIMARY KEY,
    name VARCHAR(50),
    managerid INT
);


INSERT INTO employees (employeeid, name, managerid) VALUES
(1, 'Alice', NULL),      -- CEO
(2, 'Bob', 1),           -- Reports to Alice
(3, 'Charlie', 2),       -- Reports to Bob
(4, 'Diana', 2),         -- Reports to Bob
(5, 'Eve', 3);           -- Reports to Charlie

select * from employees;
with recursive xyz as(
select employeeid,name,name as hierarchy from employees where managerid is null
union all
select employees.employeeid,employees.name,concat(employees.name,' ->  ',xyz.hierarchy) from employees join xyz on xyz.employeeid=employees.managerid
);

with recursive cte as(
select employeeid,name,1 as level from employees where managerid is null
union all
select employees.employeeid,employees.name, level+1 from employees join cte on cte.employeeid=employees.managerid
)
select * from cte;
