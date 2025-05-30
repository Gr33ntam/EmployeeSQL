Employee Management System – SQL Portfolio Project

This is a relational database project simulating an employee management system for a fictional company. It demonstrates key SQL skills including schema design, data insertion, advanced querying, views, and joins — ideal for showcasing in IT and data-related job applications.

---

## Project Structure

- `schema.sql` – Creates the database tables  
- `seed.sql` – Inserts realistic employee, department, salary, and title data  
- `queries.sql` – Runs advanced queries with joins, aggregations, views  

---

## Database Schema

- `departments` – Department ID and name  
- `employees` – Employee ID, name, hire date, department  
- `salaries` – Employee salaries over time  
- `titles` – Employee job titles over time  

### Relationships

- `employees.dept_id` → `departments.dept_id`  
- `salaries.emp_id` → `employees.emp_id`  
- `titles.emp_id` → `employees.emp_id`  

---

## Key Features

### Example Queries

- Current salary of each employee  
- Employees hired in the last 2 years  
- Average salary by department  
- Employees who changed title recently  
- Employee job history  

✅ Includes a `current_employees` **view** showing department, title, and salary in one clean result.

---

## Sample Output

![Screenshot of current_employees view](https://github.com/user-attachments/assets/8b3630c7-63f2-47f8-8a50-ae8c9d752978)

---

## ▶How to Run

1. Install **PostgreSQL** and **pgAdmin**  
2. Create a new database called `employee_db`  
3. Run `schema.sql` to set up tables  
4. Run `seed.sql` to insert sample data  
5. Run `queries.sql` to explore insights  

---

_Built by Sean McClure_
	
