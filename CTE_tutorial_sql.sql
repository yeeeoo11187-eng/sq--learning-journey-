
With CTE_example as 
(select gender , avg(salary) as avg_sal ,min(salary) as min_sal ,max(salary) as max_sal ,count(salary) as count_sal 
From parks_and_recreation.employee_demographics as dem 
Join parks_and_recreation.employee_salary as sal
On dem.employee_id = sal.employee_id
Group by gender)
select *
From CTE_example;

With CTE_example as 
(select gender , avg(salary) as avg_sal ,min(salary) as min_sal ,max(salary) as max_sal ,count(salary) as count_sal 
From parks_and_recreation.employee_demographics as dem 
Join parks_and_recreation.employee_salary as sal
On dem.employee_id = sal.employee_id
Group by gender)
select avg(avg_sal) 
From CTE_example;

with CTE_example as 
(select employee_id,gender,birth_date
 From parks_and_recreation.employee_demographics
 where birth_date > '1985-01-01'),
 CTE_example2 as 
( 
Select employee_id,salary
From parks_and_recreation.employee_salary
where salary > 50000
)
Select*
 From CTE_example
 Join CTE_example2
 On CTE_example.employee_id= CTE_example2.employee_id;