select *
From parks_and_recreation.employee_demographics;

select *
From parks_and_recreation.employee_demographics
where first_name = 'Leslie';

select *
From parks_and_recreation.employee_demographics
where first_name = 'Leslie' or last_name = 'Wyatt';

select *
From parks_and_recreation.employee_salary;


select *
From parks_and_recreation.employee_salary
where salary < 50000 ;

LIKE __ statement 
____ %____

select *
From parks_and_recreation.employee_demographics
where first_name LIKE '___n%';

select *
From parks_and_recreation.employee_demographics
where first_name LIKE '%er%';

