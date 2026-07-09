select *
From parks_and_recreation.employee_demographics ;

select gender
From parks_and_recreation.employee_demographics 
Group By gender ;

select gender , avg(age),max(age),min(age),count(age)
From parks_and_recreation.employee_demographics 
Group By gender ;



select occupation,salary 
From parks_and_recreation.employee_salary
Group by occupation , salary ;

select *
From parks_and_recreation.employee_salary
order by occupation , salary ASC;
