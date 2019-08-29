USE payroll;

-- 1
SELECT employee.emp_name
FROM employee, department
WHERE department.Name = "CSE"
AND employee.department_id = department.idDepartment;

-- 2
SELECT employee.emp_name
FROM employee, salary
WHERE employee.emp_id = salary.emp_id
AND salary.gross >= 21000;

-- 3
SELECT salary.DA, salary.TA, salary.HRA
FROM salary, employee
WHERE employee.emp_name = 'Rob'
AND employee.emp_id = salary.emp_id;

-- 4
SELECT employee.emp_name, time_off.Daysoff
FROM time_off, employee
WHERE time_off.emp_id = employee.emp_id;

-- 5
SELECT department.Name AS department_name, employee.emp_name
FROM department, employee
WHERE employee.department_id = department.idDepartment
ORDER BY idDepartment;

-- 6
SELECT employee.emp_name, employee.name_grade
FROM department, employee
WHERE department.idDepartment = employee.department_id
AND department.Name = "CSE";

-- 7
SELECT employee.emp_name, salary.TAX
FROM employee, salary
WHERE employee.emp_id = salary.emp_id;

-- 8
SELECT employee.emp_name, employee.join_date
FROM employee
WHERE employee.join_date BETWEEN CAST('2007-04-10' AS DATE) 
	AND CAST('2008-08-28' AS DATE);

-- 9
SELECT employee.email
FROM employee, department
WHERE department.Name = "CSE"
AND employee.department_id = department.idDepartment;

-- 10
SELECT time_off.Daysoff
FROM time_off, employee
WHERE employee.emp_id = time_off.emp_id
AND employee.emp_name = "Rohim";

-- 11
SELECT employee.emp_name
FROM employee, salary
WHERE employee.emp_id = salary.emp_id
AND salary.base = 8000;

-- 12
SELECT employee.emp_name
FROM employee, balance
WHERE employee.emp_id = balance.emp_id
AND balance.Bank_Balance IN (
	SELECT MAX(balance.Bank_Balance) AS highest
	FROM balance);
	
-- 13
SELECT employee.emp_name
FROM employee, balance
WHERE employee.emp_id = balance.emp_id
AND balance.Loan_Amount > 0;

-- 14
SELECT balance.Bank_Balance
FROM balance, employee
WHERE balance.emp_id = employee.emp_id
AND employee.emp_name = "CSEMP07001";