select emp1.employee_id as emp_santa,
emp1.first_name as fist_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_receiver,
emp2.first_name as fist_name_receiver,
emp2.last_name as last_name_receiver
From employee_salary as emp1
Join employee_salary as emp2
ON emp1.employee_id +1 =emp2.employee_id;