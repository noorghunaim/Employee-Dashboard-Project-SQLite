-- to open the DB:
.open employee_data.db

-- Code to create the table employees:
CREATE TABLE employee_data (employee_id TEXT, first_name TEXT, last_name TEXT, gender TEXT, age INTEGER, department TEXT, job_title TEXT, salary REAL, hire_date TEXT, performance_score INTEGER, city TEXT, country TEXT, remote_status TEXT, bonus_percent REAL, year_experience INTEGER);

-- Import the csv file into SQLite:
.mode csv
.import employees_500.csv employee_data -- this code used when the csv file is in the same folder as the DB hence we don't need to mention the path of the file

-- Check if the csv file was imported properly with the below code:
SELECT COUNT(*) FROM employee_data;  -- this code should give you 500 rows

-- To cross check if the schema is as per the table we created after import:
PRAGMA table_info(employee_data);

-- 1. Basic Queries:
-- Query 1. View all employees:
SELECT * FROM employee_data LIMIT 10;

-- Query 2. Count total employees:
SELECT COUNT(*) AS total_employees FROM employee_data;

-- Query 3. List all unique departments:
SELECT DISTINCT(department) FROM employee_data;

-- Query 4. Find employees from Canada:
SELECT first_name,last_name,country FROM employee_data WHERE country='Canada' LIMIT 10;

-- Query 5. Count employees per country:
SELECT country, COUNT(*) AS employee_count FROM employee_data GROUP BY country;

-- Query 6. Average salary by department:
SELECT department, AVG(salary) AS avg_salary FROM employee_data GROUP BY department ORDER BY avg_salary DESC;

-- Query 7. Number of employees per city:
SELECT city, COUNT(*) AS total_employees FROM employee_data GROUP BY city ORDER BY total_employees DESC LIMIT 10;

-- Query 8. Highest-paid employee in each department:
SELECT first_name, last_name, department, MAX(salary) AS max_salary FROM employee_data GROUP BY department;

-- Query 9. Employees hired after 2020:


-- Query 10. 


