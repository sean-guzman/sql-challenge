-- Data Analysis
SELECT * FROM  departments
SELECT * FROM  dept_emp
SELECT * FROM  dept_manager
SELECT * FROM  employees
SELECT * FROM  salaries
SELECT * FROM  titles

-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees emp
LEFT JOIN salaries sal
ON emp.emp_no = sal.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT mgr.dept_no, dept.dept_name, mgr.emp_no, emp.last_name, emp.first_name
FROM dept_manager AS mgr
INNER JOIN
departments AS dept
ON dept.dept_no = mgr.dept_no
INNER JOIN
employees AS emp
ON emp.emp_no = mgr.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT demp.dept_no, demp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM dept_emp AS demp
LEFT JOIN employees emp
ON demp.emp_no = emp.emp_no
LEFT JOIN departments dept
ON demp.dept_no = dept.dept_no

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT demp.emp_no, emp.last_name, emp.first_name
FROM dept_emp demp
LEFT JOIN employees emp
ON demp.emp_no = emp.emp_no
LEFT JOIN departments dept
ON demp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT demp.emp_no, emp.last_name, emp.first_name, dept.dept_name
FROM dept_emp demp
LEFT JOIN employees emp
ON demp.emp_no = emp.emp_no
LEFT JOIN departments dept
ON demp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development'

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) as last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;