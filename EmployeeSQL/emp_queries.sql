--1. The following is are details of each employee:

SELECT employees.emp_no,
       employees.last_name,
       employees.first_name,
       employees.sex,
       salaries.salary
FROM employees
Left JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no

