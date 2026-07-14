select first_name
From parks_and_recreation.employee_demographics;

select first_name,length(first_name)
From parks_and_recreation.employee_demographics;

select first_name , upper(first_name)
From parks_and_recreation.employee_demographics;

select first_name , lower(first_name)
From parks_and_recreation.employee_demographics;


select first_name , trim(first_name)
From parks_and_recreation.employee_demographics;

select first_name,
left(first_name,4),
right(first_name,3),
substring(first_name,4,3),
birth_date,
substring(birth_date,6,2)
From parks_and_recreation.employee_demographics;

select first_name , 
replace (first_name,'a','q')
From parks_and_recreation.employee_demographics;

select first_name , 
locate('e',first_name) 
From parks_and_recreation.employee_demographics;

select first_name , last_name,
 concat(first_name,' ',last_name) as full_name
From parks_and_recreation.employee_demographics;


