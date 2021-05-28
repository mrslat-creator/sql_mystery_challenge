-- Salary by Employee
SELECT emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   emp.sex,
	   sal.salary
FROM employees as emp
	LEFT JOIN salaries as sal
	on (emp.emp_no =sal.emp_no)
ORDER BY emp.emp_no;

-- Employees Hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Manger of Each Department
SELECT dm.dept_no,
	   d.dept_name,
	   dm.emp_no,
	   e.last_name,
	   e.first_name
FROM dept_manager AS dm
	INNER JOIN departments AS d
	    ON (dm.dept_no = d. dept_no)
	INNER JOIN employees As e
	    ON (dm.emp_no = e.emp_no);
		
-- Department of Each Employee
SElECT e.emp_no,
	   e.last_name,
	   e.first_name,
	   d.dept_name
FROM employees AS e
	Inner JOIN departments AS d
	On (de.dept_no = d.dept_no)
ORDER BY e.emp_no;

-- Employees whose first name is "Hercules" and last name begins with "B"
SELECT first_name, last_name, birth_date, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Employees in the Sales Department
SELECT e.emp_no,
	   e.last_name,
	   e.first_name,
	   d.dept_name
FROM employees AS e
     INNER JOIN dept_emp AS de
	     ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d
	     ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
Order BY e.emp_no;

-- Employees in Sales and Development Departments
SELECT e.emp_no,
	   e.last_name,
	   e.first_name,
	   d.dept_name
FROM employees AS e
     INNER JOIN dept_emp AS de
	     ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d
	     ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN = ('Sales', 'Development')
Order BY e.emp_no;

--The Frequency of Employee Last Names
Select last_name, COUNT(last_name)
FROM empoyees
GROUP BY last_name
Order by COUNT(last_name) DESC;
