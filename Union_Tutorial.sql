select *
From parks_and_recreation.employee_demographics;

select *
From parks_and_recreation.employee_salary;

select first_name,last_name
From parks_and_recreation.employee_demographics
union distinct 
select first_name,last_name
From parks_and_recreation.employee_salary;

select first_name,last_name
From parks_and_recreation.employee_demographics
union all 
select first_name,last_name
From parks_and_recreation.employee_salary;

select first_name,last_name,'old' as label
From parks_and_recreation.employee_demographics
Where age > 40 and gender = 'male'
Union
select first_name,last_name,'old' as label
From parks_and_recreation.employee_demographics
Where age > 40 and gender = 'female'
union 
select first_name,last_name, 'high paid employee' as label
From parks_and_recreation.employee_salary
where salary > 70000
Order By first_name,last_name;
