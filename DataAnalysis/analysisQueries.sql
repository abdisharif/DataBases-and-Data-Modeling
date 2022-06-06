-- **********************************************
-- **                 Employees
-- **
-- *********************************************
-- How many employees do we have?
select count(employee_id) as 'Number of employees' from employees;

-- How much do employees make?
select sum(salary) as 'Total salary of all employees' from employees;

-- ** What country are the employee's located in? *******************
select 
employees.employee_id as 'Employee id',
employees.first_name as 'Employee name', countries.country_name as 'Country'
from employees 
join departments on employees.department_id = departments.department_id 
join locations on departments.location_id = locations.location_id
join countries on locations.country_id = countries.country_id
;

-- ** Who was hired first? *******************
select 
employees.employee_id as 'Employee id',
concat(employees.first_name, ' ', employees.last_name) as 'Employee name', employees.hire_date as 'Employee Date'
from employees;

-- What specific department do each employee work in?
select 
departments.department_name as 'Department Name',
count(employees.employee_id) as 'Number of Employees'
from employees 
join departments on employees.department_id = departments.department_id
group by departments.department_name
;

-- What is the Minimum Salary for each job?
select 
jobs.job_title as 'Job Title',
jobs.min_salary as 'Minimum Salary'
from jobs;

-- What is the Maximum Salary for each job?
select
jobs.job_title as 'Job Title', jobs.max_salary as 'Maximum Salary'
from jobs;


-- How many countries do we have?
select count(country_name) as 'Total number of countries involved' from countries;

-- **********************************************
-- **                 Jobs (invoices)
-- **
-- *********************************************
-- What job pays the most?
select
jobs.job_title as 'Job Title', jobs.max_salary as 'Maximum Salary'
from jobs;

-- **********************************************
-- **                 Dependents
-- **
-- *********************************************

-- How many dependents are there?
-- 
select count(dependent_id) as 'Number of Dependents' from dependents;

-- Which dependent is related to which employee?
select 
employees.employee_id as 'Employee id',
concat(employees.first_name, ' ', employees.last_name) as 'Employee name', concat(dependents.first_name, ' ', dependents.last_name) as 'Dependent name'
from dependents join employees on dependents.employee_id = employees.employee_id
;

-- What are the employee's addresses?
select 
employees.employee_id as 'Employee id',
employees.first_name as 'Employee name', locations.street_address as 'Address'
from employees 
join departments on employees.department_id = departments.department_id 
join locations on departments.location_id = locations.location_id
;