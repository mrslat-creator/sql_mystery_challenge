--Creating table schema

--Create table departments

Create Table departments (
  dept_no Varchar(10),
  dept_name Varchar(30) NOT NULL),
  Primary Key (dept_no)
  );
  
  select * from departments
  
-- Create table employees
  
Create Table employees (
     empl_no INT NOT NULl,
  	 birth_date DATE NOT Null,
     first_name VARCHAR(20) NOT Null,
  	 last_name Varchar(20) NOT Null,
  	 sex VARCHAR(2) NOT Null,
	 hire_date Date NOT Null,
	 Primary Key (emp_no)
  );
  
  select * from employees
  
--Create table dept_emp
  
Create Table dept_emp (
   emp_no INT NOT Null
	 dept_no VARCHAR(10)NOT Null,
	 from_date DATE NOT Null, 
	 to_date DATE NOT Null, 
	);

select * from dept_emp

-- Create table dept_managers

Create Table dept_managers (
  dept_no Varchar(10),
	emp_no Int, 
	from_date Date NOT Null,
	to_date Date NOT Null,
);

select * from dept_managers

--Creating salaries table

Create Table salaries (
   emp_no BigInt NOT Null,
   salary BigInt NOT Null,
   from_date Date NOT Null,
   to_date Date NOT Null
);

select * from salaries

--Create Table titles

Create Table titles (
   emp_no Int NOT Null,
	 title VARCHAR(20), NOT Null,
	 from_date Date NOT Null,
	 to_date Date NOT Null
);