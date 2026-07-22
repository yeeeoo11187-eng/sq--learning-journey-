select *
From parks_and_recreation.employee_demographics;

select *
From parks_and_recreation.employee_salary;

select *
From parks_and_recreation.parks_departments;

select *
From parks_and_recreation.employee_demographics
where employee_id in ( select employee_id
					 from parks_and_recreation.employee_salary
                     where dept_id=1) ;
                     
                     
	Select first_name,salary,( select avg (salary ) from parks_and_recreation.employee_salary)
    From parks_and_recreation.employee_salary;
    
Select gender avg (age), max(age) , min(age)
From parks_and_recreation.employee_demographics
group by gender;
                     
select gender , avg(`max(age)`)
From (Select gender,
 avg (age) ,
  max(age) ,
  min(age)
From parks_and_recreation.employee_demographics
group by gender) as aggre_table ;