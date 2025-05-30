-- 1. Get the current salary of each employee
SELECT e.emp_id, e.first_name, e.last_name, s.salary
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
WHERE s.to_date = '2023-12-31';

-- 2. Employees hired in last 2 years
SELECT emp_id, first_name, last_name, hire_date
FROM employees
WHERE hire_date >= CURRENT_DATE - INTERVAL '2 years';

-- 3. Average salary by department
SELECT d.dept_name, ROUND(AVG(s.salary), 2) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY d.dept_name;

-- 4. Employees who changed title in the last year
SELECT emp_id, COUNT(*) AS title_changes
FROM titles
WHERE from_date >= CURRENT_DATE - INTERVAL '1 year'
GROUP BY emp_id
HAVING COUNT(*) > 1;

-- 5. Job history per employee
SELECT e.first_name, e.last_name, t.title, t.from_date, t.to_date
FROM employees e
JOIN titles t ON e.emp_id = t.emp_id
ORDER BY e.emp_id, t.from_date;

-- 6. View: current employee info
CREATE OR REPLACE VIEW current_employees AS
SELECT e.emp_id, e.first_name, e.last_name, d.dept_name, s.salary, t.title
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN salaries s ON e.emp_id = s.emp_id
JOIN titles t ON e.emp_id = t.emp_id
WHERE s.to_date = '2023-12-31'
  AND t.to_date = '2023-12-31';

-- 7. Use the view
SELECT * FROM current_employees;
