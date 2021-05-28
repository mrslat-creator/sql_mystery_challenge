Create Table dept_emp (
	emp_no VARCHAR NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

Create Table dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no VARCHAR NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);

Create Table employees (
	emp_no VARCHAR NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR,
	PRIMARY KEY(emp_no)
);

Create Table salaries (
	emp_no VARCHAR,
	salary VARCHAR,
	PRIMARY KEY(emp_no)
);

Create Table titles (
	title_id Varchar,
	title VARCHAR,
	PRIMARY KEY (title_id)
);

SELECT *
FROM dept_no;

SELECT *
FROM dept_manager;

SELECT *
FROM employees

SELECT *
FROM salaries

SELECT*
FROM Titles