USE payroll;

SELECT * FROM department JOIN employee ON employee.emp_id = department.emp_id
WHERE department.Name='CSE';

SELECT * FROM employee JOIN salary ON salary.emp_id = employee.emp_id
WHERE Gross>21000;

SELECT DA,TA,HRA FROM salary JOIN employee ON employee.emp_id = salary.emp_id
WHERE emp_name='Rob';

SELECT * FROM time_off JOIN employee ON time_off.emp_id = employee.emp_id;

SELECT emp_name,department.Name FROM employee JOIN department ON department.emp_id = employee.emp_id;

SELECT employee.name_grade FROM employee JOIN department ON department.emp_id = employee.emp_id WHERE department.Name='CSE';


SELECT salary.TAX/12 FROM employee JOIN salary ON salary.emp_id = employee.emp_id;

SELECT * FROM employee WHERE join_date BETWEEN '07-04-10' AND '08-08-28';

SELECT employee.email FROM employee JOIN department ON department.emp_id = employee.emp_id WHERE department.Name='CSE';


SELECT time_off.Daysoff FROM employee JOIN time_off ON time_off.emp_id = employee.emp_id WHERE emp_name='Rohim';

ALTER table employee ADD column employee_phone VARCHAR(10);
ALTER TABLE employee DROP COLUMN employee_phone;

SELECT * FROM employee JOIN salary ON salary.emp_id = employee.emp_id WHERE base=8000;

SELECT employee.emp_name,max(balance.Bank_Balance) FROM employee JOIN balance ON balance.emp_id = employee.emp_id;

SELECT employee.emp_name FROM employee JOIN balance ON balance.emp_id = employee.emp_id WHERE balance.Loan_Amount>0;

SELECT * FROM employee WHERE emp_name='CSEMP07001';