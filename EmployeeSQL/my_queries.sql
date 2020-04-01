--1:List each employee: employee number, last name, first name, gender, and salary.
select employees.emp_no as "employee number",employees.last_name as "last name",
employees.first_name as "first name",employees.gender, salaries.salary
from employees
left join  salaries on employees.emp_no=salaries.emp_no;

--2:List employees who were hired in 1986.
select employees.emp_no as "employee number",employees.last_name as "last name", employees.first_name as "first name",employees.hire_date
from employees
where date_part('year', hire_date)  =1986;

--3:List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select 
b.first_name as "manager_first_name", b.last_name as "manager_last_name", 
a.department_number,a.department_name,
a.employee_number,a.first_name as "employee_first_name",a.last_name as "employee_last_name",
a.start_date as "employee_start_date", a.end_date as "employee_end_date"
from 
(select dept_manager.emp_no as "manager_no", dept_manager.dept_no as "department_number",
dept_manager.from_date  as "manager_start_date",dept_manager.to_date  as "manager_end_date",
departments.dept_name as "department_name", 
dept_emp.emp_no as "employee_number",
employees.first_name as "first_name", employees.last_name as "last_name",
dept_emp.from_date as "start_date", dept_emp.to_date as "end_date"
from dept_manager 
left join departments on dept_manager.dept_no=departments.dept_no
left join dept_emp on departments.dept_no=dept_emp.dept_no
left join employees on employees.emp_no=dept_emp.emp_no
where dept_manager.to_date >=dept_emp.to_date) as a
left join employees as b on b.emp_no =a.manager_no;

--4:List the department of each employee with the following information: employee number, last name, first name, and department name.
select 
dept_emp.emp_no as "employee_number",
employees.first_name as "employee_first_name", employees.last_name as "employee_last_name",
dept_emp.from_date as "employee_start_date", dept_emp.to_date as "employee_end_date",
departments.dept_name as "department_name" 
from dept_emp
left join departments on departments.dept_no=dept_emp.dept_no
left join employees on employees.emp_no=dept_emp.emp_no;

--5:List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees
where first_name='Hercules' and 
last_name like 'B%';

--6:List all employees in the Sales department, including their employee number, last name, first name, and department name.
select 
dept_emp.emp_no as "employee_number",
employees.first_name as "employee_first_name", employees.last_name as "employee_last_name",
departments.dept_name as "department_name" 
from dept_emp
left join departments on departments.dept_no=dept_emp.dept_no
left join employees on employees.emp_no=dept_emp.emp_no
where departments.dept_name='Sales';

--7:List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select 
dept_emp.emp_no as "employee_number",
employees.first_name as "employee_first_name", employees.last_name as "employee_last_name",
departments.dept_name as "department_name" 
from dept_emp
left join departments on departments.dept_no=dept_emp.dept_no
left join employees on employees.emp_no=dept_emp.emp_no
where departments.dept_name='Sales' or departments.dept_name='Development';

--8:In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select a.last_name, count(last_name) as "count of last name" 
from employees as a 
group by last_name
order by count(last_name) desc;

--Epilogue
select * from employees where emp_no=499942;










