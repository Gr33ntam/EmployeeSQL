-- Insert departments
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Sales'),
(4, 'Marketing');

-- Insert employees
INSERT INTO employees (emp_id, first_name, last_name, hire_date, dept_id) VALUES
(101, 'Alice', 'Smith', '2021-03-15', 2),
(102, 'Bob', 'Johnson', '2022-06-01', 1),
(103, 'Charlie', 'Lee', '2020-11-10', 3),
(104, 'Diana', 'Martinez', '2023-01-05', 4),
(105, 'Evan', 'Brown', '2019-07-20', 2);

-- Insert salaries
INSERT INTO salaries (emp_id, salary, from_date, to_date) VALUES
(101, 75000.00, '2021-03-15', '2023-12-31'),
(102, 50000.00, '2022-06-01', '2023-12-31'),
(103, 60000.00, '2020-11-10', '2023-12-31'),
(104, 55000.00, '2023-01-05', '2023-12-31'),
(105, 80000.00, '2019-07-20', '2023-12-31');

-- Insert titles
INSERT INTO titles (emp_id, title, from_date, to_date) VALUES
(101, 'Software Engineer', '2021-03-15', '2022-12-31'),
(101, 'Senior Engineer', '2023-01-01', '2023-12-31'),
(102, 'HR Associate', '2022-06-01', '2023-12-31'),
(103, 'Sales Rep', '2020-11-10', '2023-12-31'),
(104, 'Marketing Analyst', '2023-01-05', '2023-12-31'),
(105, 'Engineer', '2019-07-20', '2021-12-31'),
(105, 'Lead Engineer', '2022-01-01', '2023-12-31');
