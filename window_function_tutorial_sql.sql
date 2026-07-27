select *
From parks_and_recreation.employee_demographics;


select *
From parks_and_recreation.employee_salary;

select gender , avg(salary)
From parks_and_recreation.employee_demographics as dem 
Join parks_and_recreation.employee_salary as sal
On dem.employee_id = sal.employee_id
Group by gender;

select gender , avg(salary) over (partition by gender)
From parks_and_recreation.employee_demographics as dem 
Join parks_and_recreation.employee_salary as sal
On dem.employee_id = sal.employee_id;

select dem.first_name, dem.last_name,gender,salary, Row_number() Over(partition by gender order by salary desc ) as Row_sal,
Rank() Over(partition by gender order by salary desc ) as rank_num,
Dense_Rank() Over(partition by gender order by salary desc ) as dense_rank_number
From parks_and_recreation.employee_demographics as dem
Join parks_and_recreation.employee_salary as sal
On dem.employee_id = sal.employee_id;