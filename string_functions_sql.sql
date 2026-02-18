select first_name,
length (first_name) as Len,
lower (first_name) as Low,
upper (first_name) as up,
left (first_name,3) as lef,
right (first_name,3) as rig,
birth_date,
substring(birth_date,6,2) as birth_month
From employee_demographics;