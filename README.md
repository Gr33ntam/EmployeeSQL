# 🧠 Employee Management System – SQL Portfolio Project

This is a relational database project simulating an employee management system for a fictional company. It demonstrates key SQL skills including schema design, data insertion, advanced querying, views, and joins — ideal for showcasing in IT and data-related job applications.

## 📁 Project Structure

- `schema.sql` – creates the database tables
- `seed.sql` – inserts realistic employee, department, salary, and title data
- `queries.sql` – runs advanced queries with joins, aggregations, views

## 🧱 Database Schema

- **departments** – department ID and name  
- **employees** – employee ID, name, hire date, department  
- **salaries** – employee salaries over time  
- **titles** – employee job titles over time

### 🔗 Relationships
- `employees.dept_id → departments.dept_id`  
- `salaries.emp_id → employees.emp_id`  
- `titles.emp_id → employees.emp_id`

## ✅ Key Features

### 🔍 Example Queries:
- Current salary of each employee
- Employees hired in the last 2 years
- Average salary by department
- Employees who changed title recently
- Employee job history
- A `current_employees` view that shows department, title, and salary in one clean result

### 🖼 Sample Output

> 📸 Screenshot of `current_employees` view  
> *(Insert your screenshot here)*

## 🚀 How to Run

1. Install PostgreSQL and pgAdmin
2. Create a new database called `employee_db`
3. Run `schema.sql` to set up tables
4. Run `seed.sql` to insert sample data
5. Run `queries.sql` to explore insights
6. Optional: Save screenshots or results to include in your portfolio

## 💡 Author
Created by **Sean McClure** as part of a SQL portfolio project.
