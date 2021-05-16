-- Create Employees Table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

-- Create Departments Table
CREATE TABLE departments (
	dept_no VARCHAR(8) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30)
);

-- Create Titles Table
CREATE TABLE titles (
	title_id VARCHAR(8) PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
);

-- Create Dept_Emp Table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Create Dept_Manager Table
CREATE TABLE dept_manager (
	dept_no VARCHAR(8) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

--Create Salaries Table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
