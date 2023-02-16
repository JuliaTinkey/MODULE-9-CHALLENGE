--create table schmema

--create table departments
CREATE TABLE departments (
  dept_no VARCHAR(5) PRIMARY KEY,
  dept_name VARCHAR(30)NOT NULL
);

SELECT *
FROM departments;
  
--create table Employees
CREATE TABLE employees (
  emp_no INT PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR (5) NOT NULL references titles(title_id),
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(1) NOT NULL,
  hire_date DATE NOT NULL
);

SELECT *
FROM employees;

    
--create table departments_employees
CREATE TABLE departments_employees (
  emp_no INT NOT NULL,
  dept_no VARCHAR(5) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (emp_no, dept_no)
);

SELECT *
FROM departments_employees;

-- create salaries table
CREATE TABLE salaries (
	emp_no INT references employees(emp_no),
	salary INT
);

SELECT *
FROM salaries;

-- create titles table
CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(30)
);

SELECT *
FROM titles;

