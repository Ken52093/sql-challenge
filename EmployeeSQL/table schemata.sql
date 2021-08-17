drop table Employees;
drop table Departments;
drop table Department_Employees;
drop table Department_Manager;
drop table Salaries;
drop table Titles;

-- creat employees table
CREATE TABLE employees (
    emp_no INT   NOT NULL,
	emp_title_id varchar NOT null,
    birth_date date   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender VARCHAR   NOT NULL,
    hire_date date   NOT NULL,
	PRIMARY KEY (emp_no)
);
-- import employees.csv
SELECT * 
From employees;

-- creat departments table
CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
	PRIMARY KEY (dept_no)
);
-- import departments.csv
SELECT * 
From departments;

-- creat department_employees table
CREAT TABLE dept_employees(
	emp_no int,
	dept_no varchar not null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- import dept_emp.csv
SELECT * 
From dept_employees;

-- creat department_manager table
CREATE TABLE department_manager (
   	dept_no varchar not null,
	emp_no int,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
-- import dept_manager.csv
SELECT * 
From department_manager;

-- creat salary table
create table salaries(
	emp_no int not null,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);
-- import salaries.csv
SELECT * 
From salaries;

-- creat titles table
create table titles(
	title_id varchar primary key not null,
	title varchar not null
);
-- import titles.csv
SELECT * 
From titles;





