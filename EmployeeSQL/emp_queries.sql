--8 Queries

--The following is are details of each employee: Employee Number, Last & First Name, sex, and salary

SELECT employees.emp_no,
       employees.last_name,
       employees.first_name,
       employees.sex,
       salaries.salary
FROM employees
Left JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no

--Employees that were hired in 1986:
SELECT * FROM employees
WHERE date_part(year, hire_date) = 1986
ORDER BY emp_no;

--Manager of each department and which employees are assigned to them:
SELECT dept_manager.dept_no,
       departments.dept_name,
       dept_manager.emp_no,
       employees.last_name, 
       employees.first_name, 
FROM dept_manager
LEFT JOIN departments
ON dept_managers.dept.no = departments.dept_no 
LEFT JOIN employees
ON  Dept_manager.emp_no = employees.emp_no
ORDER BY emp_no

--Name of each employee the departments that they are in:
SELECT employees.emp_no, 
       employees.last_name,
       employees.first_name, 
       dept_emp.dept_no,
       departments.dept_name
FROM employees
LEFT Join dept_emp On employees.emp_no=dept_emp.emp.no
LEFT Join departments On departments.dept_no=dept_emp.dept_no
ORDER BY emp_no;

--Employees with the first name "Hercules" and last name that starts with "B"

SELECT * FROM employees
WHERE first_name = "Hercules" AND last_name "B%";

--Sales Department
SELECT employees.emp_no, 
       employees.last_name,
       employees.first_name, 
       dept_emp.dept_no,
FROM employees
LEFT JOIN dept_emp
WHERE departments.dept_name="Sales"; 
