Create Table dept_emp (
	emp_no VARCHAR,
	dept_no VARCHAR,
	PRIMARY KEY (emp_no, dept_no)
);
Create Table dept_manager (
	dept_no VARCHAR,
	emp_no VARCHAR,
	PRIMARY KEY (dept_no, emp_no)
);
Create Table employees (
	emp_no VARCHAR,
	emp_title VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
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
