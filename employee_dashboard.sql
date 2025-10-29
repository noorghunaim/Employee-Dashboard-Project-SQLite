-- to open the DB:
.open employees.db

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

-- Intermediate Queries:
-- Query 6. Average salary by department:
SELECT department, AVG(salary) AS avg_salary FROM employee_data GROUP BY department ORDER BY avg_salary DESC;

-- Query 7. Number of employees per city:
SELECT city, COUNT(*) AS total_employees FROM employee_data GROUP BY city ORDER BY total_employees DESC LIMIT 10;

-- Query 8. Highest-paid employee in each department:
SELECT first_name, last_name, department, MAX(salary) AS max_salary FROM employee_data GROUP BY department;

-- Query 9. Department-wise average performance:
SELECT department, ROUND(AVG(performance_score),2) AS avg_performance FROM employee_data GROUP BY department;

-- Query 10. Employees with salary above company average:
SELECT first_name, last_name, department, salary FROM employee_data WHERE salary > (SELECT AVG(salary) FROM employee_data) LIMIT 10;

-- Query 11. Average salary by gender:
SELECT gender, ROUND(AVG(salary),2) AS avg_salary FROM employee_data GROUP BY gender;

-- Query 12. Average salary by gender:
SELECT (year_experience/5)*5 AS exp_group, COUNT(*) AS employee_count FROM employee_data GROUP BY exp_group ORDER BY exp_group;

-- Query 13. Performance distribution:
SELECT performance_score, COUNT(*) AS COUNT from employee_data GROUP BY performance_score ORDER BY performance_score;

-- Query 14. Remote vs On-site employee count:
SELECT remote_status, COUNT(*) AS COUNT FROM employee_data GROUP BY remote_status;

-- Query. 15. Top 5 highest-paid employees:
SELECT first_name, last_name, salary FROM employee_data ORDER BY salary DESC LIMIT 5;

-- Query 16. Average salary by department and gender:
SELECT department, gender, ROUND(AVG(salary),2) AS avg_salary FROM employee_data GROUP BY department,gender ORDER BY department,gender;

-- Query 17. Department with highest performance:
SELECT department, ROUND(AVG(performance_score),2) AS avg_perf FROM employee_data GROUP BY department ORDER BY avg_perf DESC LIMIT 1;

-- Query 18. Average bonus by department:
SELECT department, ROUND(AVG(bonus_percent),2) AS bonus FROM employee_data GROUP BY department ORDER BY bonus DESC;

-- Query 19. Correlation-like grouping: salary vs experience:
SELECT (year_experience/5)*5 AS exp_group, ROUND(AVG(salary),2) AS avg_salary FROM employee_data GROUP BY exp_group ORDER BY exp_group ASC;

-- Query 20. Salary range per department:
SELECT department, MAX(salary) AS max_salary, MIN(salary) AS min_salary FROM employee_data GROUP BY department;

-- Query 21. Department performance vs salary insight:
SELECT department, ROUND(AVG(performance_score),2) AS avg_perf, ROUND(AVG(salary),2) AS avg_salary FROM employee_data GROUP BY department ORDER BY avg_salary DESC;

-- Query 22. Employees eligible for bonus > 15%:
 SELECT first_name,last_name,department, bonus_percent FROM employee_data WHERE bonus_percent > 15 ORDER BY bonus_percent DESC;
