select first_name,last_name,'old man' as label 
from employee_demographics 
Where age > 40 and gender = 'male'
Union 
select first_name,last_name,'old lady' as label
from employee_demographics
where age> 40 and gender = 'female'
Union 
select first_name,last_name ,'highly paid employee' as label 
from employee_salary
where salary >70000 
order by first_name,last_name;
