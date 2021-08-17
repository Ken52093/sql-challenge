-- 1.List the following details of each employee: employee number, last name, first name, sex, and salary.
select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.gender,
Salaries.salary
from Employees
inner join Salaries on
Employees.emp_no = Salaries.emp_no;

-- 2.List first name, last name, and hire date for employees who were hired in 1986.
select emp_no, first_name, last_name, hire_date from Employees
where DATE_PART('year',hire_date) = 1986

-- 3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from departments as d
left join department_manager as m
on d.dept_no = m.dept_no
left join employees as e
on m.emp_no = e.emp_no;

-- 4.List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_employees as de
left join departments as d
on de.dept_no = d.dept_no
left join employees as e
on de.emp_no = e.emp_no;

-- 5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name, e.gender
from employees as e
where e.first_name = 'Hercules' 
and e.last_name like 'B%';

-- 6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees as e
left join dept_employees as de on 
e.emp_no = de.emp_no
left join departments as d on 
de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- 7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees as e
left join dept_employees as de on 
e.emp_no = de.emp_no
left join departments as d on 
de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- 8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*)
as "frequency_of_last_names"
from employees
group by last_name
order by "frequency_of_last_names" desc;


