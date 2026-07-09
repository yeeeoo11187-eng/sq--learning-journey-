select occupation,avg(salary)
From parks_and_recreation.employee_salary
where occupation LIKE '%manager%'
Group by occupation
Having avg(salary)>55000;

Where always come beofore group by 
having always come after groupd by and used for only aggregration functions 
