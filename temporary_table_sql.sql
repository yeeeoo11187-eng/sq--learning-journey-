create temporary table temp_table 
(first_name varchar (50),
last_name varchar (50),
favorite_movie varchar (100));

select *
from temp_table;

insert into temp_table
values ('Kyaw','Zayar','lord of the ring - Tower two');

select *
from temp_table;

select *
From parks_and_recreation.employee_salary;

Create temporary Table salary_over_50k
(select *
From parks_and_recreation.employee_salary
Where salary >= 50000);

select *
From salary_over_50k;